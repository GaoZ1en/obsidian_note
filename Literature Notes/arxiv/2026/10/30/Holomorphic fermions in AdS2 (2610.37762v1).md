---
paper id: 2610.37762v1
title: Holomorphic fermions in AdS2
authors:
  - Calvin Y.-R. Chen
  - Lukas W. Lindwasser
publication date: 2026-10-27
abstract: |-
  Majorana fermions in AdS2 at masses mL=k+1 admit chiral field strengths and a local solution map from holomorphic functions. The authors relate this map to conformal Killing spinor-tensors and construct a local graded chiral symmetry algebra. Global Dirichlet conditions correlate the two chiral sectors.
comments: "14 pages + appendices; downloaded v1 PDF has 29 pages"
url: https://arxiv.org/abs/2610.37762v1
summary: "可显式验证的 AdS 费米子谱与 chiral-current 模型；保留 Dirichlet domain、低模缺口与 local/global symmetry 的区别。"
tags: []
---

# Holomorphic Fermions in AdS2

结论：在 $mL=k+1,\ k\ge0$ 的特殊质量，normalizable Dirichlet 费米子可用相关联的两侧 holomorphic data 表示；field strength 等于这些 data 的高阶导数。这个构造为当前 Dirac/AdS 谱工作提供 exact benchmark，但不把任意局部 chiral 变换自动变成满足边界条件的全局物理对称性。Reason codes: T1-symmetry; T1-symplectic; T2-spectral; T2-model。

## Source Map、Equation Ledger 与长文阅读路线

固定官方 v1 PDF/TeX，共 29 PDF 页，正文印刷 pp2–14，参考文献后有 Apps A–E。PDF pp7/10/14/28 已渲染并目视核对，分别包含 mode normalization、Laurent expansion、graded algebra 与 App D coefficient cancellation。

| cluster | 内容、重要式与依赖 |
|---|---|
| §1 | mass tuning (1.4)、rank-$k+1$ field strength、CK spinor-tensor ansatz |
| §§2.1–2.2 | global strip、Dirichlet、Dirac norm、Jacobi modes (2.8)–(2.15) |
| §§2.3–2.4 | Euclidean UHP map、spinor phases、projected field strength |
| §§3.1–3.2 | splitting (3.1)–(3.3)、Laurent modes (3.4)/(3.7)、correlators (3.9) |
| §4.1 | constant-curvature CKST construction、Weyl covariance、surjectivity 的条件 |
| §§5.1–5.2 | Grassmann Euler operator、$\delta Y$ (5.10)、graded bracket (5.11)、proper-subalgebra argument |
| §6 | bosonization、worldsheet multiplets、nonlinear shifts、higher-order chiral actions，均为展望 |
| App A.1/A.2 | strip/UHP gamma、spin connection、projectors、covariant-derivative commutator |
| App B | commutator cancellation 实现 holomorphicity |
| App C.1/C.2 | explicit differential-operator solution；covariant intertwiner 的三步证明 |
| App D | shifted derivative identities、upper projection cancellation、finite-difference sum 消失 |
| App E | off-shell variation 为 total derivatives，需保留 boundary contribution 条件 |

实际阅读先 §§2–3，再 App A/B/D；hidden conformal interpretation 和 local algebra 分别查 §4/App C.2 与 §5/App E。以下不以 source proof text 替代独立计算。

## 质量、Spinor Convention 与 Global Domain

Lorentzian metric、action 为

$$\begin{align}
ds^2=\frac{L^2}{\cos^2\rho}(-d\tau^2+d\rho^2),\quad -\frac\pi2<\rho<\frac\pi2,\quad\tau\in\mathbb R,
\end{align}$$

$$\begin{align}
S=-\int d^2x\,e\,\bar\Psi(\gamma^\mu D_\mu+m)\Psi,\quad \bar\Psi=i\Psi^\dagger\gamma^{\underline0},\quad \gamma^{\underline0}=i\sigma_2,\quad\gamma^{\underline1}=\sigma_1.
\end{align}$$

