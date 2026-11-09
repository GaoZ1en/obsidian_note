---
paper id: 2610.37750v1
title: Black Hole Entropy from Entangled Quantum Reference Frames
authors:
  - Ludovic Varrin
publication date: 2026-10-27T18:00:00Z
abstract: |-
  Spherical vacuum gravity admits Donnelly–Freidel corner frames. The author reduces their gluing to an area/relative-boost pair, quantizes positive SL(2,R) frames, and obtains an area entropy using a specified double-intertwiner state and regulated Plancherel density.
comments: "43 pages, 1 figure"
url: https://arxiv.org/abs/2610.37750v1
summary: "球对称 corner gluing 的具体模型；经典约化可复用，面积熵须保留半群 gluing 与迹正则化假设。"
tags: []
---

# Black Hole Entropy from Entangled Quantum Reference Frames

结论：在指定 corner constraints 与 gauge 下，经典结构约化为面积与 relative rapidity 的一对变量；面积熵还需要额外量子输入。正半群上的 double-identity gluing 是定义，不是群商的推论；representation dimension 的正则化也参与产生所需的 Plancherel 因子。Reason codes: T1-boundary; T1-symplectic; T1-charge; T2-dS-BH-holography。

## Source Map 与长文阅读路径

固定官方 v1 PDF/TeX。PDF 43 页，实质论证到 p35，其后为参考文献；标题页日期 October 30，投稿时间取官方 history October 27。提取文本用于导航；p19、26、35 已渲染并目视核对。

| source cluster | 内容与依赖 | 阅读用途 |
|---|---|---|
| §1, pp2–5 | regional gauge obstruction、corner 与 crossed-product 熵机制 | 背景，不当作本文证明 |
| §2, pp6–13 | spherical reduction → dilaton CPS → DF extension → normal-plane charge | 必读，固定归一化 |
| §3, pp13–21 | cotangent frames、Gauss law、左右 gluing、relative boost、quantization | 经典约化核心 |
| §4, pp22–27 | compact analogy、两重无穷、causal cone、半群 density、窄分布展开 | 区分输入与结论 |
| §5, pp27–31 | Kuchař、Carlip–Teitelboim、crossed product/JT 比较；非球对称及 matter 限制 | 迁移范围 |
| App A, pp32–33 | continuity 与 Gauss constraints 的 first/second-class 分解 | 约束技术参考 |
| App B, pp33–35 | 正交性代替群单位元/Schur argument；regulated trace | 熵论证必读 |

## 符号、边界条件与 Source Equation Ledger

$G_N$ 为四维 Newton 常数，默认 $\hbar=1$。$\rho$ 是面积半径，$A=4\pi\rho_h^2$ 是几何面积；§4 的 $A_h=A/\ell_P^2$ 是 Planck 单位面积。定义

$$\begin{align}
\Phi=\frac{\rho^2}{4G_N},\quad k_*=\Phi_h=\frac{A}{16\pi G_N},\quad a=\frac{A}{8\pi G_N}=2\Phi_h.
\end{align}$$

$\eta$ 是无量纲 rapidity；$\tau,T$ 是归一化于无穷远的 Killing 时间，不能省掉 $\kappa$ 便认作 boost angle。角点在二维是一个点，在四维是 bifurcation sphere。orientation 为 $\sigma_S^{\rm I}=-1,\sigma_S^{\rm II}=+1$。$\delta$ 是场空间外微分，$\iota$ 是时空 contraction，$I$ 是场空间 contraction。

系统是球对称、无 matter、非极端双侧 Schwarzschild 的约化；§2 暂留一般 simple-horizon $f(\rho)$，不代表所有这些 metrics 都是本文 vacuum action 的解。不包括完整 Diff(S)、移动角点或非平稳 horizon。

