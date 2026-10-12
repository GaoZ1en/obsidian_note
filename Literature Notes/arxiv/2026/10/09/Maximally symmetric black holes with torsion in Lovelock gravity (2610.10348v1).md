---
paper id: 2610.10348v1
title: Maximally symmetric black holes with torsion in Lovelock gravity
authors:
- Cvetković, B.
- Simić, D.
publication date: '2026-10-07'
abstract: We analyze the existence of static black hole solutions with maximally symmetric
  horizons and nontrivial torsion in five-dimensional Lovelock gravity. For each symmetry
  class, we obtain a black hole solution characterized by two independent constants.
  We also determine the conserved charges associated with these solutions.
comments: 16 pages, no figures
url: https://arxiv.org/abs/2610.10348v1
summary: 特殊五维 Lovelock 耦合上的两参数挠率黑洞具有零 Nester 荷；完整场方程代入成立，但原稿的拓扑无关不变量与近视界双因子挠率陈述需要修正。
tags: []
---

# 结论与使用范围

**Correct under the following precise conditions:** 在独立 vielbein/spin connection 的五维 Lovelock 理论中，取

$$
a:=\frac{\alpha_0}{\alpha_1}<0,\qquad
\alpha_2=\frac{\alpha_1^2}{12\alpha_0},\qquad
\alpha_0\alpha_1\ne0,
$$

并限制在下述实的静态外部区域，原稿的两参数解满足一阶场方程。相对于同一 $k$、同一耦合的 $C_0=C_1=0$ 背景，指定 Nester 边界表达式的七个等距荷确实为零。三种拓扑的完整代入和相关 covariant momenta 已重算。

**Incorrect:** 原稿 §3.5 将三种视界的 Riemannian/二次 Cartan/挠率不变量写成同一表达式；§5 称近视界的两个因子都带挠率。这些结论不被其自身的 vielbein 和 connection 支持。下文保留成立的解、零荷与近视界度规，明确修复不变量及 connection 的漏项，不使用错误公式判断全局正则性。