Majorana condition 在这个 real gamma representation 是 $\Psi^*=\Psi$。boundary condition 是 normalizable Dirichlet branch $\Psi(\tau,\pm\pi/2)\to0$。特殊质量与 boundary dimension：

$$\begin{align}
m_kL=k+1,\qquad \Delta=k+\frac32.
\end{align}$$

这些质量都在无 alternate-normalizable branch 的范围；不能把其“unique boundary condition”搬到一般低质量 Dirac 场。negative mass、其他 spin structure、mixed/non-normalizable data 未在本笔记重建。

Source Dirac norm 使用

$$\begin{align}
\langle\Psi_1,\Psi_2\rangle=\int_{-\pi/2}^{\pi/2}\frac{d\rho}{\cos\rho}\Psi_1^\dagger\Psi_2.
\end{align}$$

半径 $L$ 的整体归一化按 source 的 rescaled fields；恢复几何 measure 时须同步恢复 mode normalization，不能只额外乘一个 $L$ 后保留同一 CAR。

## §2.2：Jacobi Modes、归一化和正能谱

设 $\psi_\omega=\sqrt{\cos\rho}\,f_\omega(\rho)e^{-i\omega\tau}$，径向 equation 是

$$\begin{align}
\left(\omega-i\sigma_3\partial_\rho+ \frac{k+1}{\cos\rho}\sigma_2\right)f_\omega=0.
\end{align}$$

Normalizable positive modes 为 $\omega=n+k+\frac32,\ n=0,1,\ldots$，并取

$$
f_\omega=N_\omega\cos^{k+1}\rho
\begin{pmatrix}A_\omega+iB_\omega\\ A_\omega-iB_\omega\end{pmatrix},
$$

$$\begin{align}
A_\omega=\sqrt{1+\sin\rho}\, P_n^{(k+1/2,k+3/2)}(\sin\rho),\quad B_\omega=\sqrt{1-\sin\rho}\, P_n^{(k+3/2,k+1/2)}(\sin\rho),
\end{align}$$

$$\begin{align}
N_\omega= \frac{\sqrt{\Gamma(\omega-k-1/2)\Gamma(\omega+k+3/2)}} {2^{k+2}\Gamma(\omega)}.
\end{align}$$

Checked：Mathematica 对 $k,n=0,1,2,3$ 的 16 个 modes 逐一求导，32 个 component residual 都是零。计算使用 $\sqrt{1\pm\sin\rho}=\cos(\rho/2)\pm\sin(\rho/2)$，只在所声明开区间取该正分支。

Norm 有一个一般的可检查约化。令 $x=\sin\rho,\alpha=k+\frac12,\beta=k+\frac32$，两项分别是互换 $\alpha,\beta$ 的 Jacobi norms：

$$\begin{align}
h_n^{\alpha,\beta}= \frac{2^{\alpha+\beta+1}}{2n+\alpha+\beta+1} \frac{\Gamma(n+\alpha+1)\Gamma(n+\beta+1)} {n!\Gamma(n+\alpha+\beta+1)},\qquad \|\psi_\omega\|^2=4N_\omega^2h_n^{\alpha,\beta}=1.
\end{align}$$

Checked：最后的 Gamma identity 对一般非负整数 $n,k$ 简化为 1；不同 $n$ 的 orthogonality 使用 Jacobi orthogonality theorem，而非有限矩阵正交性测试。端点可先取 $\rho\in[-\pi/2+\varepsilon,\pi/2-\varepsilon]$，在固定 $n,k$ 后 $\varepsilon\to0^+$；这里积分收敛，不需要把端点 cutoff 与 mode cutoff 混为一谈。

Majorana expansion

