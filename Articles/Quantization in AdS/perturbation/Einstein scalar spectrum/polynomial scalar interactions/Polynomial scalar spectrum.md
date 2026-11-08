# 固定 Global AdS₃ 上多项式标量的多粒子谱

## 结果与当前范围

本文研究固定背景上的实标量，不含动力学引力。现已得到一般单顶角的**完整一阶有限块算法**、粒子数改变共振的存在性分类、真正 k 体接触算符在恰好 k 粒子空间中的全部非零谱，以及手征多体核与一族可完全求解的非零谱。

最重要的区别是：**φ⁴ 的一阶粒子数守恒并非一般偶次相互作用的性质。** φ⁶ 在整数 Δ 可以混合不同粒子数；正 λ₆ 的完整一阶矩阵甚至可以有负本征值。只保留 3→3 接触作用会漏掉它们。另一方面，手征接触零模在这些特殊共振点仍然是完整一阶零模，证明见 §8.4。

对作用量中 −λ₂ₖφ²ᵏ/(2k)! 的约定，真正 k 体作用在 N=k 的 scalar-primary 通道只有一个非零方向，系数为

$$\begin{align}
\boxed{\kappa_{k,a}=\frac{\binom{a+k-2}{k-2}}
 {2k!(2\pi)^{k-1}(k\Delta+2a-1)},\qquad a=0,1,\ldots .} \tag{0.1}
\end{align}$$

本征能移为 λ₂ₖκₖ,ₐ。相同系数作用于该 primary 的整个自由 global module。特别地，φ⁶ 的三体非零谱为

$$\begin{align}
\kappa_{3,a}=\frac{a+1}{48\pi^2(3\Delta+2a-1)} \longrightarrow\frac1{96\pi^2}. \tag{0.2}
\end{align}$$

这与 φ⁴ 的 1/a 衰减、φ⁸ 的线性增长不同；高激发行为不是所有接触作用共享的。

以上是**领先阶系数及有限代数构造的定理**。当存在跨粒子数共振时，(0.1) 是保持粒子数的子算符谱，必须与其它粒子数空间合并后才是完整物理首阶谱。φ³ 的一阶矩阵恒为零；其重整化二阶有限矩阵、全 Δ ground binding 与 Δ=2 全指标二体谱已在后续 [二阶研究](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/Cubic second-order spectrum.md>) 完成。后续的 [非手征与大 N 研究](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/Clusters and large particle number.md>) 已完成 N=k+1 全质量秩、任意固定层极限和完整共振的高斯测度；[奇次扩展](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/Odd interactions beyond cubic.md>) 完成 φ⁵ 的必要 matching 和一般奇次有限多体族。任意 N>k+1 的非手征核与共同增长极限仍未分类。

来源与复算记录分开保存；原 φ⁴ 笔记没有改写。所用仓库提交为 `670abb1bb4b644a162278415ef94dde09cdeb016`，工作树全局有既存修改。实际使用的 φ⁴ 核心文件对该提交无 tracked 改动，详见 [源文与证据地图](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/phi4-audit/phi4-source-evidence-map.md>)。

## 1. 作用量、模和相位

取 AdS 半径 1、signature (−++)、universal-cover 时间 t∈ℝ：

$$\begin{align}
ds^2=-(1+r^2)dt^2+\frac{dr^2}{1+r^2}+r^2d\theta^2, \qquad \theta\sim\theta+2\pi.
\end{align}$$

中心正则，采用 source-free standard quantization，φ=O(r⁻Δ)，Δ>1，并保持相应 differentiated falloffs。边界时钟固定，无有限边界多迹耦合。作用量为

$$\begin{align}
S_0=-\frac12\int\sqrt{-g}\,[(\nabla\phi)^2+\Delta(\Delta-2)\phi^2], \qquad S_{\rm int}=-\frac{\lambda_n}{n!}\int\sqrt{-g}\,:\phi^n:_\Delta. \tag{1.1}
\end{align}$$

正规序使用同一 Δ 的 global 自由真空。本文的一阶真空与一体项因正规序为零；高阶并不自动保持这一结论，必须另外给出重整化条件。

令 x=(1+r²)⁻¹，I=(p,q)，ν=min(p,q)，ℓ=p−q，b=|ℓ|。定义

$$\begin{align}
w_j=\frac{(\Delta)_j}{j!},\qquad J_I(x)=P_\nu^{(\Delta-1,b)}(1-2x),\qquad d_I^2=\frac{(\Delta+\nu)_b}{(\nu+1)_b} =\frac{w_{\max(p,q)}}{w_{\min(p,q)}}.
\end{align}$$

采用与仓库相同的模：

$$\begin{align}
u_{pq}(t,r,\theta)=\frac{d_I}{\sqrt{2\pi}} e^{-i(\Delta+p+q)t+i(p-q)\theta} x^{\Delta/2}(1-x)^{b/2}J_I(x). \tag{1.2}
\end{align}$$

KG 内积为

$$\begin{align}
(u,v)=i\int\frac{r\,dr}{1+r^2}\,d\theta (u^*\partial_tv-v\partial_tu^*). \tag{1.3}
\end{align}$$

Jacobi 范数给出

$$\begin{align}
\int_0^1x^{\Delta-1}(1-x)^bJ_I(x)^2dx =\frac1{(\Delta+2\nu+b)d_I^2},
\end{align}$$

因此 (uᵢ,uⱼ)=δᵢⱼ。场与自由 Hamiltonian 为