版本固定为 [2610.10348v1](https://arxiv.org/abs/2610.10348v1)，2026-10-07 提交，16 页。全文 TeX、PDF 和附录 A/B 已读；关键 printed equations 在 pp.6、8–10、13 的渲染页上复核。PDF 文本提取有字体警告，以 TeX 与渲染确认公式。本文是一个特殊耦合扇区的解族，不是所有静态含挠率解的完备分类。

# 阅读路线与完整 source map

先沿 §2 → §§3.1–3.4 → §4/B 阅读“action → 解 → 动量 → 零荷”，再读 §5 的极端极限。§3.5 必须连同本笔记的修正一起使用；附录 A 提供对称生成元，B 提供可直接核对的荷分量。

| 原稿部分 | 对象与作用 | 本笔记对应内容 |
|---|---|---|
| §1，pp.1–2 | Lovelock 高阶曲率与独立挠率解的动机 | 范围与限制 |
| §2/§2.1，p.2 | 独立 $e^i,\omega^{ij}$，action 与两组 EOM | 一阶变分 |
| §3.1，pp.3–4 | 球面对称连接 ansatz 与特殊耦合 | 统一解族 |
| §3.2，p.4 | 平面对称 ansatz | $k=0$ 的坐标实现 |
| §3.3，pp.4–5 | 双曲视界与实性条件 | $Q^2\ge0$ 的额外限制 |
| §3.4，pp.5–6 | 两根、重根、单根区间 | 视界多项式 |
| §3.5，p.6 | Riemannian、Cartan、torsional invariants | 独立重算与 source errors |
| §4，p.7 | Nester 边界形式与七个荷 | 零荷的逐步机制 |
| §5/§§5.1–5.3，pp.8–10 | 极端解与 $AdS_2\times\Sigma_k$ | 度规及完整连接极限 |
| §6，pp.10–11；§7，p.11 | 总结、零熵主张、稳定性等开放问题、致谢 | 热力学及稳定性边界 |
| A/A.1–A.3，pp.11–12 | $SO(4),SO(3,1),E(3)$ generators | 生成元与 contraction 支持 |
| B/B.1–B.2，pp.12–14 | $\rho_{ij}$ 与逐项 surface charges | 关键动量、B.3 修正 |
| References，pp.14–16 | 已有解、Nester 与近视界方法的来源 | Source-derived 文献关系；未追查全部引用 |

# 一阶作用量、符号与变分

内部指标 $i,j=0,\ldots,4$，$\eta_{ij}=\operatorname{diag}(+,-,-,-,-)$，$\epsilon_{01234}=+1$。记 $e^{ij\cdots}=e^i\wedge e^j\wedge\cdots$，体积形式 $\mathrm{vol}_5=e^{01234}$。独立变量为 $e^i$ 和反对称 $\omega^{ij}$；本文没有把 $\omega$ 预先设成 Levi–Civita connection：

$$
T^i=de^i+\omega^i{}_j\wedge e^j,\qquad
R^{ij}=d\omega^{ij}+\omega^i{}_k\wedge\omega^{kj},
\qquad \omega^i{}_j=\omega^{ik}\eta_{kj}.
$$

原稿 (2.1) 的归一化为

$$
L=\epsilon_{ijkln}\left[
\frac{\alpha_0}{5}e^{ijkln}
+\frac{\alpha_1}{3}R^{ij}\wedge e^{kln}
+\alpha_2 R^{ij}\wedge R^{kl}\wedge e^n\right].
$$

$\alpha_i$ 已包含该文的整体作用量归一化，不应额外补入 $1/(16\pi G)$。$\delta R^{ij}=D\delta\omega^{ij}$ 后分部积分，得到

$$
E_i=\epsilon_{ijkln}
\left(\alpha_0e^{jkln}+\alpha_1R^{jk}\wedge e^{ln}
+\alpha_2R^{jk}\wedge R^{ln}\right)=0,
$$

$$
E_{ij}=\epsilon_{ijkln}
\left(\alpha_1e^{kl}+2\alpha_2R^{kl}\right)\wedge T^n=0.
$$

第二式不普遍强迫 $T^i=0$；本例恰好选择允许非零挠率的退化代数扇区。按原稿反对称指标求和约定，

$$
\tau_i=\frac{\partial L}{\partial T^i}=0,\qquad
\rho_{ij}=2\epsilon_{ijkln}
\left(\frac{\alpha_1}{3}e^{kl}+2\alpha_2R^{kl}\right)\wedge e^n.
$$

变分边界势可取 $\Theta=\tfrac12\delta\omega^{ij}\wedge\rho_{ij}$；这个 $1/2$ 与显式反对称指标双重计数配套。转入 metric CPS 前必须先处理独立 connection、Lorentz gauge 和边界项，不能把本解的挠率默默删掉。

# §§3.1–3.3：同一径向函数、三种连接

令 $\Sigma_k$ 为单位常曲率三维空间，$k=1,0,-1$。原稿采用

$$
ds^2=f(r)dt^2-\frac{dr^2}{f(r)}-r^2d\Omega_k^2,
\qquad
N=B=\sqrt f,
$$

$$
\boxed{f(r)=\frac{C_1}{r^6}-\frac{2C_0}{7}r-\frac{3a}{2}r^2},
\qquad
A(r)=6ar+C_0,\qquad Q(r)=\sqrt{k-2ar^2}.
$$

$C_0$、$C_1$ 为独立积分常数。设 $d\Omega_k^2=\delta_{ab}\bar e^a\bar e^b$，$a,b=2,3,4$，则

$$
e^0=Ndt,\quad e^1=dr/N,\quad e^a=r\bar e^a,
$$

$$
\omega^{01}=A\,dt,\qquad\omega^{0a}=\omega^{1a}=0,
\qquad
\omega^{ab}=\bar\omega^{ab}+Q\epsilon^{ab}{}_c\bar e^c,
\quad \epsilon^{23}{}_4=1.
$$

这里 $\epsilon^{ab}{}_c$ 表示三维欧氏数值交错符号，与五维 Lorentz 指标升降分开。$\bar\omega$ 使用上式 $\eta$ 的空间连接约定。具体而言，球面/双曲面令 $s(\psi)=\sin\psi/\sinh\psi$，则

$$
\bar e^2=d\psi,\quad\bar e^3=s\,d\theta,
\quad\bar e^4=s\sin\theta\,d\varphi,
$$

$$
\omega^{23}=s' d\theta+Q s\sin\theta d\varphi,
\quad\omega^{24}=-Q s d\theta+s'\sin\theta d\varphi,
\quad\omega^{34}=Qd\psi+\cos\theta d\varphi.
$$

平面采用 $\bar e^a=(dx,dy,dz)$、$\bar\omega^{ab}=0$，所以 $\omega^{23}=Qdz,\omega^{24}=-Qdy,\omega^{34}=Qdx$。这分别对应原稿的 $A_4$ 和 planar $A_2$；其余 $A_i$ 的编号不跨小节通用。

## 从连接到一阶场方程的可复算链

先保留任意 $N(r)$，直接外微分得到

$$
T^0=-\left(N'+\frac{A}{N}\right)e^{01},\quad T^1=0,
$$

$$
T^2=\frac Nr e^{12}+\frac{2Q}{r}e^{34},\quad
T^3=\frac Nr e^{13}-\frac{2Q}{r}e^{24},\quad
T^4=\frac Nr e^{14}+\frac{2Q}{r}e^{23},
$$

以及

$$
R^{01}=-6a e^{01},\qquad R^{0a}=R^{1a}=0,
$$

$$
R^{23}=-2a e^{23}+D e^{14},\quad
R^{24}=-2a e^{24}-D e^{13},\quad
R^{34}=-2a e^{34}+D e^{12},\qquad
D=\frac{NQ'}r=-\frac{2aN}{Q}.
$$

这些表达式在 $r>0,N>0,Q>0$ 的局部坐标片使用。$Q=0$ 端点需取极限，不能直接代入含 $1/Q$ 的表达式。

代入两组 EOM 后，剩余非零分量都是

$$
\pm\frac{4\alpha_1}{3N}
\left(NN'+\frac{3N^2}{r}+6ar+C_0\right)
$$

的倍数。写 $f=N^2$ 后，唯一剩余径向条件为

$$
r f'+6f+12ar^2+2C_0r=0,
\qquad
(r^6f)'=-12ar^7-2C_0r^6.
$$

积分立刻给出上面的 $f$。这补足了原稿“软件求解得到”的中间环节；不是从同一最终公式自行构造一个恒等式。独立坐标外微分与 wedge 程序对 $k=1,0,-1$ 分别得到全部 $E_i,E_{ij}$ 的零残差。解上还可简化

$$
N'+A/N=-3N/r,\qquad T^0=3N e^{01}/r.
$$

未证明所选 connection ansatz 内不存在其他分支，也未证明原稿给出的 ansatz 是所有允许局部 Lorentz 补偿后的最一般形式。

# §3.4：正根与实的黑洞外部

对 $r>0$，$f$ 与

$$
P(r)=r^6f=C_1-\frac{2C_0}{7}r^7-\frac{3a}{2}r^8
$$

有相同零点。由于 $a<0$，$P(\infty)>0$，且

$$
P'=-2r^6(C_0+6ar).
$$

当 $C_0>0$ 时存在唯一正极小值点

$$
r_e=-\frac{C_0}{6a},\qquad
C_{1,e}=-\frac{C_0^8}{28(6a)^7}>0,
\qquad P(r_e)=C_1-C_{1,e}.
$$

因此原稿 (3.21)–(3.25) 的正根分类成立，但要把 $C_0>0$ 与 extremal equality 一起保留：

| 参数 | 正根数 |
|---|---|
| $C_0>0,\ 0<C_1<C_{1,e}$ | 两个简单根，外根为静态外部的视界候选 |
| $C_0>0,\ C_1=C_{1,e}$ | 一个二重根 $r_e$ |
| $C_1<0$，任意 $C_0$ | 一个简单正根 |
| $C_1=0,\ C_0>0$ | 一个正根 $r_h=-4C_0/(21a)$ |
| 其余组合 | 无正根 |

这首先是 metric horizon 分类。对 $k=-1$ 还需要

$$
Q_h^2=-1-2ar_h^2\ge0.
$$

若希望上述光滑局部公式直接适用，则取严格大于零；等号情形需专门验证边界延拓。球面和平面在 $r>0$ 自动满足 $Q^2>0$。双曲空间实场只在 $r\ge1/\sqrt{-2a}$ 有定义，不能把形式上的 $r\to0$ 展开直接当成该实解的物理内区。

按 $\partial_t$ 的原稿归一化，简单根的 metric surface gravity 为 $\kappa=f'(r_h)/2$、温度为 $|f'(r_h)|/(4\pi)$。这是 metric 计算；其与含挠率一阶 Hamiltonian 的第一定律还需边界条件和熵定义。

# §3.5：重算不变量，隔离错误的奇点判断

区分 Levi–Civita 的 $\widetilde R$ 与独立 connection 的 $R$。在原稿曲率号约定下，warped-product metric 给出

$$
\boxed{\widetilde R=f''+\frac{6f'}r+\frac{6(f-k)}{r^2}
=-30a+\frac{12C_1}{r^8}-\frac{24C_0}{7r}-\frac{6k}{r^2}},
$$

$$
\boxed{\widetilde R_{\mu\nu\rho\sigma}\widetilde R^{\mu\nu\rho\sigma}
=(f'')^2+\frac{6(f')^2}{r^2}+\frac{12(f-k)^2}{r^4}}.
$$

xAct/xCoba 从球面对称坐标度规独立计算得到以上 Ricci scalar 与 Kretschmann；Mathematica 对一般 $k$ 代数展开。原稿 (3.26)、(3.27) 是 $k=0$ 的表达式，并不适用于所有三种拓扑。其 Kretschmann 与正确式之差为

$$
\widetilde K_k-\widetilde K_{\mathrm{printed}}
=\frac{12k}{7r^{10}}
\left[-14C_1+r^6(7k+4C_0r+21ar^2)\right].
$$

独立 connection 的标量仍为 $R=-24a$，但二次量不同。用上述 $R^{ij},T^i$，Hodge 由 $\eta=(+----)$ 和 $\mathrm{vol}_5$ 定义，有

$$
\boxed{R^{ij}\wedge\star R_{ij}
=\left(96a^2+\frac{24a^2 f}{k-2ar^2}\right)\mathrm{vol}_5},
$$

$$
\boxed{T^i\wedge\star T_i
=-\frac{12(f+Q^2)}{r^2}\mathrm{vol}_5
=\left(42a+\frac{24C_0}{7r}-\frac{12k}{r^2}
-\frac{12C_1}{r^8}\right)\mathrm{vol}_5}.
$$

三种连接分别作坐标外微分并全指标收缩，均与这些结果一致。原稿 (3.29)、(3.30) 仅给出 $k=1$ 分支；其中 (3.29) 与上式球面版本的差经 Mathematica 化简为零。

即使 $C_1=0$，挠率二次量仍含 $C_0/r$ 与 $k/r^2$。所以“$C_1=0$ 时 torsional invariant 在原点正则”的原文判断错误。例如球面的 $C_0=C_1=0$ 背景仍有 $-12/r^2$ 的挠率标量项，而 Riemannian Ricci 也含 $-6/r^2$。这个背景可用于外部荷的相对归一化，却不能被称为处处正则的 vacuum。

对双曲分支，$Q^2=0$ 还可能产生 $f/Q^2$ 型问题。若视界外部满足 $Q^2>0$ 则不出现该额外分母零点；若取边界等号，需共同取 $f,Q$ 的极限及检查 regular frame。有限的一组标量不等于已经证明完整几何延拓正则。

# §4 与附录 B：零荷来自哪些分量

原稿选择同一拓扑、同一耦合下的 $C_0=C_1=0$ 为 reference，$\Delta X=X-\bar X$。Nester 形式为

$$
\mathcal B_\xi=(\iota_\xi e^i)\Delta\tau_i
+\Delta e^i\wedge\iota_\xi\bar\tau_i
+\frac12(\iota_\xi\omega^{ij})\Delta\rho_{ij}
+\frac12\Delta\omega^{ij}\wedge\iota_\xi\bar\rho_{ij},
\qquad Q_\xi=\int_{\partial\Sigma}\mathcal B_\xi.
$$

耦合关系给出

$$
\rho_{01}=\frac{4(\alpha_1^2-12\alpha_0\alpha_2)}{\alpha_1}e^{234}=0,
\qquad \rho_{23}=\rho_{24}=\rho_{34}=0.
$$

其余独立非零分量为

$$
\rho_{02}=-\frac{8\alpha_1}{3}e^{134},\quad
\rho_{03}=\frac{8\alpha_1}{3}e^{124},\quad
\rho_{04}=-\frac{8\alpha_1}{3}e^{123},
$$

$$
\rho_{12}=\frac{8\alpha_1}{3}e^{034}-\frac{4\alpha_1N}{3Q}e^{012},
$$

$$
\rho_{13}=-\frac{8\alpha_1}{3}e^{024}-\frac{4\alpha_1N}{3Q}e^{013},\quad
\rho_{14}=\frac{8\alpha_1}{3}e^{023}-\frac{4\alpha_1N}{3Q}e^{014}.
$$

这是三种拓扑共同的 frame 表达式。原稿 B.1 相符；B.3 平面分支把后三项系数写成 $2\alpha_1^2N/(3\alpha_0r^2A_2)$，与 $-4\alpha_1N/(3A_2)$ 不相等。该错误未进入下面的零荷结论，因为相应 $\omega^{1a}=0$。

零荷计算可按三步复用：

1. $\tau_i=0$，前两个项消失。
2. 所有连接中只有 $\omega^{01}$ 依赖积分常数，$\Delta\omega^{01}=C_0dt$。最后一项只见 $\bar\rho_{01}=0$，因此也消失。
3. $\partial_t$ 只收缩出 $\omega_t^{01}$，而六个空间等距生成元只收缩出 $\omega^{ab}$；对应的 $\Delta\rho_{01}$ 与 $\Delta\rho_{ab}$ 全部为零。

因此 $\mathcal B_\xi$ 对这七个生成元逐点为零，进而 $Q_\xi=0$。这比“积分对称性导致零”更强，也避免非紧 planar/hyperbolic 视界的形式体积发散。若采用 quotient，只有能下降到 quotient 的生成元才定义相应全局荷。结论固定于这套 reference、frame、boundary expression 和边界识别；并不自动等于任意 renormalization prescription 下的质量。

## 附录 A 的生成元如何进入上述论证

球面/双曲面以 $c(\psi)=\cot\psi/\coth\psi$ 统一写作

$$
\xi_1=\cos\theta\,\partial_\psi-c\sin\theta\,\partial_\theta,
$$

$$
\xi_2=\sin\theta\cos\varphi\,\partial_\psi
+c\cos\theta\cos\varphi\,\partial_\theta
-\frac{c\sin\varphi}{\sin\theta}\partial_\varphi,
$$

$$
\xi_3=\sin\theta\sin\varphi\,\partial_\psi
+c\cos\theta\sin\varphi\,\partial_\theta
+\frac{c\cos\varphi}{\sin\theta}\partial_\varphi,
$$

$$
\xi_4=\cos\varphi\partial_\theta-\cot\theta\sin\varphi\partial_\varphi,
\quad\xi_5=\sin\varphi\partial_\theta+\cot\theta\cos\varphi\partial_\varphi,
\quad\xi_6=\partial_\varphi.
$$

平面为三平移 $(\partial_x,\partial_y,\partial_z)$ 及三旋转 $(y\partial_x-x\partial_y,z\partial_x-x\partial_z,z\partial_y-y\partial_z)$。这些 source-derived 具体生成元只需“无 $t,r$ 分量”即可进入零荷论证；本次没有另作全部 Lie bracket/classification 的 CAS 检查。

# §5：极端极限、连接漏项与挠率归属

取 $C_0>0,C_1=C_{1,e}$，则 $f(r_e)=f'(r_e)=0$，并有

$$
\frac12f''(r_e)=-6a=\frac1{\ell^2},\qquad
\ell^2=-\frac1{6a}>0,\qquad r_e=\ell^2C_0.
$$

按原稿 (5.2) 使用 $r=r_e+\varepsilon\rho$、$t=\tau/\varepsilon$，得到

$$
ds_{\rm NH}^2=\frac{\rho^2}{\ell^2}d\tau^2
-\frac{\ell^2}{\rho^2}d\rho^2-r_e^2d\Omega_k^2.
$$

这里是 $N(r_e+\varepsilon\rho)/\varepsilon\to\rho/\ell$，不是未缩放的 $N$ 本身趋于有限 $\rho/\ell$。又因 $A(r_e)=0$，

$$
\omega^{01}\to-\frac{\rho}{\ell^2}d\tau,
\qquad
\omega^{ab}\to\bar\omega^{ab}
+Q_e\epsilon^{ab}{}_c\bar e^c,
\qquad Q_e^2=k+\frac{r_e^2}{3\ell^2}.
$$

$AdS_2\times S^3,AdS_2\times\mathbb R^3,AdS_2\times H^3$ 的 metric 结论成立。双曲分支要求 $\ell^2C_0^2\ge3$；等号的原解边界平滑性未由上述极限自动证明。

原稿 (5.8)、(5.14) 的 $\omega^{23}$ 分别漏掉 $\cos\psi\,d\theta$、$\cosh\psi\,d\theta$。这些项与 $r$ 无关，在缩放中不能消失；应保留完整 $\bar\omega^{ab}$。原稿没有给出允许只删这一项且保持其余 coframe/connection 不变的 Lorentz transformation。

对 near-horizon coframe

$$
e^0=\rho d\tau/\ell,\quad e^1=\ell d\rho/\rho,\quad
 e^a=r_e\bar e^a,
$$

直接重算 $de^i+\omega^i{}_je^j$ 得到

$$
\boxed{T^0_{\rm NH}=T^1_{\rm NH}=0},\qquad
T^2_{\rm NH}=\frac{2Q_e}{r_e}e^{34},\quad
T^3_{\rm NH}=-\frac{2Q_e}{r_e}e^{24},\quad
T^4_{\rm NH}=\frac{2Q_e}{r_e}e^{23}.
$$

因此通常只有三维因子保留 axial torsion。AdS₂ 因子的 $de^0=-e^{01}/\ell$ 与 $\omega^0{}_1e^1=+e^{01}/\ell$ 精确抵消。双曲边界 $Q_e=0$ 时，这个极限几何的三维挠率也消失。原稿“both factors carry torsion”不成立。

# §6 的作用量、熵与 CPS 接口

三种分支直接代入 $L$ 得到 $L|_{\rm solution}=0$，已检查。这与 $\rho_{01}=0$ 支持原稿的零熵结论，但“bulk action 为零”本身不足以推出完整 Euclidean on-shell action、Hamiltonian 能量和熵均为零：还需边界项、时间周期、reference subtraction 与 ensemble。

在使用同一一阶 Lorentz-covariant Wald prescription、光滑非极端 bifurcation surface 和兼容 normal frame 的前提下，entropy density 应由法向 boost momentum $\rho_{01}$ 控制，故此处为零。这个条件链与零动量计算相容；本次没有重新建立带挠率边界条件下完整第一定律或 Euclidean variational problem。极端熵若由极限定义，也须明确采用这一处方。

可接入当前研究的具体对象为 $\Theta=\tfrac12\delta\omega\wedge\rho$、退化的 $\rho_{01}$、以及 $\mathcal B_\xi$。两参数的几何变化在这些七个 charges 下都不可见，是研究 charge degeneracy 的明确模型；它不能单独证明这些变化全为 gauge，也不能证明 presymplectic form 的所有方向均退化。应先计算允许变分下的 $\delta\Theta$ 与边界通量，再谈 quotient。

原稿未计算线性扰动谱、稳定性、ghost 条件、旋转族或区域 sewing；这些是开放方向，不是现有零荷结果的推论。

# Equation ledger 与依赖

| 原稿位置 | 判断 | 依赖及可用范围 |
|---|---|---|
| (2.1)–(2.3) | Source-derived variational equations；解的全分量代入 Checked | 独立 $e,\omega$，不能先强制零挠率 |
| (3.7)/(3.12)/(3.17) | Checked | 三拓扑、特殊耦合、局部 $f,Q^2>0$ |
| (3.21)–(3.25)/(5.1) | Checked | 正根分类；极端解需 $C_0>0$；额外实性单独施加 |
| (3.26)/(3.27) | Failed as topology-independent statements | 印式仅为 $k=0$；缺曲率项影响奇点结论 |
| (3.28) | Checked | Cartan scalar $-24a$ 与 Levi–Civita scalar 不同 |
| (3.29)/(3.30) | Failed as topology-independent statements | 印式对应 $k=1$；本笔记给一般 $k$ 式 |
| (4.2)–(4.6)、B.1 | Checked for the displayed family | 核心机制为 $\rho_{01}=\rho_{ab}=0$ |
| B.3 的 $e^{01a}$ 系数 | Failed | 平面正确系数同 B.1 的 $-4\alpha_1N/(3Q)$；零荷不依赖该项 |
| (5.6)/(5.9)/(5.11) | Checked | 极端缩放的 metric limit |
| (5.8)/(5.14) | Failed as complete connection lists | $\omega^{23}$ 缺 intrinsic connection 项 |
| §§5.1–5.2 “both factors” | Failed | 完整连接给 $T^0=T^1=0$ |
| §6 的零熵/稳定性讨论 | Conditional / open | 未验证完整 ensemble、边界变分或谱 |

# Verification log

- **Verified / Checked — geometric substitution:** xAct 环境中的显式坐标 exterior-algebra 程序使用 32 个五维形式基，独立计算 $d,\wedge,T,R$、全部 EOM、$\rho_{ij}$、二次缩并与 $L$。球面、平面、双曲分支分别得到 EOM 全零、$L=0$，同时保留非零挠率与非零其他 momentum 分量；没有以“所有对象都置零”的方式通过检查。
- **Verified / Checked — metric invariants:** xAct/xCoba 从球面对称 CTensor metric 计算 Ricci scalar 和全 Riemann contraction，与本笔记公式之差为零。Mathematica 展开一般 $k$ 的 warped-product 表达式并与 printed 公式比较，输出上述非零拓扑差。
- **Verified / Checked — radial algebra:** Mathematica 检查径向 ODE、$N'+A/N=-3N/r$、极端双零及 $f''/2=-6a$、原稿 (3.29) 的球面特例；全部目标残差为零。
- **Verified / Checked — near-horizon torsion:** 在独立极限 coframe 和保留完整 intrinsic connection 后重新计算 $T$，得到 $T^0=T^1=0$ 与三维 axial torsion。
- **Source-derived:** action 及一般 Nester prescription 的适用性、完整 ansatz 的对称性分类、附录 A 的标准生成元和已有文献关系。公式的来源读取不等于独立一般定理证明。
- **Assumptions:** $\alpha_0\alpha_1\ne0$、$a<0$、$\alpha_2=\alpha_1/(12a)$、$\eta=(+----)$、$\epsilon_{01234}=+1$，$r>0,f>0,Q^2>0$ 的局部外部区；极端极限取 $C_0>0$。荷使用固定 reference、frame 与指定 Nester 边界形式。
- **Failed:** 上述 ledger 所列不变量、B.3 系数、近视界 connection 漏项与双因子挠率陈述；相关 regularity 主张不能引用原印式作证。
- **Blocked / recovered:** 最初将 planar/hyperbolic 一起作 FullSimplify 的调用返回 `Process execution timed out after 120000 ms.`；拆成分支并给出实性条件、改用 Simplify 后完成。一次脚本括号错误和一次无关 CTensor list 提取错误均修复重跑。无遗留检索或计算服务阻塞。
- **Not verified:** ansatz 完备性、全局 horizon extension（尤其 $Q_h=0$）、完整边界变分/热力学、stability/ghost、所有 allowed asymptotic symmetries 的 charge algebra。临时 sources、renderings、code/results 保存在 vault 外；本笔记未创建 PDF attachment。