$$\begin{align}
\Psi=\sum_{\omega\ge k+3/2} (a_\omega\psi_\omega+a_\omega^\dagger\psi_\omega^*),\quad \{a_\omega,a_{\omega'}^\dagger\}=\delta_{\omega\omega'}
\end{align}$$

给 standard positive-frequency vacuum。本文给的 fermionic phase-space pairing 是 conserved Dirac inner product/CAR；没有额外导出一个含一般 boundary improvements 的 graded CPS potential。

## §§2.3–3：UHP Splitting 的具体 Differential Map

Wick rotate $\tau=-i\tau_E$，取

$$\begin{align}
z=e^{\tau_E-i(\rho-\pi/2)},\quad ds^2=\Omega^2dz\,d\bar z,\quad \Omega=\frac{2iL}{z-\bar z}>0\quad(\operatorname{Im}z>0).
\end{align}$$

采用 source 的 spin-frame quarter phases 与 adjoint rotation，Euclidean equation 是 $(\gamma^\mu D_\mu-im_k\gamma_*)\Psi=0$，不是原 Lorentzian mass term 的逐字替换。写 $\Psi=(\tilde\psi,\psi)^T$，定义

$$\begin{align}
u=\Omega^{1/2}\psi,\qquad v=\Omega^{1/2}\tilde\psi,\quad d=z-\bar z,
\end{align}$$

则 component equations 化为

$$\begin{align}
\bar\partial u+\frac{k+1}{d}v=0,\qquad \partial v-\frac{k+1}{d}u=0.
\end{align}$$

Source differential operator 是

$$\begin{align}
\mathcal D_\alpha f= \sum_{j=0}^{\alpha}\frac{(2\alpha-j)!}{j!(\alpha-j)!} \frac{(-1)^{\alpha-j}}{d^{\alpha-j}}\partial^jf =d^{\alpha+1}\partial^\alpha(d^{-\alpha-1}f),
\end{align}$$

$\bar{\mathcal D}$ 是交换 $z,\bar z$ 后的共轭 operator。splitting (3.1) 写成无平方根的形式：

$$\begin{aligned}
u&=\Omega\mathcal D_{k+1}(\Omega^{-1}Y) +\frac{im_k}{2}\bar{\mathcal D}_k(\Omega\tilde Y),\\
v&=\Omega\bar{\mathcal D}_{k+1}(\Omega^{-1}\tilde Y) -\frac{im_k}{2}\mathcal D_k(\Omega Y).
\end{aligned}$$

这里 $Y=Y(z),\tilde Y=\tilde Y(\bar z)$。Checked：以任意未指定函数 $Y,G$ 做符号微分，对 $k=0,\ldots,5$ 直接代回两条 Dirac equations，每条 residual 均零。这是有限六个质量、任意 local functions 的 exact check，不是所有 $k$ 的 machine proof；一般 $k$ 的证明仍依赖 App C 的 operator recursion。

## Field Strength、App B/D 与 Kernel

Source 定义 symmetric traceless spinor-tensor

$$\begin{align}
\mathcal F_{\mu_1\cdots\mu_{k+1}} =D^+_{(\mu_1}\cdots D^+_{\mu_{k+1})_T}\Psi,\qquad D_\mu^\pm=D_\mu\pm\frac{i}{2L}\gamma_*\gamma_\mu.
\end{align}$$

UHP gamma matrices 满足 $\gamma_{\underline z}^2=\gamma_{\underline{\bar z}}^2=0$， $\mathsf P=\gamma_{\underline{\bar z}}\gamma_{\underline z}$ 投影到 lower component。App B 利用

$$\begin{align}
[\bar D,D^{\alpha+1}]\Psi= -\frac{\Omega^2}{4L^2}(\alpha+1)(\alpha I-\sigma_3)D^\alpha\Psi
\end{align}$$

和 mass tuning，消掉 $\bar D\mathcal F_{z\cdots z}$。剩余分量为

$$
\mathcal F_{z\cdots z}=
\begin{pmatrix}0\\\Omega^{-1/2}F(z)\end{pmatrix},\qquad
F=\partial^{2k+2}Y,
$$

以及 opposite chirality 的共轭式。

Checked：在上面独立算出的 $u,v$ 上，用 App A 的 tensor/spin weights 构造

$$\begin{align}
\prod_{h=0}^{k}\left(\partial+\frac{2h+1}{d}\right)u =\partial^{2k+2}Y,
\end{align}$$

其中 $h=0$ 先作用；upper projection 使用 $\prod_{h=0}^{k}(\partial+2h/d)v
-(k+1)d^{-1}\prod_{h=0}^{k-1}(\partial+(2h+1)/d)u=0$。
$k=0,\ldots,5$ 的两项残差均零。

App D 的一般 combinatorial cancellation 可归结为

$$\begin{align}
\sum_{j=0}^{m}(-1)^j\binom mj\binom{k+j}{m-1}=0.
\end{align}$$

这是对次数 $m-1$ polynomial 的 $m$ 阶 finite difference，因而有一般代数理由；Sage 另对原 source factorial sum 的所有 $0\le k\le20,\ 1\le m\le k+1$ 执行 exact checks，全通过。没有用普通 commuting fields 冒充 Grassmann algebra。

高阶导数有 polynomial kernel。独立检查 $k=0,\ldots,4$，取任意 monomial $Y(z)=z^j,\ 0\le j\le2k+1$，并取 boundary-compatible $\tilde Y(w)=(-1)^{k+1}w^j$，上述 map 的 $u,v$ 都为零。因此 $Y$ 不是与 physical field 一一对应的无冗余坐标；只把 $F=0$ 就认成一般物理 shift 也不充分，必须看 boundary matching 与 normalizability。

## §§3.1–3.2：全局完备性、低模缺口与 Regulated Correlator

定义

$$\begin{align}
P_k(r)=\prod_{j=0}^{k}\left[r^2-(j+\tfrac12)^2\right],\qquad r\in\mathbb Z+\tfrac12.
\end{align}$$

Physical Laurent expansions 为

$$\begin{align}
Y(z)=(-i)^{k+1}\sqrt{\frac L{2\pi}}
\sum_{|r|>k+1/2}\frac{\psi_r}{\sqrt{P_k(r)}}z^{-r+k+1/2},
\end{align}$$

$$\begin{align}
F(z)=(-i)^{k+1}\sqrt{\frac L{2\pi}}
\sum_{|r|>k+1/2}\sqrt{P_k(r)}\,\psi_r z^{-r-k-3/2},\quad \{\psi_r,\psi_s\}=\delta_{r+s,0}.
\end{align}$$

$\tilde Y,\bar F$ 使用同一批 $\psi_r$ 和 opposite phase。因此两侧不是两份独立 oscillators。边界 $z=\bar z$ 给 $Y=(-1)^{k+1}\tilde Y,\ F=(-1)^{k+1}\bar F$。 local splitting 自动给 solutions，但全部 normalizable global solutions 的 surjectivity 还依赖 Jacobi basis 的完备性及此 mode matching；本文未重新证明相应 self-adjoint spectral theorem。

Checked：$\partial^{2k+2}$ 对 monomial 的 rising-factorial coefficient 与 $P_k(r)$ 对应，$k=0,\ldots,12$ 的 polynomial identities 全零。被删的 $|r|\le k+1/2$ 正是 $P_k$ 的 zeros，不能把普通 free fermion 的全部 modes 填回。

保留 oscillator cutoff $n\le N$，radial-ordered $q=z'/z,\ |q|<1$。令 $r=n+k+3/2$，则

$$\begin{align}
W_N(q)=\sum_{n=0}^{N}\frac{(n+2k+2)!}{n!}q^n,\qquad \lim_{N\to\infty}W_N(q)=\frac{(2k+2)!}{(1-q)^{2k+3}}.
\end{align}$$

一般式由 binomial generating series 给出；Mathematica 对 $k=0,\ldots,5$ 检查至 $q^{12}$ 完全一致。先在 $|q|<1$ 取 $N\to\infty$，才讨论 boundary/coincident limits；没有赋予 coincident correlator 有限值。

由此得到 source (3.9)

$$\begin{align}
\langle F(z)F(z')\rangle= (-1)^{k+1}\frac{L(2k+2)!}{2\pi(z-z')^{2k+3}},\qquad \langle F(z)\bar F(\bar z')\rangle= \frac{L(2k+2)!}{2\pi(z-\bar z')^{2k+3}}.
\end{align}$$