$$\begin{align}
\phi=\sum_I(a_Iu_I+a_I^\dagger u_I^*),\quad [a_I,a_J^\dagger]=\delta_{IJ},\quad H_0=\sum_{p,q}(\Delta+p+q)a_{pq}^\dagger a_{pq}.
\end{align}$$

这与 [formalism 的量子化和 AdS 谱约定](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L54-L82>) 一致。相互作用 Hamiltonian 的测度是 **r dr dθ**，不是 KG 测度。

若改用 y=1−x=sin²ρ 的正 Jacobi 模，须保留

$$\begin{align}
P_\nu^{(\Delta-1,b)}(1-2x) =(-1)^\nu P_\nu^{(b,\Delta-1)}(1-2y).
\end{align}$$

如将右侧 (−1)ᵛ 从模中删除，则振子必须同时作 a_repo=(−1)ᵛa_y 的重相位。本文所有显式本征向量使用 (1.2)。

仓库 φ⁴ 作用量也是 −λφ⁴/4!，所以 **λ₄=λ，无额外换算因子**。其常用 c₀=1/[8π(2Δ−1)] 与本文 κ₂,₀ 相同；旧代码常输出 K/c₀，本文通用代码的剥离单位则见 §2，二者不可混用。

恢复半径 L 时，三维标量的工程量纲为 $[\phi_{\rm phys}]=L^{-1/2}$；本文的无量纲耦合是 $\lambda_n=\lambda_{n,\rm phys}L^{3-n/2}$，物理能量为 E/L。φ⁶ 的耦合在三维是无量纲的，但这不等于其量子 β 函数或高阶修正为零。

## 2. 一般顶角：有限 Beta 和

设 C 是 r 个 creation 标签的多重集，A 是 s 个 annihilation 标签的多重集，r+s=n；eᵢ=uᵢ(t=0)。定义有序模积分

$$\begin{align}
\mathcal I(C;A)=\int r\,dr\,d\theta
 \prod_{I\in C}e_I^*\prod_{J\in A}e_J. \tag{2.1}
\end{align}$$

角积分先要求 ∑Ｃℓ=∑Ａℓ，否则为零。此条件使 B=½∑Ｃ∪Ａ|ℓ| 为非负整数。若

$$\begin{align}
\prod_{I\in C\cup A}J_I(x)=\sum_{h=0}^{\sum\nu_I}j_hx^h, \qquad c_n^{\rm rad}=\frac{(2\pi)^{1-n/2}}2,
\end{align}$$

则 r dr=−dx/(2x²) 给出

$$\begin{align}
\boxed{\mathcal I(C;A)=c_n^{\rm rad}\prod_Id_I \sum_h j_h\,B\left(\frac{n\Delta}2-1+h,B+1\right).} \tag{2.2}
\end{align}$$

为避免 Beta 函数名称与整数 B 混淆，可直接计算

$$\begin{align}
B(z,B+1)=\frac{B!}{z(z+1)\cdots(z+B)},\qquad z=\frac{n\Delta}2-1+h. \tag{2.3}
\end{align}$$

N≥3、Δ>1 保证积分在边界和中心收敛。这里只是一个顶角，没有隐藏的内部模 UV 求和。对有理 Δ，剥去 cₙʳᵃᵈ 和单模平方根后，所有元素均为有理数；对形式 Δ，它们是 Δ 的有理函数。

展开正规序多项式后，若 cᵢ、aᵢ 是各模的 creation/annihilation 次数，**完整系数**为

$$\begin{align}
V_n=\lambda_n\sum_{\sum(c_I+a_I)=n} \frac{\mathcal I(c;a)}{\prod_Ic_I!a_I!} \prod_I(a_I^\dagger)^{c_I}a_I^{a_I}. \tag{2.4}
\end{align}$$

这里没有再乘 n!，它已与作用量的 1/n! 抵消。r=s=k 项因此为 λ₂ₖ/(k!)² 乘有序 k→k 模和；r≠s 的 Hermitian-conjugate 项不额外倍乘单个矩阵元。

## 3. 完整有限块与本征态恢复

### 3.1 简并空间必须包括哪些粒子数？

对给定 E,J，列举所有

$$\begin{align}
0\le N\le\lfloor E/\Delta\rfloor,\qquad P_N=\frac{E-N\Delta+J}2\in\mathbb Z_{\ge0},\qquad Q_N=\frac{E-N\Delta-J}2\in\mathbb Z_{\ge0}. \tag{3.1}
\end{align}$$

每个 N 的基是 ∑m=N、∑pm=Pₙ、∑qm=Qₙ 的 Bose occupation states。其并集才是完整的自由 (E,J) 块。无理 Δ 时自由简并不跨 N；有理 Δ 则不能提前固定 N。

完整首阶算符为

$$\begin{align}
K_{E,J}^{(n)}=P_{E,J}(V_n/\lambda_n)P_{E,J}. \tag{3.2}
\end{align}$$

等价的 secular 投影是有限外态上的长时间平均，而非任意 Δ 下的 2π 时间平均，更非 global AdS in/out S-matrix。

### 3.2 有理基和矩阵元

使用非正交归一、但彼此正交的代数基

$$\begin{align}
|\mathbf m\rangle_B=\prod_{p,q} \left(\frac{a_{pq}^\dagger}{\sqrt{w_pw_q}}\right)^{m_{pq}}|0\rangle, \qquad G_{\mathbf m}=\prod_{p,q}\frac{m_{pq}!}{(w_pw_q)^{m_{pq}}}. \tag{3.3}
\end{align}$$

