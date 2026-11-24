# 连续极限、Hagedorn collar 与另一种 irrelevant deformation

**在本研究的 coupling 约定下，正 $\lambda$ 的精确 Ising 谱有有限最小圆周和 Hagedorn threshold；负 $\lambda$ 的指定分支不能给全 Ising spectrum 的半有界实 Hamiltonian。它们不代替局域算符理论的构造。** 一阶自旋 realization 的连续意义目前限于固定低模矩阵元。

取 $c_L=c_R=1/2$、$v=\hbar=1$，谱公式、能量零点及 operator frame 见[Hamiltonian 定义](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/ising-hamiltonian.md>)。以下热谱结论条件化于使用该精确谱及 seed Ising multiplicities；不从能谱反推出局域净或空间 tensor factorization。

## 1. 两个符号的谱限制

### 正 $\lambda$

真空根号为 $1-\pi\lambda/(3L^2)$。定义
\[
\ell_* = \beta_H=\sqrt{\frac{2\pi c\lambda}{3}}=\sqrt{\frac{\pi\lambda}{3}}.
\tag{1}
\]
要所有 seed states 的谱实，至少且在这个谱 family 中也足够 $L\ge\ell_*$。等号处真空 radicand 为零，参数/pressure derivatives 奇异；不把它称为 regular local theory。

即使 $L>\ell_*$，高能 density 也不再像 CFT 的 $\exp(\mathrm{const}\sqrt E)$。保留 momentum 后得到下述有限-volume heat-trace threshold：
\[
\boxed{Z(\beta)=\operatorname{Tr}e^{-\beta H_\lambda}
\begin{cases}<\infty,&\beta\ge\beta_H,\\=\infty,&0<\beta<\beta_H.
\end{cases}}
\tag{2}
\]
**Ising 的 endpoint 包含在有限的一侧。** “Hagedorn 温度”一词本身不能决定 endpoint，必须保留 prefactors 和 spin 分布。

### 负 $\lambda=-g<0$

balanced towers $P=0,E^{(0)}\to\infty$ 的 radicand $1-4gE^{(0)}/L$ 变负。更强的是：仅删去 complex levels 仍不能解决半有界性。在 vacuum module 的 chiral descendant tower 上 $E^{(0)}=|P|-\pi c/(6L)$，radicand 为
\[
(2g|P|/L-1)^2+\frac{2\pi cg}{3L^2}>0,
\]
但主分支给
\[
E_{-g}(P)=-|P|+L/g+O(|P|^{-1}),\qquad |P|\to\infty.
\tag{3}
\]
因此这份“保留所有实 levels”的谱依然无下界。高能截断、换分支或添加新态可能定义别的对象；本次没有给它们构造，也不把此反例扩大为所有负号 UV completion 的不可能定理。

## 2. 为什么 (2) 不是只套 total Cardy formula

Ising chiral characters 可写为有限 parity projections of fermionic products。去掉 ground powers 后，$\sigma$ module coefficients 来自 $\prod_{r\ge1}(1+q^r)$，identity/energy modules 分别来自 distinct-odd partitions 的 even/odd levels。它们满足
\[
a_i(n)\le C_i(n+1)^{-3/4}\exp\!\left[\frac\pi{\sqrt3}\sqrt n\right]
\tag{4}
\]
（固定 module 的有限 level shifts 可吸收到常数）。可用下列 elementary coefficient estimate，而不是假设 unrestricted total Cardy 后丢掉 $P$：对 $F(q)=\prod_{w\in W}(1+q^w)$，$W$ 为正整数或正奇数，引入独立 Bernoulli occupations，
\[
a_n=e^{tn}F(e^{-t})\Pr(S=n).
\]
Euler–Maclaurin 给 $\log F(e^{-t})=K/t+O(1)$，$K=\pi^2/12$ 或 $\pi^2/24$。其 characteristic function 的 Fourier integral 由 $\exp[-\kappa\sum_{w\asymp1/t}\sin^2(w\theta/2)]$ 控制：中央宽度 $t^{3/2}$，其他区间 exponentially suppressed，故 $\Pr(S=n)\le Ct^{3/2}$。选 $t=\sqrt{K/n}$ 得 (4)；distinct-odd 的 level 重标使最终指数相同。详细界与 endpoint 证明见[独立 UV 推导](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/reviews/uv-independent.md>)。