Phase 来自两个 holomorphic prefactors；mixed phase 相消。$\bar F\bar F$ 为共轭式。weight 为 $(k+3/2,0)$。这些 free correlators 的 CFT 形状不单独证明完整 conformal Ward identities，source §4 也明确如此。

## §4 与 App C.2：Hidden Conformal Symmetry 的精确主张

对 constant curvature $R\ne0$，source 用

$$\begin{align}
m_k=-i(k+1)\sqrt{R/2},\quad \Psi=D^-_{\mu_1}\cdots D^-_{\mu_{k+1}}\mathcal Y^{\mu_1\cdots\mu_{k+1}},
\end{align}$$

其中 $D^-_\mu=D_\mu-\sqrt{R/8}\gamma_*\gamma_\mu$，

$$\begin{align}
D_{(\mu_1}\mathcal Y_{\mu_2\cdots\mu_{k+2})_T}=0,\qquad \gamma_{(\mu_1}\mathcal Y_{\mu_2\cdots\mu_{k+2})_T}=0.
\end{align}$$

App C.2 先用 gamma-trace decomposition $\mathcal B=\gamma\cdot\mathcal Y$，再递归将 $k+1$ 个 $D^-$ 与 Dirac operator 交换，最后用 constant-curvature commutators 得 intertwiner。两条 CKST equations 使其右侧消失。这个 proof 保证 ansatz 产生 solution，不自行保证 local surjectivity；source 将后者限制为已有 global mode space 的论证。