固定输入 m 和输出 m′，对每个共同 spectator 多重集 t，令 a=m−t、c=m′−t。其长度由

$$\begin{align}
|t|=\frac{|m|+|m'|-n}2
\end{align}$$

唯一确定，但**所有满足逐模 t≤min(m,m′) 的 t 都要累加**。记 RΔ(c,a) 为 (2.2) 中的径向 Beta 和、没有 dᵢ 和 cₙʳᵃᵈ，则矩阵的该项为

$$\begin{align}
\frac{(K_{E,J}^{(n)})_{m'm}}{c_n^{\rm rad}} \supset R_\Delta(c,a) \prod_{p,q}\left[ \frac{w_{\max(p,q)}^{c_{pq}}}{c_{pq}!} \frac{m_{pq}!}{(m_{pq}-a_{pq})!a_{pq}!\,w_{\min(p,q)}^{a_{pq}}} \right]. \tag{3.4}
\end{align}$$

每项还须满足能量与角动量投影。公式来自 dᵢ√(wₚw_q)=w_max 与 dᵢ/√(wₚw_q)=1/w_min，因而所有平方根相消。

[通用精确引擎](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/code/contact_blocks.py>) 直接实现 (2.2)–(3.4)，不导入旧 φ⁴ 引擎。它输出 A=K/cₙʳᵃᵈ 和 G，必须满足

$$\begin{align}
GA=A^TG,\qquad \widehat A=G^{1/2}AG^{-1/2} \text{ 为实对称矩阵}.
\end{align}$$

对有理 Δ，分解特征多项式 χ_A(z)=∏fᵢ(z)ᵐⁱ。每个不可约 fᵢ 定义一个数域，在该域中求 ker(A−zᵢI)；每个实嵌入给出一个能移 cₙʳᵃᵈ zᵢ 和重数 mᵢ。这是不需要根式公式的精确代数解。代码保存这些数域本征向量。若 x 是 B 基中的向量，则归一化 occupation 基中的系数为

$$\begin{align}
\alpha_m=\frac{\sqrt{G_m}\,x_m}{\sqrt{x^\dagger Gx}}. \tag{3.5}
\end{align}$$

### 3.3 对称性压缩

自由单粒子表示为 D⁺_{Δ/2}⊗D⁺_{Δ/2}。在 (3.3) 的单粒子基中

$$\begin{align}
L_-|p,q\rangle_B=p|p-1,q\rangle_B,\qquad L_+|p,q\rangle_B=(p+\Delta)|p+1,q\rangle_B,
\end{align}$$

右手同理。它们的多体作用是逐粒子求和。

本阶 invariant local action 的 Ward 恒等式

$$\begin{align}
[H_0,L_+^{(1)}]+[V_n/\lambda_n,L_+^{(0)}]=L_+^{(1)}
\end{align}$$

在自由能量 grade +1 上投影后，给出 [K,L⁽⁰⁾_+]=0；其它升降同理。边界项由上述快衰减消失。故可先求完整块中两个 lowering map 的共同核，再对 primary multiplicity space 压缩；descendants 的能移不变。在特殊有理 Δ，**primary multiplicity space 也可能跨 N**。

对固定 N，shell 维数的生成函数是

$$\begin{align}
\sum_{N,P,Q\ge0}h_N(P,Q)t^Nx^Py^Q =\prod_{p,q\ge0}(1-tx^py^q)^{-1}. \tag{3.6}
\end{align}$$

N>0 时 primary 维数为 hₙ(P,Q)−hₙ(P−1,Q)−hₙ(P,Q−1)+hₙ(P−1,Q−1)。这是表示论压缩，不是用对称性替代顶角积分。

## 4. 粒子数改变：存在性完全分类

对 r creation、s annihilation，r+s=n，令 δN=r−s。能量和角动量同时要求

$$\begin{align}
\sum_Cp-\sum_Ap=\sum_Cq-\sum_Aq=-\frac{\delta N\Delta}2. \tag{4.1}
\end{align}$$

因此 δNΔ∈2ℤ 是必要条件。

### 4.1 定理：所有共振单腿通道消失

0↔n 因频率为正不能共振。对 1↔(n−1)，设高能单模为 I₀，另外 n−1 模为 Iᵢ。令

$$\begin{align}
m=\frac{(n-2)\Delta}2\in\mathbb Z_{>0},\qquad A=\frac{\sum_i|\ell_i|-|\ell_0|}2\in\mathbb Z_{\ge0}.
\end{align}$$

共振给出 ν₀=m+A+∑ᵢνᵢ。把径向积分按单模 Jacobi 权重写成

$$\begin{align}
\int_0^1 dx\,x^{\Delta-1}(1-x)^{|\ell_0|}J_{I_0}(x) \left[x^{m-1}(1-x)^A\prod_iJ_{I_i}(x)\right].
\tag{4.2}
\end{align}$$

括号内是次数至多 ν₀−1 的多项式。Jacobi 正交性使 (4.2) 严格为零。不存在算术共振时当然也无 secular 项。这一证明适用于所有 n≥3、Δ>1，而非整数 Δ 的有限扫描。

### 4.2 定理：两侧至少两粒子时，算术允许的通道确实存在

取 s>r≥2，K=(s−r)Δ/2∈ℕ。令 s 个 annihilation 模全为 ground，r 个 creation 模中两个为 (K,0)、(0,K)，其余为 ground。这些模的 Jacobi 次数全为零，故

$$\begin{align}
\mathcal I=\frac{(2\pi)^{1-n/2}}2 \frac{(\Delta)_K\,\Gamma(n\Delta/2-1)}{\Gamma(K+n\Delta/2)}>0. \tag{4.3}
\end{align}$$

所以 (4.1) 不只是形式上的算术条件：对 r,s≥2 它足以保证**存在**非零顶角。它不保证每组标签都非零；Jacobi 抵消仍会令个别允许元素消失。

若 Δ=a/b 是最简正有理数，则：

- **偶次 n：** number-changing 一阶通道存在，当且仅当 n≥2b+4。
- **奇次 n：** 任意一阶通道存在，当且仅当 a 为偶数且 n≥b+4；此时 b 必为奇数。
- 无理 Δ：只有偶次的 n/2→n/2 通道；奇次首阶矩阵为零。

例如 φ⁴ 从不改变粒子数；φ⁶ 恰在整数 Δ 可改变粒子数；φ³ 的一阶算符恒为零；φ⁵ 恰在偶整数 Δ 有 2↔3 混合。

这是一阶有效算符的选择定则，不是完整理论新增了粒子数 U(1) 对称性。

## 5. 真正 K 体接触：完整的最小粒子数非零谱

这里先研究保持粒子数的部分，并剥去 λ₂ₖ：

$$\begin{align}
T^{(k)}=\Pi_0\frac1{(k!)^2}\int r\,dr\,d\theta (\phi^-)^k(\phi^+)^k,\qquad \phi^+=\sum_Ia_Iu_I,\quad \phi^-=(\phi^+)^\dagger. \tag{5.1}
\end{align}$$

### 5.1 乘积映射与谱密度

在恰好 k 粒子空间定义 coincidence map

$$\begin{align}
(C_k\psi)(X)=\frac1{\sqrt{k!}}\langle0|(\phi^+(X))^k|\psi\rangle.
\end{align}$$

Wick 定理和完整 Fock 基给出 CₖCₖ† 的 reproducing kernel 是 WΔ(X,Y)ᵏ。在 Euclidean 中心时间分离 τ>0，仅 p=q 的模在中心非零，直接求和得

$$\begin{align}
W_\Delta(\tau;0,0)=\frac1{2\pi}\sum_{j\ge0}e^{-(\Delta+2j)\tau} =\frac1{2\pi}\frac{q^\Delta}{1-q^2},\quad q=e^{-\tau}. \tag{5.2}
\end{align}$$

AdS invariance 把它延拓为同一 geodesic invariant 的函数。因此

$$\begin{align}
W_\Delta^k=(2\pi)^{1-k}\sum_{a\ge0} \binom{a+k-2}{k-2}\,W_{k\Delta+2a}. \tag{5.3}
\end{align}$$

这里用的只是 (1−q²)⁻(k−1) 的二项展开。所有系数正。它证明 Cₖ 的像在每个 δₐ=kΔ+2a 只含**一个 scalar module**，无 spinning primary；domain 中 scalar primary 可以有多重数，但只有一个线性组合存活。

令

$$\begin{align}
A_{k,a}=(2\pi)^{1-k}\binom{a+k-2}{k-2}.
\end{align}$$

则 Cₖ 在这个活跃方向上的奇异值为 √Aₖ,ₐ。这一步的伴随是相应 positive-energy 表示的 Hilbert adjoint，不是任意选取的空间 L² adjoint。

### 5.2 为什么空间积分不混合不同 Scalar Modules？

相同 ω,ℓ 而质量参数 δ、δ′ 不同的径向模满足

$$\begin{align}
\partial_r(rf\partial_rR)+ \left(\frac{r\omega^2}{f}-\frac{\ell^2}r-r\delta(\delta-2)\right)R=0, \quad f=1+r^2.
\end{align}$$

交叉相乘相减并积分。中心正则和 δ,δ′>1 令 Wronskian 边界项消失，因此 δ≠δ′ 时

$$\begin{align}
\int r\,dr\,d\theta\,u_{\delta,pq}^*u_{\delta',p'q'}=0 \quad(\omega=\omega',\ \ell=\ell'). \tag{5.4}
\end{align}$$

δ=δ′ 时，由径向方程对 m²=δ(δ−2) 求导、结合 KG 归一化，得到 Hellmann–Feynman 恒等式

$$\begin{align}
\int r\,dr\,d\theta\,|u_{\delta,pq}|^2 =\frac{\partial\omega}{\partial m^2} =\frac1{2(\delta-1)}, \tag{5.5}
\end{align}$$

与 descendant 标签无关。这个积分不是 KG 范数。

在 N=k 上，(5.1)=k!⁻¹ Cₖ†(spatial integral)Cₖ。将 (5.3) 和 (5.5) 代入即证明 (0.1)。

### 5.3 秩、零模和高激发

固定 N=k、总激发 (P,Q) 时，活跃 scalar primary 的指标为 0≤a≤min(P,Q)，每个贡献一个 descendant。因此

$$\begin{align}
\boxed{\operatorname{rank}T^{(k)}_{k;P,Q}=\min(P,Q)+1,\qquad \dim\ker T^{(k)}=h_k(P,Q)-\min(P,Q)-1.} \tag{5.6}
\end{align}$$

完整非零谱就是 {κₖ,ₐ:0≤a≤min(P,Q)}，各一个；scalar-primary 块 (a,a) 只有秩 1，其余 primary 块秩 0。每个活跃态可用 §3 的 lowering kernel 和任一非零 primary 矩阵列恢复；无需预先知道 CG 表。

K=2 的 κ 随 a 严格递减。k≥3、Δ>1 时随 a 严格递增，故保持粒子数的 N=k full shell 的最小正本征值对 k≥3 恒为 κₖ,₀。固定 k、a→∞ 时

$$\begin{align}
\kappa_{k,a}\sim \frac{a^{k-3}}{2^{k+1}k!(k-2)!\pi^{k-1}}. \tag{5.7}
\end{align}$$

这只控制一阶系数，不保证固定 λ 下高激发的微扰展开一致。φ⁸ 及更高次的增长尤其要求单独检查微扰参数。

## 6. 一般 R↔S 接触的活跃通道

(5.3) 同时压缩 number-changing 顶角。对 r,s≥2，记 Bₘ,ₐ=binom(a+m−2,m−2)。若

$$\begin{align}
M=r\Delta+2a=s\Delta+2b,
\end{align}$$

则两个归一化活跃 scalar primaries 的矩阵元为

$$\begin{align}
\boxed{\frac{\langle s,b|V_{r+s}|r,a\rangle}{\lambda_{r+s}} =\frac{(2\pi)^{1-(r+s)/2}\sqrt{B_{r,a}B_{s,b}}} {2\sqrt{r!s!}(M-1)}.} \tag{6.1}
\end{align}$$

可独立选择每个活跃态的相位使该值为正。每个共同 descendant 上系数相同；不同 M 在共振空间积分中正交。推导是

$$\begin{align}
V_{s\leftarrow r}=\frac{\lambda_{r+s}}{\sqrt{r!s!}} C_s^\dagger(\text{spatial integral})C_r
\end{align}$$

与 (5.3)–(5.5)。这一通道公式并不直接对有 spectators 的态逐个相乘；必须作 Bose lift，等价于 §3 的共同 spectator 求和。

R=1 时 coincidence 像仅有 M=Δ，而 s>1 的像从 sΔ 开始，因此没有匹配通道。这给出了 §4.1 选择定则的另一个表示论解释。

## 7. 一个从输入到完整谱的 φ⁶ 例子

取 Δ=2、n=6、E=8、J=0。由 (3.1)，完整块包含

| N | (P,Q) | shell 维数 |
|---|---|---|
| 1 | (3,3) | 1 |
| 2 | (2,2) | 5 |
| 3 | (1,1) | 2 |
| 4 | (0,0) | 1 |

因此是 **9 维**，而非仅三粒子的 2 维矩阵。正规序没有 N=1,2 的 3→3 对角作用。

在归一化的 N=2 basis

$$\begin{align}
\{|00,22\rangle,|01,21\rangle,|02,20\rangle, |10,12\rangle,|11,11\rangle_{\rm norm}\}
\end{align}$$

中，活跃 scalar primary 为

$$\begin{align}
|\chi\rangle=\frac15\left( \sqrt2|00,22\rangle-\sqrt6|01,21\rangle +\sqrt2|02,20\rangle-\sqrt6|10,12\rangle +3|11,11\rangle_{\rm norm}\right). \tag{7.1}
\end{align}$$

符号使用 (1.2)；它被两个自由 lowering operators 同时湮灭。令 |4₀⟩=(a₀₀†)⁴|0⟩/√24。由 (6.1) 或直接 Beta 积分，

$$
\frac1{\lambda_6}
\begin{pmatrix}
\langle\chi|V|\chi\rangle&\langle\chi|V|4_0\rangle\\
\langle4_0|V|\chi\rangle&\langle4_0|V|4_0\rangle
\end{pmatrix}
 =\frac1{8\pi^2}
 \begin{pmatrix}0&1/(28\sqrt3)\\1/(28\sqrt3)&2/15\end{pmatrix}.
\tag{7.2}
$$

其中 ground diagonal 也是 binom(4,3)κ₃,₀=1/(60π²)。2×2 矩阵的行列式为 −1/2352，故正耦合时恰有一个负本征值。它并不反驳保持粒子数的正性，因为完整 normal-ordered φ⁶ 不是正算符。

在单位 λ₆/(8π²) 下，整个 9 维块的特征多项式为

$$\begin{align}
\boxed{\chi(z)=z^5(z-1/30)(z-1/21) (z^2-2z/15-1/2352).} \tag{7.3}
\end{align}$$

两个混合根为

$$\begin{align}
z_\pm=\frac1{15}\pm\sqrt{\frac1{225}+\frac1{2352}},
\end{align}$$

归一化态正比于 [1/(28√3)]|χ⟩+z±|4₀⟩。另外两个非零值来自 N=3：κ₃,₀ 的 descendant 和 κ₃,₁ 的 scalar primary。五个零值包括一粒子态和四个不活跃两粒子方向。

[完整机器输出](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/results/phi6_D2_E8_J0.json>) 保存按 (3.3) 定义的全部 9×9 矩阵、Gram、不可约因子数域和本征空间，因而这个例子不依赖仅给特征多项式的拟合。

## 8. 任意 N 的组合、手征核与显式非零谱

### 8.1 K 体 Lift 与正性

保持粒子数的作用在 N 粒子空间为

$$\begin{align}
T_N^{(k)}=\sum_{S\subset\{1,\ldots,N\},\ |S|=k}T_S^{(k)}. \tag{8.1}
\end{align}$$

若 N<k，它为零。若 N≥k，每一项是上述真正 k 体作用在相应粒子槽位上的嵌入。对于正 λ₂ₖ，

$$\begin{align}
\ker T_N^{(k)}=\bigcap_{|S|=k}\ker C_{k,S}. \tag{8.2}
\end{align}$$

等价地，在固定能量态上 φ⁺(X)ᵏ|ψ⟩ 对每个 X 都为零。这是 physical bulk coincidence 条件。非手征时不能未经证明把它替换成抽象 Bargmann 左右坐标的同时相等；例如两粒子 (a,a) primary 在后者上为零，却有非零接触能移。

Ground condensate 的对角系数恰为 binom(N,k)κₖ,₀。非共振 Δ 下它也是本征值，且自由 descendants 有相同系数；特殊共振点可与低粒子数态混合，如 §7。

### 8.2 手征：接触核成为聚簇理想

在 Q=0 的固定 N 空间，所有单粒子 q=0。令 z=sinρ e^{iθ}，则

$$\begin{align}
u_{p0}(0,z)=\frac{\sqrt{w_p}}{\sqrt{2\pi}} (1-|z|^2)^{\Delta/2}z^p.
\end{align}$$

因此 Hilbert 空间可用 N 变量齐次对称多项式 F(z₁,…,zₙ) 表示，单槽内积满足 ∥zᵖ∥²=p!/(Δ)ₚ。由于正测度，

$$\begin{align}
\boxed{\ker T_{N;P,0}^{(k)}= \{F\in\mathbb C[z_1,\ldots,z_N]^{S_N}_P:
 F(z,\ldots,z,z_{k+1},\ldots,z_N)=0\}.} \tag{8.3}
\end{align}$$

同时，(5.6) 在 Q=0 上说明每个 k 槽作用是 κₖ,₀ 乘投影到其最低 SU(1,1) module：

$$\begin{align}
T_{N}^{(k),\rm chiral}=\kappa_{k,0}\sum_{|S|=k}\mathsf P_S. \tag{8.4}
\end{align}$$

这些投影通常不交换。已知核的 Jack 基不等于非零谱也被同一个可积 Hamiltonian 对角化。

### 8.3 已发表聚簇理想定理的应用：精确计数

本节与以下手征结果均取 k≥2。用 s=k−1。FJMM 的 [Theorem 4.2 与 admissibility 条件](https://arxiv.org/html/math/0112127v1#S4.SS1) 表明 (8.3) 的理想有 admissible Jack 基：把分拆补零到 N 项，要求

$$\begin{align}
\mu_i-\mu_{i+s}\ge2\quad(1\le i\le N-s),\qquad \alpha_{\rm Jack}=-k. \tag{8.5}
\end{align}$$

其文中参数 β=1/α=−1/k；互素条件 gcd(k,1)=1 自动成立。这里是对已发表定理的应用，不主张重新证明该 Jack 定理。

记 Zₙ⁽ᵏ⁾(t) 为手征核的维数生成函数，则

$$\begin{align}
Z_N^{(k)}(t)=\sum_{\mu\ \mathrm{admissible}}t^{|\mu|},\qquad \sum_{P\ge0}\operatorname{rank}T_{N;P,0}^{(k)}t^P =\prod_{j=1}^N(1-t^j)^{-1}-Z_N^{(k)}(t). \tag{8.6}
\end{align}$$

同一计数也有有限的 fermionic 和式（[Ardonne–Kedem–Stone，§III.4、§IV](https://arxiv.org/html/cond-mat/0409369v1#S4)）：

$$\begin{align}
Z_N^{(k)}(t)=\sum_{\substack{m_1,\ldots,m_s\ge0\\
\sum_{i=1}^sim_i=N}} \frac{t^{\sum_{i,j=1}^s\min(i,j)m_im_j-N}}
 {\prod_{i=1}^s(t)_{m_i}},\qquad (t)_m=\prod_{j=1}^m(1-t^j). \tag{8.7}
\end{align}$$

文献中的 level 为 s，origin-vanishing 参数取 l=0。本文没有附加原点约束。核为平移不变理想，N>0 时 primary 核的生成函数是 (1−t)Zₙ⁽ᵏ⁾(t)。

若 N=sa+b、0≤b<s，最小 admissible 分拆给出第一个零模所在次数

$$\begin{align}
\boxed{P_{\min}=s a(a-1)+2ab,} \tag{8.8}
\end{align}$$

在这个次数核恰为一维。显式态可取：把 N 个变量分成 s 个大小相差至多 1 的组，对每组取 Vandermonde 平方，再对所有分组求和。任意 k=s+1 个坐标相等时，至少两个落在同组，故它为零；在实互异坐标上各项非负且某项为正，故不是零多项式。

φ⁴ 给出 Vandermonde² 的熟悉次数 N(N−1)。φ⁶ 则有

$$\begin{align}
P_{\min}(N=2m)=2m(m-1),\qquad P_{\min}(N=2m+1)=2m^2.
\end{align}$$

例如 N=4 的首个 φ⁶ 零模在 P=4，可取

$$\begin{align}
(z_1-z_2)^2(z_3-z_4)^2+ (z_1-z_3)^2(z_2-z_4)^2+ (z_1-z_4)^2(z_2-z_3)^2.
\tag{8.9}
\end{align}$$

φ⁶ 的三体零模远多于 φ⁴ 的两体零模；它们的核不是同一个理想。

### 8.4 手征零模在特殊跨 N 共振下仍然存活

设 Q=0 的 N 粒子态满足 φ⁺(X)ᵏ|ψ⟩=0。若最终 N′>N，共振要求

$$\begin{align}
Q_{N'}=\frac{E-J-N'\Delta}2=\frac{(N-N')\Delta}2<0,
\end{align}$$

不可能。若 N′<N，则 2k 次顶角必须有 s>k 个 annihilators；但 φ⁺(X)ˢ|ψ⟩=0 已由 k 次湮灭条件推出。故所有跨 N 首阶矩阵元也为零。

因此 (8.3) 的态是**完整共振 φ²ᵏ 算符**的零模，对所有 Δ>1 成立。这里不能把结论扩大到手征非零态：在允许跨 N 共振的特殊 Δ 和量子数下，它们可以与较低 N 的非手征空间混合。也未证明这些零模受到高阶保护。

若同时加入若干偶次顶角，最小 k 的手征聚簇核包含于所有更高 k 的核。因此这些态是各顶角的共同首阶零模；对数守恒的正系数组合，核恰等于这些核的交集。特殊共振点的完整组合矩阵未必正，不能仅靠正性排除额外抵消零模。

### 8.5 N=K+1：所有手征非零谱可解

对 N=k+1，固定 total degree P 的保持粒子数手征矩阵，其全部非零本征值为

$$\begin{align}
\boxed{\kappa_{k,0}\left[1+k(-1)^d \frac{(\Delta)_d}{(k\Delta)_d}\right], \qquad d=0,2,3,\ldots,P,} \tag{8.10}
\end{align}$$

各贡献一个 degree-P descendant；P=0,1 时只有 d=0。d=1 的 Bose-symmetrized primary 恒为零，不是多出一个物理零模。于是 rank(P)=P（P≥1），rank(0)=1。

构造如下。对每个被留出的粒子 j，将其余 k 粒子耦合到最低 module，并与 j 耦合成 degree-d primary gⱼ,𝒹。定义

$$\begin{align}
\prod_{i\ne j}(1-tz_i)^{-\Delta} =\sum_{m\ge0}h_m^{(\Delta)}(z_{i\ne j})t^m,
\end{align}$$

则可取

$$\begin{align}
g_{j,d}=\sum_{m=0}^d(-1)^m\binom dm z_j^{d-m} \frac{h_m^{(\Delta)}(z_{i\ne j})}{(k\Delta)_m/m!}. \tag{8.11}
\end{align}$$

其 lowering derivative 为零。不同 j 的归一化重叠为

$$\begin{align}
\frac{\langle g_{i,d},g_{j,d}\rangle}{\|g_{j,d}\|^2} =(-1)^d\frac{(\Delta)_d}{(k\Delta)_d}\quad(i\ne j).
\end{align}$$

故对称和 ∑ⱼgⱼ,𝒹 是投影和 (8.4) 的本征态，给出 (8.10)。完整性可由 coincidence 限制的像证明：在 k 个坐标等于 z、另一个为 y 时，令 x=(kz+y)/(k+1)、r=y−z，限制环为 ℂ[x,r²,r³]。每个 degree d=0 或 d≥2 只有一个平移不变 image 方向，因而无遗漏的正谱。

对 φ⁶，这解出了 N=4 的所有保持粒子数手征非零值。Δ=2 时除 ground 值 4κ₃,₀ 外，d=2,3,4,5,6 的比值依次为 10/7、11/14、47/42、13/14、23/22。原始 KG/Beta/Fock 构造也逐块验证了它们。

D→∞ 时 (8.10) 趋向 κₖ,₀，带有交替符号的 O(d⁻⁽ᵏ⁻¹⁾Δ) 修正。这是一个精确的 k-particle-cluster 加 spectator 阈值。它不是任意 N 的 cluster 分解定理。

### 8.6 两个全 N 非零族与固定激发的大 N 标度

取 N≥max(k,3)，记 Sⱼ=∑ᵢzᵢʲ。两个一维 primary 空间的代表为

$$\begin{align}
F_2=S_2-\frac{S_1^2}{N},\qquad F_3=S_3-\frac{3S_1S_2}{N}+\frac{2S_1^3}{N^2}.
\end{align}$$

它们被 D₋=∑ᵢ∂ᵢ 湮灭。相应本征值为 κₖ,₀ε₂、κₖ,₀ε₃，其中

$$\begin{align}
\boxed{\epsilon_2=\binom Nk- \frac{N\Delta+1}{k\Delta+1}\binom{N-2}{k-2},} \tag{8.12}
\end{align}$$

$$\begin{align}
\boxed{\epsilon_3=\binom{N-1}{k} +\binom{N-1}{k-1} \frac{(N-k)(N-2k)(\Delta+1)(\Delta+2)} {(N-1)(N-2)(k\Delta+1)(k\Delta+2)}.} \tag{8.13}
\end{align}$$

为直接证明第一式，定义 k 槽的方差

$$\begin{align}
V_S=\sum_{i\in S}z_i^2-\frac1k\left(\sum_{i\in S}z_i\right)^2.
\end{align}$$

投影到该 cluster 的最低 module 给出

$$\begin{align}
\mathsf P_SF_2=F_2-\frac{k(\Delta+1/N)}{k\Delta+1}V_S, \qquad \sum_{|S|=k}V_S=\frac Nk\binom{N-2}{k-2}F_2.
\end{align}$$

相加即为 (8.12)。第二式可在 (z₁,z₂,…,zₙ)=(x,0,…,0) 求值：不含第一个粒子的 cluster 贡献原系数；含它的 cluster 用最低 module 重建比例 (Δ)₃/(kΔ)₃。因为 degree-three primary 空间为一维，这个系数就是本征值，而非只算了期望值。

每个 F𝒹 的 D₊ 后裔具有同一系数。N=k 时两式为零；N>k 时为正。对 φ⁶，ε₂=binom(N,3)−(N−2)(NΔ+1)/(3Δ+1)，而 N=6 的 cubic-primary 系数 ε₃=10 与 Δ 无关。

固定 k,Δ、N→∞ 时，ground 值 κₖ,₀binom(N,k) 为 O(Nᵏ)，这两个谱族相对于 ground 的差为 O(Nᵏ⁻¹)：

$$\begin{align}
\binom Nk-\epsilon_2 \sim\frac{\Delta}{(k\Delta+1)(k-2)!}N^{k-1},
\end{align}$$

$$\begin{align}
\binom Nk-\epsilon_3 \sim\frac{1}{(k-1)!} \left[1-\frac{(\Delta+1)(\Delta+2)}{(k\Delta+1)(k\Delta+2)}\right]N^{k-1}. \tag{8.14}
\end{align}$$

本节给出有证明的固定低激发大 N 例子；任意固定层的稳定矩阵及 O(N⁻¹ᐟ²) 误差已在后续 [大 N 研究](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/Clusters and large particle number.md>) 推出，共同增长层的一致余项仍未建立。它指出一个物理上自然的联合标度：令 $\lambda_{2k}=gN^{1-k}$，则 ground 的首阶每粒子能移趋于 $g\kappa_{k,0}/k!$，上述相对 ground 的低激发能移保持有限、为 O(g)。这给出了 mean-field 极限的首阶候选，而非固定 g 下全阶极限已经存在的证明。固定非零 λ 时则不能把 N→∞ 的系数渐近当成一致微扰谱。

这里以及 (8.10) 的物理闭合条件仍是：排除跨 N 共振，或明确只研究保持粒子数的子算符。

另外，一个直接反例阻止机械搬用旧 φ⁴ 的特殊态构造：N=4、P=4、Δ=2 时，quartic 的 elementary-symmetric-polynomial descendant 子空间维数 4 且不变；φ⁶ 把其像扩展为维数 5。精确矩阵与秩证书保存在 [独立手征研究](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/chiral/independent_derivation.md#L411-L422>)。这只是对那一个迁移猜想的反例，不是不可积性的证明。

## 9. 奇次相互作用与尚需推进的谱问题

§4 已完全决定奇次顶角何时存在一阶矩阵。φ³ 恒无一阶 secular 项；φ⁵ 在 Δ=2 的 E=6,J=0 完整块则有

$$\begin{align}
\operatorname{spec}K^{(5)}_{6,0} =\left\{\frac1{40\sqrt6\pi^{3/2}}, -\frac1{40\sqrt6\pi^{3/2}},0,0\right\}. \tag{9.1}
\end{align}$$

因此“奇次作用从二阶起”只有在不存在一阶共振的条件下才成立。

当 PVP=0 时，第二阶必须研究

$$\begin{align}
H_{\rm eff}^{(2)}=PVQ(E_0-QH_0Q)^{-1}QVP+P\delta H^{(2)}P, \quad Q=1-P, \tag{9.2}
\end{align}$$

其中 P 是**完整**自由简并块，不能让零分母偷偷进入中间态和。真空、一体和连通多体部分必须分开；正规序单个顶角并不消除两个顶角之间的 UV 问题。后续 [φ³ 二阶正文](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/Cubic second-order spectrum.md>) 已把 (9.2) 推进到明确反项、全质量有限特殊函数矩阵及全指标二体解析谱；本篇保留单顶角首阶结构为主线。

后续已经推进的结果与仍开放的问题是：

1. φ³ 已有完整二阶矩阵与 Δ=2 的全部 pair-primary 谱；一般 Δ 的简式与任意 N 的闭式交换谱仍开放。φ⁵ 的必要反项与有限 quartic matching 已在 [奇次扩展](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/Odd interactions beyond cubic.md>) 明确，并求得每个奇数 n 的有限最高多体族；不能照搬 φ³ 的 UV 有限性。
2. N=k+1 的非手征小 Gram 和全 Δ>1 秩已由实际 bulk 活跃态、Racah 重耦合和多项式独立性证明，见 [cluster 研究](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/Clusters and large particle number.md>)；N>k+1 的一般分类仍开放，不将手征 Jack 理想误推广。
3. 任意固定激发层的大 N 系数极限、defect gap 对比及完整共振的 Gaussian 谱测度已有证明；固定 N 的一般高激发多体谱、共同增长的正向一致极限仍未分类。
4. 多个偶次顶角组合的非零谱、共同核以外的抵消零模，以及不交换 cluster 投影对可积性的障碍。

所有上述能量式均是固定标签的微扰系数。不主张已经构造连续相互作用 QFT 的共同自伴域，或证明大 N／高激发下余项一致。精确有限检验和独立复核的具体范围见 [验证说明](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/Validation and reproduction.md>)。