在一个 sector 中写 $u=n+\bar n$、$j=n-\bar n$。形变能量的高层行为为
\[
E_\lambda(u,j)=\sqrt{2\pi u/\lambda+(2\pi j/L)^2+O(1)}-L/(2\lambda).
\]
在 $\beta=\beta_H$，chiral exponential 在 balanced point 抵消；动量代价把贡献宽度限制为 $|j|=O(u^{1/4})$，不是 seed CFT 的宽 spin 分布。结合两份 $(n+1)^{-3/4}$ prefactors，total shell 有 $O(u^{-5/4})$ 的可和上界。远离 balanced point 的尾另有 exponential suppression。这证明 endpoint 收敛。

$\beta<\beta_H$ 的发散只需 $\sigma$ module balanced subsequence：fermion product 的 $K/t$ growth 强迫无穷多个 coefficients 接近相应 exponential rate，在 $n=\bar n$ 上超过任何 polynomial suppression。若进一步做中央 Fourier saddle 的 lower bound/local limit estimate，shell 为 $\Theta(u^{-5/4})$，从而 endpoint 的 energy moments 满足
\[
\operatorname{Tr}(K^r e^{-\beta_H K})<\infty\iff 0\le r<\tfrac12,\qquad K=H_\lambda-E_{\rm vac}\ge0,\quad r\ge0.
\tag{5}
\]
这里的 lower asymptotics 也已建立：在 $\theta=t^{3/2}u$ 上展开 centered characteristic function，第三 cumulant 的误差为 $O(t^{1/2}|u|^3)$；前述 Gaussian majorant 允许 Fourier dominated convergence，给出 coefficient 的完整正 prefactor。它不是从 (4) 的单侧 bound 或有限层数拟合自动得出的，细节见[独立报告](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/reviews/uv-independent.md#L213-L238>)。

特别是 endpoint 可有有限 partition function 而一阶 energy moment、thermal entropy 发散；不能照用 undeformed Ising 对任意正温度的 energy-insertion domination。

## 3. 三种不同的 collar 命题

### 3.1 有界 operator 的组合与 Schatten 条件

本节 $E_a$ 表示 shifted operator $K$ 的本征值。$e^{-tK}$ 对每个 $t>0$ bounded/compact，但
\[
e^{-tK}\in\mathcal S_p\iff pt\ge\beta_H.
\tag{6}
\]
所以 trace-class collar 需 $t\ge\beta_H$；Hilbert–Schmidt coevaluation 需 $t\ge\beta_H/2$。例如 $\sum_ne^{-tE_n}|n\rangle\otimes|\bar n\rangle$ 的 norm² 就是 $Z_K(2t)$。

对 bounded $A_i$、$t_i>0$，置 $T=\sum_i t_i$。若 $T\ge\beta_H$，选 Hölder exponents $p_i=T/t_i$ 得
\[
\|A_1e^{-t_1K}\cdots A_me^{-t_mK}\|_1
\le\prod_i\|A_i\|\, Z_K(T)<\infty.
\tag{7}
\]
有限 spectral-projector approximations 也在相应 Schatten norms 下收敛。故 trace-class operator composition 和适当 trace pairing 存在。$A_i=1$ 表明 total-collar condition 作为对任意 bounded insertions 的条件不能降低。

### 3.2 完整 fine-index 历史的绝对重排是更强命题

(7) **不自动证明**多重 energy-basis series 取逐项绝对值后收敛。原[undeformed CFT collar 论证](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/continuum-and-replica.md#L9-L47>)用的是更强的 absolute entry sum；不能只把它的 trace estimate 换成 (7) 就继承全部 Fubini。

一个直接可检验的充分条件是：$m\ge2$ 时每个 $t_i\ge\beta_H/2$。定义非负矩阵 $D_i$ 的 entries 为 $e^{-t_iE_a}|(A_i)_{ab}|$。它满足
\[
\|D_i\|_2^2\le\|A_i\|^2Z_K(2t_i).
\]
HS 矩阵乘积的 trace norm 界及非负 entries 的 Tonelli 给
\[
\sum_{a_1,\ldots,a_m}\prod_i e^{-t_iE_{a_i}}|(A_i)_{a_i a_{i+1}}|
\le\prod_i\|A_i\|\prod_i Z_K(2t_i)^{1/2}<\infty.
\tag{8}
\]
$m=1$ 仍需 $t_1\ge\beta_H$。这个条件不宣称为所有 unequal collars 的最优刻画。

**total-only 的严格反例机制：** 在 balanced $P=0$ 的高能简并 block 上取 dense unitary Fourier matrix，block dimension 为 $d$，每个 entry modulus 为 $d^{-1/2}$。$m$ 个 insertions 的 absolute cycle sum 为 $d^{m/2}e^{-TE}$；Ising blocks 的 exponential rate 为 $\log d\sim\beta_HE$。因此 $m\ge3$ 时可选 $\beta_H<T<m\beta_H/2$，使 trace-class product 存在但 fine-entry absolute expansion 发散。取所有 blocks 的 direct sum 仍是 bounded unitary operators。反例是对任意 bounded insertion theorem 的审查，不声称这些 Fourier-block operators 为局域 observables。

在相等 collars 下，$m\ge2$ 的 universal absolute threshold 正是单段 $t\ge\beta_H/2$。有限-system interface histories 的 spatial cutoff limit还涉及 actual boundary operators 是否 bounded、阶数随 cutoff 的增长、counterterms 和 time integrals；(8) 也不能单独完成它。

### 3.3 还没有证明的连续 spatial sewing

正长度 collar、局域点场、sharp spatial partial trace 是不同问题。TTbar 的 Hagedorn 谱不能自动给 local net、point-field domains 或 regulator-independent entropy；改变 operator frame 会改变所谓局域空间代数。我们只完成了[固定 cutoff 的空间态和输运比较](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/sewing-and-observables.md>)。

对相互作用 continuum，所缺的是实际局域 $H_\lambda$、operator/endpoint renormalization、对应 state representation，以及让全 crossing-history sums 与 $a\to0$ 交换的 estimates。$\lambda/a^2\to\infty$ 和真空 derivative 的 $M^5$ accumulation 是已定位的两个具体障碍，不是“数值再大一点”就解决的问题。

## 4. 一个可控的其他 irrelevant deformation：cubic dispersion

为了区分“irrelevant 就无量子理论”和“保留相对论/给定 stress flow 的困难”，可另行定义 free Majorana 的 Lorentz-breaking dimension-four deformation
\[
H_\kappa=H_0+\frac{i\kappa}{2}\int_0^L(R\partial_x^3R-L\partial_x^3L)\,dx,\qquad \kappa\ge0.
\tag{9}
\]
采用同一 CAR，$[\kappa]=L^2$；它只增加空间导数，不增加时间导数，canonical kinetic term 与 graded CPS form 不变。空间边界/corner 条件必须为三阶空间算子重新指定；transparent cut 需匹配相应 derivative histories，不能只保留一个 endpoint value。

固定 NS sector 的 positive modes $k_r=2\pi r/L$（$r=1/2,3/2,\ldots$）有
\[
\varepsilon_r=k_r+\kappa k_r^3>0.
\]
由这些 independent fermion occupation operators 定义的 Hamiltonian 自伴且下有界；Fock domain 上完全可算。等时 vacuum correlations 与 seed 一样，实时 phases 则变为 $e^{-i(k+\kappa k^3)t}$：同一个真空不等于同一种动力学。若用 Hurwitz-zeta prescription 固定 additive vacuum energy，
\[
E_{\rm NS,vac}(\kappa)=-\frac\pi{12L}+\frac{7\pi^3\kappa}{120L^3},
\]
其中 $\zeta(-3,1/2)=-7/960$；这是明定的能量零点方案，不是从熵导出的 universal subtraction。

fermionic product $\prod_r(1+e^{-\beta(k_r+\kappa k_r^3)})^2$ 对每个 $\beta>0$ 收敛（任何固定 parity projection 亦然）；无 TTbar 的 finite Hagedorn threshold。代价很明确：group velocity $1+3\kappa k^2$ 无上界，不保留 relativistic light cone。故它不是 $T\bar T$ 的 UV completion，也不是一般强关联模型，却是实际可量子化、可 finite-history sewing 的 irrelevant control example。第一时间导数的结构说明不存在 higher-time-derivative ghost 问题；不能由此推论它仍是 relativistic UV QFT。

这里还能直接算一个动力学核，而不只列谱。在无限直线上、$t>0,\kappa>0$，
\[
\begin{aligned}
\{R(t,x),R(0,0)\}
&=\int_{\mathbb R}\frac{dk}{2\pi}e^{ik(x-t)-i\kappa k^3t}\\
&=\frac1{(3\kappa t)^{1/3}}\operatorname{Ai}\!\left(\frac{t-x}{(3\kappa t)^{1/3}}\right).
\end{aligned}
\tag{10}
\]
积分按 oscillatory/tempered-distribution 意义理解。Fourier 变量 $u=-(3\kappa t)^{1/3}k$ 给出 Airy 表达式；它满足 $(\partial_t+\partial_x-\kappa\partial_x^3)F=0$，并在 $t\downarrow0$ 分布意义下趋于 $\delta(x)$。Wolfram 的 PDE residual 为 exact zero；独立 reviewer 仅取得 dispersion/CAR 后另行推导，也确认符号、归一化、initial limit 和全空间 support。$x<t$ 时 Airy argument 为正，核虽指数衰减但不为零，故包括 $x<-t$ 的 spacelike 区域也有 graded propagation tails。这是失去 seed relativistic microcausality 的直接检验，而不是仅凭 group velocity 的猜测。

## 5. 文献使用与未解方向

[Kruthoff–Parrikar, arXiv:2006.03054v2](<https://arxiv.org/html/2006.03054>) 的 Hamiltonian/state/operator flow 区分与本研究的问题一致；实际核对 HTML 的定义、state mixing、operator-frame 讨论，不把他们的 cylinder dressed-operator prescription 等同于本文 fixed-seed operators。Hamiltonian flow 与 Lagrangian quantum flow 的 ordering/counterterms 需另证相容。

Hagedorn density 文献的 endpoint 幂次存在容易误引之处，独立报告记录实际 PDF 页面、版本及积分检查；本节 (2) 的证明使用 Ising products 和 momentum control，不依赖一句“partition function 在 Hagedorn 发散”。

可推进的有限问题是二阶局域 counterterm 与 off-diagonal matching；非可积 seed 则应从完整 stress tensor/trace 重建第一 insertion。有限历史定理不要求 integrability，但 continuum existence、relative locality 与 physical observables 不能靠它继承。

对 generic 非共形 seed，连谱的 branch threshold 都不能照搬 (1)。零 momentum Burgers characteristic 给 $E_\lambda(L)=E_0(R)$、$L=R-\lambda E_0(R)$，分支退化条件为 $1-\lambda E_0'(R)=0$。只有 $E_0(R)=-\pi c/(6R)$ 精确成立时才恢复 (1)；thermal-plus-magnetic Ising seed 的完整 vacuum equation of state 必须另算。这个有限可检验路线不要求预设 seed 可积。

**Verified:** 两个符号的代数限制、Ising product 的 heat-trace threshold 及 endpoint moments、bounded Schatten/collar composition、absolute-history 条件与 total-only 反例机制；cubic-dispersion control model 的 CAR 谱/热 trace。**Assumptions:** 指定精确谱和 Ising multiplicities；(9) 明确放弃 Lorentz invariance。**Not verified:** finite-$\lambda$ local TTbar continuum quantization、任意 unbounded boundary field 的 history theorem、cutoff-uniform spatial replicas、非可积 continuum UV completion。