Contravariant $\mathcal Y$ 的 Weyl weight 是 $-1/2$，其 coupled equations 共同 covariant；诱导的 $\Psi$ transformation 一般 nonlocal，并非普通质量不变的 local Weyl rescaling。一般 Weyl rescaling 还可能离开 constant-curvature class，不能省略 mass/curvature 条件。$R>0$ 需要 imaginary mass，不能据此宣称 dS theory 已有正定 unitary quantization。

## §5 与 App E：Graded Local Algebra 与 Boundary Obstruction

令 $F_i=\partial^iF$，$\mathcal L(\{F_i\};z)$ 可为 even 或 odd，使用 left Grassmann derivative 的 Euler operator

$$\begin{align}
\mathcal E(\mathcal L)=\sum_{i\ge0}(-1)^i\partial^i \frac{\partial\mathcal L}{\partial F_i},\qquad \delta_{\mathcal L}Y=\tfrac12(-1)^{k+1}\mathcal E(\mathcal L),\quad \delta_{\mathcal L}\tilde Y=0.
\end{align}$$

只有 modulo total $\partial$ derivatives 的 functionals 给不同 transformations。取 parity 合适的参数，使 $\delta\Psi$ 保持 odd。source bracket 是

$$\begin{align}
[\delta_{\mathcal L},\delta_{\mathcal L'}]_-= \delta_{\mathcal L''},\quad \mathcal L''=\tfrac14(-1)^{|\mathcal L|} \big[\partial^{k+1}\mathcal E(\mathcal L), \partial^{k+1}\mathcal E(\mathcal L')\big]_+.
\end{align}$$