| source equations | 对象 | 下游依赖 |
|---|---|---|
| (2.3)–(2.5) | dilaton action、metric convention、potential current | corner charge |
| (2.9)–(2.18) | $Q_\xi$、DF extension、$N,N_r$、charge bracket | $T^*{\rm SL}(2,\mathbb R)$ |
| (2.24), (2.28)–(2.29) | $N=\Phi_hJ,\det N=-\Phi_h^2$ | hyperbolic orbit / principal series |
| (3.2), (3.10), (3.22)–(3.28) | Liouville potential、Gauss/continuity、relative boost | reduced canonical pair |
| (3.12)–(3.13), (3.33) | ladder/Casimir、double intertwiner | formal quantum gluing |
| (4.9)–(4.13), (B.10)–(B.12) | regulated dimension、Rényi trace | entropy density |
| (4.20), (4.23)–(4.26) | positive-semigroup density、moments/tails | conditional area/log terms |

## §2：球约化与 Corner CPS

从

$$\begin{align}
S_4=\frac1{16\pi G_N}\int\sqrt{-g_4}R_4,\qquad ds_4^2=g_{ij}dx^idx^j+\rho^2d\Omega_2^2
\end{align}$$

积分球面、分部积分，得到 bulk representative

$$\begin{align}
S_2=\frac1{4G_N}\int\sqrt{-g}\,[\rho^2R_2+2(\nabla\rho)^2+2]+S_\partial.
\end{align}$$

Source 取 $\hat g_{ij}=\rho\ell^2(4G_N)^{-3/2}g_{ij}$，消掉 dilaton kinetic term，得

$$\begin{align}
S_2=\int\sqrt{-\hat g}\left(\Phi\hat R+\frac2{\ell^2}\Phi^{-1/2}\right).
\end{align}$$

$\ell$ 是任意 Weyl scale，不是 AdS 半径。source 舍去 total derivative 的论证依赖其 null、constant-dilaton 设置；这里不把它推广成任意 finite timelike boundary 上均无贡献。

记 $h_{ij}=\delta\hat g_{ij}$，$\vartheta_{ij}=h_{ij}-\hat g_{ij}h^k{}_k$。source 的 current 为

$$\begin{align}
\theta^i=\sqrt{-\hat g}\left(\Phi\hat\nabla_j\vartheta^{ij}-\vartheta^{ij}\hat\nabla_j\Phi\right),\quad \Theta_{\mathcal R}=\int_{\Sigma_{\mathcal R}}\epsilon_{ij}\theta^i dx^j,\quad \Omega_{\mathcal R}=\delta\Theta_{\mathcal R}.
\end{align}$$

$\vartheta^{ij}$ 是 raise 后的 covariant-metric variation，不能直接替换为 $\delta\hat g^{ij}$ 而不改符号。corner-preserving $\xi|_S=0$ 仍有非零 first jet，故

$$\begin{align}
-I_{V_\xi}\Omega_{\mathcal R}\,\hat=\,\delta(\sigma_S^{\mathcal R}Q_\xi|_S),\qquad Q_\xi=\sqrt{-\hat g}\epsilon_{ij}\left(\Phi\hat\nabla^j\xi^i-2\xi^i\hat\nabla^j\Phi\right).
\end{align}$$

引入 maps $X_{\mathcal R}$ 与 $\chi=\delta X\circ X^{-1}$，$I_{V_\xi}\chi=-\xi$。DF 扩展为

$$\begin{align}
\Omega_{\mathcal R}^{\rm DF}=\Omega_{\mathcal R}+\int_{S_r}X^*\left(\iota_\chi\theta+\tfrac12\iota_\chi\iota_\chi L+\delta Q_\chi+\mathcal L_\chi Q_\chi\right).
\end{align}$$

Reference relabelling $w$ 对应 $W=X_*w$。Hamiltonian 性有两种 obstruction：$Q_{\delta W+[\chi,W]}$，以及 $\iota_W(\theta+\iota_\chi L+dQ_\chi)$。source 用 $\delta w=0,w|_{S_r}=0$ 同时消去二者，得到 $H_w=\sigma_SQ_W$。不包含所有移动角点的 deformations。

定义

$$\begin{align}
e^i{}_a=\partial_aX^i|_{S_r},\quad N_i{}^j=\left.\Phi\,\frac{\epsilon^{jl}\hat g_{il}}{\sqrt{-\hat g}}\right|_S,\quad N_r=e^{-1}Ne,\quad H_w=\sigma_S\langle N_r,w_{(1)}\rangle.
\end{align}$$