它对应 massless Majorana chiral algebra 中只允许从 $\psi_{k+1}$ 起的 jet functionals，故是 proper subalgebra；例如 $\mathcal L=\psi\partial\psi$ 的 transformation 不属于该受限集合。这里证明的是 local classical graded algebra，不是量子 central extension。

Checked：Sage exterior algebra 显式保留 30 个 odd jets，base ring 为 $\mathbb Q[z]$，实现 left partial derivatives、even total derivative 和 evolutionary prolongation。对 $\mathcal L_a=zF F',\mathcal L_b=z^2FF'$，检查 $\mathcal E(\mathcal L_a)=2zF'+F$，以及 $k=0,1,2$ 时直接 commutator 与上述 $\mathcal L''$ 产生的 transformation 完全相等。三个检查返回 exact Python True，过程中没有触及 jet cutoff。未把这三个 even quadratic examples 提升为任意 odd/nonlinear functional 的全证明。

App E 通过 covariant intertwiner 和 $k+1$ 次分部积分，将 off-shell variation 化为 $F\bar\partial\mathcal E(\mathcal L)$，再模 total derivatives 为 $\bar\partial\mathcal L$。这证明 local variational symmetry；在 UHP/strip 上，boundary term 的消失、与 Majorana reality/Dirichlet gluing 的兼容性仍须另查。任意只改变 $Y$ 而固定 $\tilde Y$ 的变换通常不保持两侧 boundary relation，故不能直接加入 physical charge algebra。

## 对 AdS Dirac 谱工作的接口

可借用的是 special-mass exact modes、Jacobi norm、positive-frequency threshold、$P_k(r)$ 的低模缺口，以及 local derivative map 的 kernel。若将模式截断用于 finite-dimensional regulator，必须先固定同一 CAR pairing 和 Dirichlet domain，再投影到 $|r|\le R_{\max}$；$\partial^{2k+2}$ 随频率增大，不能据有限低模成功便认定此 map 在无限 Hilbert space 上有 bounded inverse。

本文是 free fixed-background AdS2 结果，不直接解决 AdS3 Einstein–scalar 与 Dirac/Proca 的 interacting energy 对应。§6 的 bosonization、GS worldsheet multiplets、non-Abelian shift deformation 和 higher-spin Chern–Simons boundary interpretation 都没有在本次扩展为新计算。

## Verification Log

- Source-derived：§§1–6 和 Apps A–E 全部结构；general CKST intertwiner/Weyl covariance、spectral completeness、local action-invariance proof。
- Checked：16 个 global modes 的 32 个 component residual；一般 Jacobi norm 的 Gamma identity；$k=0,\ldots,5$ 任意 holomorphic data 的两条 Dirac residual 和两个 field-strength projections；$k=0,\ldots,4$ paired polynomial kernel；$k=0,\ldots,12$ mode coefficient identity；$k\le20$ 的 App D finite sums；六个 correlator series；Sage 三个 Grassmann Euler/algebra checks。
- Failed：已执行检查中没有发现 source contradiction；没有为填充标签而制造失败项。
- Blocked：source 在局部 chiral-algebra 分析中明确略去 global boundary aspects，未给允许的参数空间、完整 boundary variation/flux 与 charge domain，因此无法据此认证 boundary-preserving global charges 或 quantum central terms。任意-rank CKST identity 与所有 nonlinear/odd functionals 的一般证明仅列为 Not independently verified，不把未执行的证明冒称工具阻塞。
- Assumptions：$k,n$ 为非负整数，$mL=k+1$，指定 real/global 与 Euclidean gamma conventions，normalizable Dirichlet branch，UHP $\Omega=2iL/(z-\bar z)>0$，correlators 先 radial-order 再去 mode cutoff。
- Not independently verified：一般 spectral theorem、所有 mass 的 local-to-global surjectivity、一般 Weyl/curvature continuation、interacting 或 AdS3 推广。PDF/font 提取问题已用 TeX 和 rendered pages 交叉确认。