$N$ traceless，determinant scaling 在 potential 中是退化方向，固定它后才取 SL(2,R) frame。source (2.18) 是带 orientation 的 $\mathfrak{sl}_2$ charge bracket。

Schwarzschild $f=1-2G_NM/\rho$，$\kappa=f'(\rho_h)/2$。Kruskal gauge 给

$$
N=\Phi_hJ,\quad J=\begin{pmatrix}0&1\\1&0\end{pmatrix},\quad
\det N=-\Phi_h^2,\quad H_{w_1}^{\rm II}=-H_{w_1}^{\rm I}=\Phi_h,
$$

其中 $w_1=\frac12(y^1\partial_0+y^0\partial_1)$ 是 half-boost。不能把它的荷直接乘 $2\pi$ 而忽略 full-boost normalization。translation charges 在 bifurcation point 因 $\partial\Phi=\partial\hat\sigma=0$ 消失；只有这个 zero-translation orbit 才可缩减到 SL(2,R) 而不丢带荷 generators。

Checked：xCoba 对任意光滑 $f$ 的静态四维 ansatz 独立得到

$$\begin{align}
R_4=-f''-\frac{4f'}{\rho}+\frac{2(1-f)}{\rho^2},
\end{align}$$

残差零；Schwarzschild 给 $R_4=0$。这不认证一般球约化的所有 boundary terms 或完整 DF functional identity。

## §3 与 App A：左右 Gluing 和 Stabilizer

固定角点 $\chi|_S=0$ 后，

$$\begin{align}
\Theta^X_{\mathcal R}=\sigma_S^{\mathcal R}\langle p_{\mathcal R},e_{\mathcal R}^{-1}\delta e_{\mathcal R}\rangle,\quad \mathcal G_{\mathcal R}=N[\varphi_{\mathcal R}]-e_{\mathcal R}p_{\mathcal R}e_{\mathcal R}^{-1}\approx0.
\end{align}$$

解 Gauss law 得 $p=N_r$。right action 是 reference reorientation，left action 是 spacetime diffeomorphism；后者同时改变 fields/frame，保持 relational components 不变。

Gluing 输入是

$$\begin{align}
\mathcal P=p_{\rm I}-p_{\rm II}\approx0,\qquad \mathcal C=N[\varphi_{\rm I}]-N[\varphi_{\rm II}]\approx0.
\end{align}$$

第一条是 right charge matching；第二条使用所指定 seam identification，在同一 normal plane 比较 field charges。单侧 tangent-plane 变换会破坏它，commuting boost 例外。这个额外几何 identification 是推导条件，不能隐藏后称为一般 gravitational sewing theorem。

App A 取 $K={\rm diag}(1,-1)$，$E=\begin{pmatrix}0&1\\-1&0\end{pmatrix}$。控制 Gauss–continuity mixed brackets 的 pairing 为

$$
B_{\lambda\mu}={\rm Tr}(N[\lambda,\mu])
=\begin{pmatrix}0&0&0\\0&0&4\Phi_h\\0&-4\Phi_h&0\end{pmatrix}_{J,K,E}.
$$

Checked：显式矩阵计算、$\Phi_h\ne0$ 时 rank 2。squeeze/rotation 与对应 continuity components 组成四个 second-class constraints；boost 是 kernel。source 的 block Dirac-matrix argument 利用 frame 与 $\mathcal C$ 对易，保持 frame–frame cotangent brackets；完整 bulk distributional algebra 仍 Source-derived。

先做 right reduction，$\mathsf r=e_{\rm I}e_{\rm II}^{-1}$，则

$$\begin{align}
\Theta^X_{\rm I}+\Theta^X_{\rm II}=\sigma_S^{\rm I}\langle N^{\rm II},\mathsf r^{-1}\delta\mathsf r\rangle.
\end{align}$$

再施加 left matching/conjugation 得 $\mathsf rN\mathsf r^{-1}=N$。直接解 centralizer：

$$
r=\begin{pmatrix}a_0&b\\b&a_0\end{pmatrix},\quad a_0^2-b^2=1.
$$

连接于单位元且保持时间取向的分支为 $r=e^{\eta J}$，所以 (3.28)

$$\begin{align}
\Theta=2\sigma_S^{\rm I}\Phi_h\,\delta\eta,\qquad \Omega=\sigma_S^{\rm I}\delta a\wedge\delta\eta.
\end{align}$$

Checked：${\rm Tr}(J^2)=2$，显式 boost matrix 给同样 pullback。right reduction 单独留下六维 $T^*G$；left matching 后在 regular hyperbolic orbit 留下二维。作用有非平凡 stabilizer，不能假定所有 moment-map components 独立便盲用 free-action dimension formula。

单侧 cut-off boost 同时改变 $\eta,\tau$，不变量为 $\eta-\kappa\tau$，orientation 按 source。$\tau=0$ gauge 把 pair 放在 frames；$\eta=0$ gauge 把它放在 bulk/asymptotic clocks。没有额外第二对 physical variables。

Failed — p19 的 canonical-pair 文字归一化：source 两次将以 Killing time 定义的 $\tau$ 直接与 $a=A/(8\pi G_N)$ 配为 canonical pair。其 p20 first-law footnote 给正确变换：

$$\begin{align}
dM=\kappa\,da,\quad T=\eta/\kappa,\quad dM\wedge dT=da\wedge d\eta.
\end{align}$$

若坐标是 Killing 时间，momentum 应为 $M$；若 momentum 是 $a$，对应 angle 是 $\kappa\tau$。Schwarzschild 中 $a=2G_NM^2,\kappa=(4G_NM)^{-1}$，Mathematica 得 $da/dM=4G_NM$，不能取为 1。此文字错误不推翻 (3.28) 或正确 first-law Jacobian。

## §3 的 Quantum Frame：Generalized Intertwiner

Source 用 principal series $\mathcal P_{k,\epsilon}$，$m\in\epsilon+\mathbb Z$，$\epsilon=0,\frac12$：

$$\begin{align}
L_0|m\rangle=m|m\rangle,\quad L_\pm|m\rangle=(m\pm\tfrac12\pm ik)|m\pm1\rangle,\quad \mathcal C=L_0^2-\tfrac12(L_+L_-+L_-L_+)=-\tfrac14-k^2.
\end{align}$$

Checked：ladder commutator $2L_0$、Casimir 残差零，adjoint coefficients 相符。取 $k=\Phi_h$ 是 quantization prescription；$-1/4$ 是 ordering shift，不能改写成另一条 classical constraint。

$$\begin{align}
L^2(G)\supset\bigoplus_\epsilon\int_0^\infty{}^\oplus \mu_\epsilon(k)dk\, \mathcal P_{k,\epsilon}\otimes\mathcal P_{k,\epsilon}^*.
\end{align}$$

Right gluing 给 $F(g_{\rm I}g_{\rm II}^{-1})$，left gluing 再要求 class function，因此两个 representation indices 分别跨 seam contraction：

$$\begin{align}
|\psi\rangle=\sum_\epsilon\int d\mu_\epsilon(k)\,\psi_\epsilon(k)
|\mathds1_{k,\epsilon}\rangle_{\rm frame}\otimes |\mathds1_{k,\epsilon}\rangle_{\rm spacetime}.
\end{align}$$

每个 $|\mathds1\rangle=\sum_m|m\rangle|\bar m\rangle$ 都不可归一化，identity 不是 Hilbert–Schmidt。这不是普通 tensor-product Hilbert space 的 unit vector，source footnote 已要求 rigged Hilbert space。后续 trace 不能当作无需 regulator 的 ordinary partial trace。

## §4 与 App B：Causal Cone 到 Positive Semigroup

指定 reference future cone $C_0$、physical future cone $C_h$，要求 $e(C_0)\subseteq C_h$。在相应 null bases 条件是四个 entries 非负；舍去 Haar 零测边界得到 $G^+={\rm SL}^+(2,\mathbb R)$。

Checked：正 entries 在乘法下封闭，而

$$
\begin{pmatrix}1&1\\1&2\end{pmatrix}^{-1}
=\begin{pmatrix}2&-1\\-1&1\end{pmatrix}
$$

不保持正锥。relative boost 是非负闭包的 diagonal matrix，strict positive semigroup 内没有 identity 或这些 boosts，不能直接套群商或 identity kernel。

Source 调用正半群 harmonic analysis：

$$\begin{align}
\mu(k)=k\sinh(2\pi k),\quad \int_{G^+}dg\,K^k_{ab}(g)\overline{K^{k'}_{cd}(g)} =\frac{\delta(k-k')}{\mu(k)}\delta_{ac}\delta_{bd}.
\end{align}$$

App B 定义

$$\begin{align}
\Psi(g_{\rm I},g_{\rm II})=\int d\mu(k)\,\psi(k) \sum_{ab}K^k_{ab}(g_{\rm I})\overline{K^k_{ab}(g_{\rm II})}.
\end{align}$$

重复使用正交性得 sector projectors $E_k$，继而

$$\begin{align}
\operatorname{Tr}\rho^n=\int_0^\infty dk\,\delta(0)\,[\dim\mathcal P_k]^2|\psi(k)|^{2n}.
\end{align}$$

这是应保留的关键中间式。positive Plancherel theorem 来自引用文献，本笔记未独立复验。经典 cone condition 不证明所定义 double intertwiner 是唯一物理 gluing；source §4 末也明确承认半群 gluing 无法直接由 quotient 推出。

## Regulator Ledger 与有限系统比较

保留 group/semigroup volume regulator $V_G(\Lambda)$、Cartan volume $V_C(L)$、sector spacing $\Delta k$、representation-index cutoff $N$，以及 $k_{\min}\le k\le K$ 的 sector window。source 的特定匹配是

$$\begin{align}
D_{\Lambda,L}(k)=\frac{2\pi V_G(\Lambda)}{V_C(L)}\mu(k),\qquad \delta_L(0)=\frac{V_C(L)}{2\pi}.
\end{align}$$

令 $C_{\Lambda,L}=2\pi V_G(\Lambda)^2/V_C(L)$，

$$\begin{align}
p(k)=C_{\Lambda,L}\mu(k)^2|\psi(k)|^2,\quad \operatorname{Tr}\rho^n=\int dk\,[C_{\Lambda,L}\mu(k)^2]^{1-n}p(k)^n.
\end{align}$$

固定 regulators、固定 normalized $p$，并允许在 $n=1$ 微分，则

$$\begin{align}
S_{\Lambda,L}=-\int p\log p\,dk+ 2\int p\log\mu\,dk+\log C_{\Lambda,L}.
\end{align}$$

Checked：App B prefactor、Rényi differentiation 与有限 double-identity entropy。独立有限例取 sector dimensions $2,3$、概率 $1/3,2/3$，各 sector eigenvalue $p_i/d_i^2$ 重复 $d_i^2$ 次；trace 1，直接 entropy 与 $H(p)+2\sum_i p_i\log d_i$ 残差零。

两份 indices 给 $d_i^2$，却不自行确定 $d_i(k)\propto\mu(k)$。若取统一 rank-$N$ projection，每个 sector 的 regulated dimension 可以同为 $D_N$，finite entropy 为 $H(p)+2\log D_N$，没有由代数 gluing 单独强制出的 $2\log\mu(k)$。这不反驳 source 所选 prescription，而是限定其“所有 cutoff 只在常数中”的适用 regulator family。

Blocked：source 未构造同时实现 $V_G,V_C,D_N,\Delta k$ 的正半群 Hilbert-space regulator，也未证明所有 admissible regulators 只能相差 state-independent constant。这里不删除 $\log C_{\Lambda,L}$，更不把它等同 matter UV cutoff、proper-time cutoff 或 brick-wall distance。应先在固定有限参数下建立 traces，再讨论去 cutoff、large area、窄波包的次序；其极限可交换性未证明。

## 面积项、Log Correction 和 Gaussian Endpoint

普通 SL(2,R) 的 $\mu_0\propto k\tanh\pi k,\mu_{1/2}\propto k\coth\pi k$ 只给 logarithmic growth。正半群给

$$\begin{align}
2\log\mu(k)=4\pi k+2\log k-2\log2+2\log(1-e^{-4\pi k}).
\end{align}$$

对 centered compact-support $p(k)=\Delta^{-1}f((k-k_*)/\Delta)$，support $[-b,b]$ 且 $b\Delta<k_*$，moment expansion 为

$$\begin{align}
S_{\rm edge}=4\pi k_*+2\log k_*- \frac{m_2\Delta^2}{k_*^2}+\frac{2m_3\Delta^3}{3k_*^3}+\cdots+ 2\langle\log(1-e^{-4\pi k})\rangle+\mathrm{const},
\end{align}$$

$m_n=\int u^nf(u)du$。Mathematica 复现至 cubic。因 $4\pi k_*=A/(4G_N)$，leading coefficient 在所选 quantization/regularization prescription 下成立。source (4.25) 的 $\mu_2,\mu_3$ 按前式应指 $m_2,m_3$，不是 Plancherel density 的下标。完整熵还含 $H(p)=H(f)+\log\Delta$；$\Delta$ 若随面积变化，总 log coefficient 不等于普适 2。

Failed under only relative narrowness：source (4.26) 后对截断到正半轴的 Gaussian 直接使用 $e^{8\pi^2\Delta^2}$，需要额外控制 tilted saddle。设 $Z(x)=\tfrac12\operatorname{erfc}(-x/\sqrt2)$，精确 normalized expectation 是

$$\begin{align}
\langle e^{-4\pi k}\rangle= e^{-4\pi k_*+8\pi^2\Delta^2} \frac{Z((k_*-4\pi\Delta^2)/\Delta)}{Z(k_*/\Delta)}.
\end{align}$$

通过完成平方独立复算。只有 $(k_*-4\pi\Delta^2)/\Delta\gg1$ 才可略去 ratio；$\log(1-e^{-4\pi k})\simeq-e^{-4\pi k}$ 也须在支配积分区域一致有效。$k_*=100,\Delta=10$ 时精确 Laplace expectation 为 $6.65206385657\times10^{-25}$，未截断表达式却为 $2.00097854566\times10^{2883}$，甚至大于 1，不能代表正 $k$ 上的 expectation。此例反驳无条件使用 Gaussian factor，不反驳 compact-support 幂级数或 conditional leading area term。

## 对当前 Regional Sewing 的迁移与限制

可复用对象是 orientation 明确的 $\Theta^X$、right charge matching 与 left continuity 的区别、regular hyperbolic centralizer、保留 one-sided boost gauge 的约束模型，以及 first-law 时钟归一化。完整 dependence chain 是 action → potential/charge → frame cotangent structure → 两种 matching → commuting relative boost → chosen quantum intertwiner → harmonic measure/regulated dimension → conditional entropy。

不能直接将形式 corner trace 当作物理 wedge algebra 的唯一 trace，也不能说 classical CPS 已唯一决定 state-counting measure。本文没有证明一般 local type-III algebra 与其 frame quantization 的算符代数等价。非球对称 Diff(S)、移动角点、extremal/no-bifurcation horizons、matter 的 bulk entropy 都在 source §5 的开放范围内。

## Verification Log

- Source-derived：全部 §§1–5 与 App A/B 的构造；DF functional identity、positive harmonic analysis、gluing 的物理解读。
- Checked：xCoba 静态四维 Ricci scalar；SL(2) centralizer、pullback factor 2；App A pairing rank；principal-series commutator/Casimir；Schwarzschild first-law Jacobian；finite-sector double-index entropy；Rényi prefactor、moment expansion；截断 Gaussian exact Laplace formula 与数值。
- Failed：p19 把 Killing $\tau$ 直接配面积而漏 $\kappa$ 的 canonical-pair 文字；仅凭 relative narrowness 使用 (4.26) 后的 Gaussian factor。已给修正，不依赖错误表述推进。
- Blocked：统一正半群 regulator 与极限控制、semigroup gluing 的唯一性、完整 bulk functional constraint/boundary action 的独立认证。这些是数学输入边界，不是检索失败。
- Assumptions：spherical vacuum、非极端 bifurcation sphere、固定 reference cones/seam、$\Phi_h>0$、specified principal quantization 与 volume-matching prescription。
- Not independently verified：完整 positive Plancherel theorem、任意 DF variation、physical trace uniqueness、非球对称/matter 推广；不称为普适 quantum-gravity entropy theorem。
- PDF 提取有 font warning；相关式已用 TeX 与 rendered pp19/26/35 核对。辅助 CAS protected-symbol/iterator/syntax 错误已修正后得到上述结果，未当作 source failures。
