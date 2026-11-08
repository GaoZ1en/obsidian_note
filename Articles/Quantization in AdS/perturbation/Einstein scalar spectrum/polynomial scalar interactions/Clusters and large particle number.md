# 非手征 cluster、精确秩与大粒子数谱

## 结果与适用对象

固定 global AdS₃ 上的正规序 φ²ᵏ 有两种不同的大 N 问题，不能混为一谈。

1. **保持粒子数的作用**：任意固定激发层 (P,Q) 在 N 足够大后成为同一个有限维空间。取 λ₂ₖ=gN¹⁻ᵏ、减去全基态接触能后，矩阵以 O(N⁻¹ᐟ²) 的算符范数误差趋于一个明确的对角、可加谱。此误差阶一般不能改善。
2. **完整粒子数共振作用**：只要 φ²ᵏ 的改变粒子数通道实际存在，全基态凝聚态便有非零 O(g√N) 线性源。此时上述有限 O(g) 矩阵不是完整物理极限。正确的中心化基态谱测度趋于高斯分布。
3. 对 **N=k+1、k≥3**，保持数作用的全部非手征 primary 正谱来自一个至多 min(P,Q)+1 阶 Gram 矩阵，其秩对每个 Δ>1 均已精确求出。一个显式非手征零模说明：保持数核一般不受完整跨 N 共振保护。

这里的极限首先是**领先阶有效作用的系数极限**，不把它升级为固定 g 下完整 QFT 的统一微扰余项定理。

## 1. 约定与已有 k 体输入

取半径一、signature (−++)，
\[
 ds^2=-(1+r^2)dt^2+\frac{dr^2}{1+r^2}+r^2d\theta^2,
 \qquad m^2=\Delta(\Delta-2),\quad\Delta>1.
\]
中心正则、边界 source-free standard falloff r⁻Δ；使用固定 global 时间、自由 global 真空正规序，无引力、无额外边界多迹耦合。
\[
 S_{\rm int}=-\frac{\lambda_{2k}}{(2k)!}\int\sqrt{-g}:\phi^{2k}:.
\]
令 x=(1+r²)⁻¹、wₚ=(Δ)ₚ/p!、ν=min(p,q)、ℓ=p−q，单位 KG 范数模为
\[
 u_{pq}=\frac{d_{pq}}{\sqrt{2\pi}}e^{-i\omega_{pq}t+i\ell\theta}
 x^{\Delta/2}(1-x)^{|\ell|/2}P_\nu^{(\Delta-1,|\ell|)}(1-2x),
 \quad d_{pq}^2=\frac{w_{\max(p,q)}}{w_{\min(p,q)}},\quad
 \omega_{pq}=\Delta+p+q.
\tag{1}
\]
场展开使用 [aᵢ,aⱼ†]=δᵢⱼ。顶角测度是 r dr dθ，**不是** KG 测度。下文始终采用 (1) 的 Jacobi 相位。

记 Kᴺ⁽ᵏ⁾ 为剥去 λ₂ₖ 的保持数 secular 作用。它是所有 k-subsets 的 k 体作用之和。在恰好 k 粒子的空间，每个 scalar primary grade (a,a) 只有一个活跃方向，系数是
\[
 \kappa_{k,a}=\frac{d_k(a)}{2k!(2\pi)^{k-1}(k\Delta+2a-1)},
 \qquad d_k(a)=\binom{a+k-2}{k-2}.
\tag{2}
\]
其他 multiplicity 方向及 spinning primaries 全零；所有 global descendants 继承该系数。这个输入由实际 bulk coincidence kernel 证明，详见[单顶角正文](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/Polynomial scalar spectrum.md>)。特别地，全基态的保持数能移为 λ₂ₖκₖ,₀ binom(N,k)。

## 2. N=k+1 的非手征小 Gram

### 2.1 物理活跃向量与压缩

设 h=Δ/2。单个 chiral module 用多项式表示：
\[
 L_-z^p=pz^{p-1},\quad L_+z^p=(p+\Delta)z^{p+1},\quad
 \|z^p\|^2=\frac{p!}{(\Delta)_p}.
\]
带标签 n 粒子的 chiral primary multiplicity space 是
\[
 W_n(a)=\ker\Big(\sum_i\partial_{z_i}\Big)\big|_{\deg=a},
 \qquad\dim W_n(a)=d_n(a).
\]
实际 Bose primary 空间为
\[
 \mathcal B_N(P,Q)=\big(W_N(P)\otimes W_N(Q)\big)^{S_N}
 \simeq\operatorname{Hom}_{S_N}(W_N(Q),W_N(P)).
\tag{3}
\]
最后的等同是用实正交基作向量化，不是把 bulk coincidence 换成左右 Bargmann 坐标相等。

在 AdS 原点，uₚq 除 p=q 外全零，且 uₚₚ(0)=(-1)ᵖ/√(2π)。把这个实际评价泛函投影到 k 体 primary 后，活跃态恰为
\[
 c_a=\frac1{\sqrt{d_k(a)}}\sum_{\alpha=1}^{d_k(a)}
 e_{a\alpha}\otimes e_{a\alpha}.
\tag{4}
\]
将它与第 N 个 spectator 耦合到总 (P,Q)，左右 relative levels 分别为 P−a、Q−a。由两 module 的 multiplicity-one 分解，只有 a=0,…,m=min(P,Q) 参与。记所得单位 labelled 态为 uₐ，vₐ=ΠSN uₐ，其中 ΠSN 是正交 Bose symmetrizer。则
\[
 \boxed{K_{k+1}^{(k)}=(k+1)\sum_{a=0}^m\kappa_{k,a}|v_a\rangle\langle v_a|.}
\tag{5}
\]
因此全部非零谱来自
\[
 \boxed{G_{ab}=\sqrt{\kappa_{k,a}\kappa_{k,b}}(\delta_{ab}+kR_{ab}),
 \quad R_{ab}=\langle u_a,\tau u_b\rangle,}
\tag{6}
\]
其中 τ 交换 spectator 与 cluster 内任一粒子。矩阵大小仅 m+1，与大的 Bose primary 维数无关。G 半正定；若 Gz=ρz、ρ>0、z†z=1，则归一化物理本征态为
\[
 \psi=\sqrt{\frac{k+1}{\rho}}\sum_a\sqrt{\kappa_{k,a}}z_a v_a.
\tag{7}
\]
G 的零根是 channel 冗余，不能直接当成整个物理 kernel 的重数。

### 2.2 可执行的有限 Racah 和

剥出共同的 k−1 体 core，令其 chiral primary grade 为 c，双倍权重 α=(k−1)Δ+2c。对三个 module 的变量 (X,Y,Z)，定义
\[
 F_r^{(T)}=\sum_{s=0}^{T-r}(-1)^{T-r-s}\binom{T-r}{s}
 \frac{Z^{T-r-s}}{(\alpha+\Delta+2r)_s}
 (L_{+,X}+L_{+,Y})^s(X-Y)^r,
\tag{8}
\]
其中 L₊,X=X²∂X+αX、L₊,Y=Y²∂Y+ΔY。单项式范数为 i!j!ℓ!/[(α)ᵢ(Δ)ⱼ(Δ)ℓ]。两 module primary 的范数
\[
 n_r(A,B)=\frac{r!(A+B+r-1)_r}{(A)_r(B)_r}
\tag{9}
\]
给出 ‖Fᵣ⁽ᵀ⁾‖²=nᵣ(α,Δ)nT−r(α+Δ+2r,Δ)。

令 Uₐb⁽ᴾ,c⁾ 为归一化 Fₐ−c⁽ᴾ−c⁾(X,Y,Z) 与 Fᵦ−c⁽ᴾ−c⁾(X,Z,Y) 的内积，则
\[
 R_{ab}=\frac1{\sqrt{d_k(a)d_k(b)}}
 \sum_{c=0}^{\min(a,b)}d_{k-1}(c)U_{ab}^{(P,c)}U_{ab}^{(Q,c)}.
\tag{10}
\]
这里所有多项式和均有限。对有理 Δ，去掉规范化平方根后可用一个有理矩阵 M 代替 G，其特征值单位为 1/[2k!(2π)ᵏ⁻¹]。[channel_gram.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/nonchiral-clusters/channel_gram.py>) 实现 (8)–(10)，不调用 bulk/Fock 引擎；其[推导](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/nonchiral-clusters/README.md>) 写出了有理相似变换。

## 3. 全 Δ>1 的非手征秩定理

**定理。** k≥3、N=k+1，令 m=min(P,Q)、J=|P−Q|，则
\[
 \boxed{\operatorname{rank}K_N^{(k)}\big|_{\mathcal B_N(P,Q)}=
 \begin{cases}
 1,&P=Q=0,\\
 m,&J\le1,\ (P,Q)\ne(0,0),\\
 m+1,&J\ge2.
 \end{cases}}
\tag{11}
\]
没有待排除的特殊实质量集合。这个结论不延伸到 k=2,N=3：例如 (P,Q)=(3,1) 的秩为一而非二。

### 3.1 从 channel 到 spectator 算符

不失一般性令 P=m+J、Q=m。记 Πs 为 chiral grade-s primary projector，考虑
\[
 T_r=\Pi_P\sum_{i=1}^N(L_{+,i})^{J+r}(L_{-,i})^r\Pi_Q,
 \qquad 0\le r\le m.
\tag{12}
\]
spectator 算符不作用于 cluster multiplicity。令 ℓ=m−a、A=kΔ+2a，其 reduced matrix element 是
\[
 t_{r,a}=(-1)^J\frac{\ell!(\ell+J)!}{(\ell-r)!^2}
 \frac{n_{\ell-r}(A,\Delta)}{\sqrt{n_\ell(A,\Delta)n_{\ell+J}(A,\Delta)}}
 \quad(r\le\ell),
\tag{13}
\]
r>ℓ 时为零。把 raising operators 移到 bra，分别微分 (X−Y)ℓ 与 (X−Y)ℓ+J 即得此式。
\[
 \operatorname{vec}T_r=N\sum_a\sqrt{d_k(a)}t_{r,a}v_a.
\]
系数矩阵为反三角且对角非零，故两族的 span 完全相同。

### 3.2 一个不依赖质量连续性的多项式证明

coherent primaries fₓ=(∑xᵢzᵢ)Q、gᵧ=(∑yᵢzᵢ)P 满足 ∑xᵢ=∑yᵢ=0，并分别张成全部 primary space。设 tᵢ=xᵢyᵢ、
\[
 h_s=\frac1{s!(\Delta)_s},\qquad
 H_s(t)=\sum_{\sum n_i=s}\prod_i h_{n_i}t_i^{n_i}.
\]
用 L₊†=L₋ 得到精确恒等式
\[
 \langle g_y,T_rf_x\rangle=P!Q!\,H_{m-r}(t)\sum_i y_i^Jt_i^r.
\tag{14}
\]
这里系数先按双线性处理；物理内积再恢复复共轭。

关键是 N≥4 时可以取
\[
 y=(a,b,-a-b,0,\ldots),\quad
 x=\left(\frac ua,\frac vb,-\frac w{a+b},
 -\frac ua-\frac vb+\frac w{a+b},0,\ldots\right).
\tag{15}
\]
在 ab(a+b)≠0 上，两种零和条件均成立，而 t=(u,v,w,0,…) 的前三项独立可调。这避免了对一般 hypersurface 不可约性作额外假设。

假设 (14) 的右侧有关系 ∑r cᵣFᵣ=0，令
\[
 Q(z)=\sum_{r=0}^m c_rH_{m-r}(u,v,w)z^r.
\]

- **J≥2：** (15) 给出 aᴶQ(u)+bᴶQ(v)+(−a−b)ᴶQ(w)=0。三个 a,b 多项式线性独立，所以 Q(u)=0。取最小的非零 cₛ，uˢ 系数为 cₛHₘ₋ₛ(0,v,w)≠0，矛盾。因此 m+1 个方向全独立。
- **J=1：** 得到 Q(u)=Q(v)=Q(w)。置 v=0，再比较最低 u 次数，迫使 c₁=⋯=cₘ=0。唯一关系是 F₀=Hₘ∑yᵢ=0，秩为 m。
- **J=0：** 注意 F₀=NHₘ，不能误成 3Hₘ。在 (15) 上比较 uⁿ¹vⁿ²wⁿ³、n₁+n₂+n₃=m 的系数，关系等价于
  \[
  Nc_0+f(n_1)+f(n_2)+f(n_3)=0,
  \quad f(n)=\sum_{r=1}^n c_r\frac{h_{n-r}}{h_n},\quad f(0)=0.
  \]
  比较 (a,b,m−a−b) 与 (a+b,0,m−a−b)，得到 f(a)+f(b)=f(a+b)，所以 f(n)=An、Nc₀+mA=0。由于 hₙ≠0，这给出至多一个关系。反过来，令 αᵣ=r[zʳ]log ₀F₁(;Δ;z)，生成函数微分恒等式
  \[
  mH_m=\sum_{r=1}^m\alpha_r p_rH_{m-r},\quad p_r=\sum_i t_i^r
  \]
  确实给出一个关系。m≥1 时秩为 m；m=0 时 F₀=N 非零。

结合 (13) 即证 (11)。[独立复核](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/primary-polynomial-rank-review/review.md>) 未收到候选秩公式，另外给出了 scalar 三变量独立性证明；其检验直接展开原约束 x,y 多项式，不使用 channel 程序。

### 3.3 物理零模重数

Bose primary 维数由 Molien 公式给出：
\[
 \sum_{P,Q}D_N(P,Q)s^Pt^Q=
 \sum_{\mu\vdash N}\frac{(1-s)(1-t)}{z_\mu
 \prod_{j\ge1}(1-s^j)^{m_j(\mu)}(1-t^j)^{m_j(\mu)}},
 \quad z_\mu=\prod_jj^{m_j}m_j!.
\tag{16}
\]
所以 primary kernel 维数恰为 Dᴺ(P,Q) 减去 (11)。完整 shell 的正谱和零谱由各 primary 的 descendants 汇总。scalar/spin-one channel 的冗余也分别由 cluster Casimir 求和恒等式和 Πm+1 L₊,total Πm=0 解释。

## 4. 从输入到谱，以及不受保护的非手征零模

输入 φ⁶、N=4、Δ=2、(P,Q)=(2,2)。物理 primary 维数为三，秩为二。算法 (8)–(10) 给出有理小矩阵
\[
 M=\begin{pmatrix}
 52/245&36/343&125/686\\
 9/80&31/56&325/1344\\
 9/14&39/49&271/392
 \end{pmatrix},\qquad
 \chi_M(s)=s\left(s^2-\frac{51}{35}s+\frac{319}{980}\right).
\tag{17}
\]
它虽然不显式对称，但与正 Gram 相似。保持数 primary 能移为
\[
 \boxed{\frac{\lambda_6}{48\pi^2}
 \left\{0,\frac{51-\sqrt{1006}}{70},\frac{51+\sqrt{1006}}{70}\right\}.}
\tag{18}
\]
用 (7) 恢复正谱态。令 βₚq†=aₚq†/√(wₚwq)，显式零态则是
\[
 |Z_k\rangle=(\beta_{00}^\dagger)^{k-3}
 \big[\beta_{00}^\dagger\beta_{02}^\dagger-(\beta_{01}^\dagger)^2\big]
 \big[\beta_{00}^\dagger\beta_{20}^\dagger-(\beta_{10}^\dagger)^2\big]|0\rangle.
\tag{19}
\]
这对所有 k≥3、Δ>1 都是 N=k+1、(2,2) 的唯一 primary 零方向。两个方括号分别是 grades (0,2) 和 (2,0) 的 spinning pair primaries，各自在实际 bulk 两粒子重合时为零；任意 k-subset 至少包含其中一整对，故每个接触项都将 (19) 湮灭。

然而 (18) **不是** Δ=2、E=12、J=0 的完整物理谱。该完整块还包括六基态。在 k=3、Δ=2，
\[
 \|Z_3\|^2=\frac{29}{36},\qquad
 \|(\beta_{00}^\dagger)^6|0\rangle\|^2=720,
\]
且
\[
 \boxed{\langle6_0|V_6|Z_3/\|Z_3\|\rangle
 =\frac{\lambda_6}{56\pi^2\sqrt{145}}\ne0.}
\tag{20}
\]
只需 (19) 的 β₀₀²β₀₂β₂₀ 项即可看到这个 2→4 幅度。它直接反驳“所有非手征接触零模都在跨 N 共振后存活”。先前的手征完整核保护使用了 Q=0 的额外能量算术，不能移植到这里。

## 5. 任意固定激发层的保持数大 N 定理

令非基态 occupations 为 m=(mᵢ)ᵢ≠0，
\[
 \sum p_Im_I=P,\quad\sum q_Im_I=Q,\quad M=\sum m_I\le P+Q.
\]
N≥P+Q 后，以 n₀=N−M 将它们等距识别为同一个有限维空间。取 λ₂ₖ=gN¹⁻ᵏ、
\[
 C_N=\lambda_{2k}\kappa_{k,0}\binom Nk.
\]
则
\[
 \boxed{\lambda_{2k}K_N^{(k)}-C_N\mathbf1
 =\frac{g\kappa_{k,0}}{(k-1)!}
 \sum_{I\ne0}\varepsilon_I^{(k)}m_I+O_{P,Q,k,\Delta}(gN^{-1/2}),}
\tag{21}
\]
误差是该有限空间上的算符范数；
\[
 \varepsilon_{pq}^{(k)}=kR_{pq}^{(k)}-1,
\quad R_{pq}^{(k)}=(k\Delta-1)d_{pq}^2\int_0^1x^{k\Delta-2}(1-x)^{|p-q|}
 [P_\nu^{(\Delta-1,|p-q|)}(1-2x)]^2dx.
\tag{22}
\]
每个 R 是有限 Beta 和、从而是 Δ 的有理函数。**全部极限本征值**就是满足 P,Q 约束的这些 occupation 加和；相同和出现几次，就是其重数。退化时应跟踪谱子空间，而非声称每个有限 N 本征向量唯一趋于某个 occupation。

### 5.1 精确有限 N 矩阵及幂次计数

给定 bra m′、ket m，选择共同非基态 spectators t≤min(m,m′)，令 a=m−t、c=m′−t、s=|a|、r=|c|。有 r,s≤k 的项为
\[
 (K_N^{(k)})_{m'm}=\sum_t
 \frac{\mathcal I(c,a)}{(k-r)!(k-s)!\prod_Ic_I!a_I!}
 \sqrt{(N-M)_{\underline{k-s}}(N-M')_{\underline{k-r}}}
 \prod_{I\ne0}\frac{\sqrt{m_I!m_I'!}}{t_I!}.
\tag{23}
\]
I(c,a) 含 2k 条腿，其中 k−r、k−s 条分别为基态 creation/annihilation legs；其余按 c,a 给定。下划线表示 falling factorial，粒子不足时相应项为零。

乘 λ₂ₖ 后，一个有 d=r+s 条非基态腿的项标度为 gN¹⁻ᵈᐟ²。保持 N 的共振要求总 p、q 分别守恒，所以 d=1 不可能，d=2 只能为同一模的一进一出。d=0 的基态耗损产生 −M，d=2 产生 ∑kRᵢmᵢ，得到 (21)。真正的混合 d≥3，最先在 N⁻¹ᐟ² 出现。对角误差则是 O(N⁻¹)。

[固定层实现](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/large-N-fixed-shell/fixed_shell.py>) 直接实现 (23)，与原 Beta/Fock 矩阵精确相等。

### 5.2 Primaries、可解低模与一个全 N 谱族

在上述等距识别下，
\[
 L_-/\sqrt N\longrightarrow\sqrt\Delta\,b_{10},\qquad
 \bar L_-/\sqrt N\longrightarrow\sqrt\Delta\,b_{01}.
\]
稳定的 kernel 维数和非零奇异值间隙保证 primary projector 也以 O(N⁻¹ᐟ²) 收敛。因此 primary 极限谱只需删除 (1,0)、(0,1) occupations；二者 ε=0，重新加入恰好生成 descendants。primary 维数生成函数为
\[
 \prod_{(p,q)\ne(0,0),(1,0),(0,1)}(1-s^pt^q)^{-1}.
\tag{24}
\]
在每个因子中加入 exp(tεₚq) 权重即可同时记录谱重数。

若 q=0，Rₚ₀=(Δ)ₚ/(kΔ)ₚ。特别地
\[
 \varepsilon_{20}=-\frac{(k-1)\Delta}{k\Delta+1},\quad
 \varepsilon_{11}=\frac{(k-1)[(k-2)\Delta-1]}{k\Delta+1},\quad
 \varepsilon_{21}=\frac{(k-1)(\Delta+2)[(k-3)\Delta-1]}{(k\Delta+1)(k\Delta+2)}.
\tag{25}
\]
φ⁴ 的 radial ε₁₁ 为负，而 k≥3 时它严格为正；所有 k 的 chiral ε₂₀ 都为负。这不是动力学不稳定性的判据。

更强的有限 N 结果是 (P,Q)=(1,1) 的唯一 primary 能移系数
\[
 \boxed{\kappa_{k,0}\left[\binom Nk+
 N\frac{(k-2)\Delta-1}{k\Delta+1}\binom{N-2}{k-2}\right],\qquad N\ge k.}
\tag{26}
\]
证明只需两个归一化态 A=(N−1)₀+1₁₁、B=(N−2)₀+1₁₀+1₀₁。在这个顺序中，减去 κₖ,₀binom(N,k) 后的矩阵为
\[
 \kappa_{k,0}\frac{(k-2)\Delta-1}{k\Delta+1}\binom{N-2}{k-2}
 \begin{pmatrix}N-1&-\sqrt{N-1}\\-\sqrt{N-1}&1\end{pmatrix}.
\]
primary 是 [√(N−1)A−B]/√N，另一方向是 ground-module descendant。这个式子已在有理函数域 ℚ(Δ) 中交叉验证。

KG 范数还立即给出
\[
 0<R_{pq}^{(k)}<\frac{k\Delta-1}{\Delta+p+q},\qquad
 \varepsilon_{pq}^{(k)}\to-1\quad(p+q\to\infty),
\tag{27}
\]
后一个单频率极限对 spin 一致；它不意味着大激发多粒子矩阵的一致收敛。

### 5.3 为什么 N⁻¹ᐟ² 不能被省略

取 k=2、非共振无理数 Δ*=(√13−1)/2。在 primary grade (2,2)，单模 22 和双模 11+11 满足
\[
 \varepsilon_{22}=2\varepsilon_{11}=-\frac2{\sqrt{13}}.
\]
三条 excitation legs 的非零顶角把该二重极限根裂成
\[
 \frac{g\kappa_{2,0}}{1!}\left[-\frac2{\sqrt{13}}
 \mathbin{\pm}\frac{\sqrt2(\sqrt{13}-2)}{3\sqrt{13N}}+O(N^{-1})\right].
\tag{28}
\]
所以连本征值误差都不总是 O(N⁻¹)，这与跨 N 共振无关。

固定层限制同样必要。在 chiral 10+10↔20 通道，(21) 的无量纲非对角项含
\[
 \frac{(k-1)\sqrt{\Delta(\Delta+1)/2}}{k\Delta+1}\,
 \frac{\sqrt{m_{10}(m_{10}-1)(m_{20}+1)}}{\sqrt N}.
\tag{29}
\]
取 m₁₀=2L、m₂₀=L、P=4L，L∼N¹ᐟ³，此项仍为 O(1)，尽管 M/N→0。其它 chiral 项同号，不能抵消它。因此“激发粒子比例趋零”不足以推出 growing-shell 算符范数收敛。

### 5.4 φ⁴ 的 defect gap 与更高偶次的稠密点谱

这里先在每个固定层取 N→∞，再对所有 primary grades 作直和。令 D∞ 的对角值为 dₘ=∑εᵢmᵢ，其自然自伴定义域是 ∑ₘ|dₘ|²|ψₘ|²<∞。这是**减去共同接触能后的相互作用 defect**，不是包括自由能的总 Hamiltonian。

对于 k=2，二体作用满足
\[
 K_2\le\kappa_{2,1}\mathbf1+(\kappa_{2,0}-\kappa_{2,1})\Pi_{\rm lowest},
 \qquad\frac{\kappa_{2,1}}{\kappa_{2,0}}=\frac{2\Delta-1}{2\Delta+1}.
\]
归一化 symmetrized |0,(p,q)⟩ 在最低 module 上的概率是
\[
 2r_pr_q,\qquad r_p=\frac{(\Delta)_p}{(2\Delta)_p}.
\]
对非 unit 模，它至多为 (Δ+1)/(2Δ+1)；另一方面该态接触期望值是 2κ₂,₀Rₚq。因此
\[
 \boxed{\varepsilon_{pq}^{(2)}\le-\frac{2\Delta}{(2\Delta+1)^2}<0
 \quad((p,q)\ne00,10,01).}
\tag{29a}
\]
任意非空 primary occupation 都保留这个离零的统一间隙。

k≥3 则完全不同：A=ε₁₁>0、−B=ε₂₀<0。无理 Δ 时 A/B=(k−2)−1/Δ 为无理数，非负整数和 mA−nB 在 ℝ 中稠密。若 Δ 有理，写 A=u/v>0 为最简分数；primary configuration (11)ᵛ(p0)ᵘ 的 defect 为 ukRₚ₀>0，且随 p→∞ 趋零。将这些任意小正值与固定负值 ε₂₀ 作非负整数加和，同样得到 ℝ 中的稠密集。所以
\[
 \boxed{\operatorname{spec}D_\infty=\mathbb R\quad(k\ge3,\ \Delta>1).}
\tag{29b}
\]
它仍有完备 occupation eigenbasis，所有向量的谱测度都是纯点型；不能把“点谱稠密”误称为出现绝对连续谱。

例如 Δ=a/b 最简时，a 个 11 模与 ((k−2)a−b) 个 20 模恰给出零 defect。这是充分例子，不是必要条件：无理质量也可能有精确零，已知 k=3 的 ε₂₂ 在 Δ³−4Δ²−3Δ−2=0 的唯一实根 Δ≈4.7245767276 处为零。

这不使总 AdS 能量变成稠密谱。令 β=gκₖ,₀/(k−1)!，S=P+Q；由 εᵢ>−1 和每个 primary excitation 的 grade 至少为二，在 0≤β<2 时，这个形式上的总一阶极限满足
\[
 S+\beta D_\infty\ge(1-\beta/2)S.
\tag{29c}
\]
每层有限维，所以总算符仍有 compact resolvent。[补充证明与核验](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/large-N-fixed-shell/large-N-fixed-shell.md#L497>) 明确区分了这个 iterated-limit 结论、(29) 的非一致性及完整共振作用。

## 6. 完整共振：线性源与高斯谱测度

### 6.1 φ⁶、Δ=2 的决定性反例

令 E=2N、J=0，N 是 reference ground occupation，而不是要求完整块固定总粒子数。取 λ₆=g/N²，
\[
 C_N=\frac{g(N)_{\underline3}}{1440\pi^2N^2},\qquad c=\frac1{6720\pi^2}.
\]
完整首阶 Hamiltonian 含
\[
 \lambda_6c\,[a_{22}^\dagger a_{00}^\dagger a_{00}^4+\mathrm{h.c.}],
\tag{30}
\]
因为
\[
 \int u_{22}^*u_{00}^*u_{00}^4\,rdrd\theta
 =\frac1{8\pi^2}\int_0^1x^4(3-12x+10x^2)dx
 =\frac1{280\pi^2}.
\]
除以 4! 得到 (30)。它把 |N₀⟩ 耦合到 |(N−3)₀;1₂₂⟩，精确幅度为
\[
 \frac{gc}{N^2}(N-3)\sqrt{N(N-1)(N-2)}=gc\sqrt N[1+O(N^{-1})].
\tag{31}
\]
后者总粒子数 N−2，却属于同一自由 (E,J) 块。

进一步直接枚举 ground column 得到
\[
 \boxed{\operatorname{Var}_{|N_0\rangle}(H_N)
 =\frac{g^2c^2}{N^4}(N)_{\underline4}\left(N+\frac{17}{2}\right),\quad N\ge4.}
\tag{32}
\]
除 (31) 外恰有四个 pair-production 输出，其平方幅度之和在 λ₆²c²(N)₄ 单位为 23/2；单 excitation 输出贡献 N−3。这同时核验了 Bose 因子。

### 6.2 一般 φ²ᵏ：算术条件恰好决定源是否存在

对 E=NΔ、J=0 的完整块，仍取 λ₂ₖ=gN¹⁻ᵏ。定义有限指标集
\[
 \mathcal J=\{j\in\mathbb Z:1\le j\le k-2,\ j\Delta\in\mathbb Z\}.
\]
其对应线性 modes 为 Iⱼ=(jΔ,jΔ)。设
\[
 \gamma_j=\frac{(2\pi)^{1-k}}{2(k\Delta-1)(k-j-1)!(k+j)!}
 \frac{(1-(k-1)\Delta)_{j\Delta}}{(k\Delta)_{j\Delta}}.
\tag{33}
\]
则完整作用含
\[
 \lambda_{2k}\gamma_j a_{I_j}^\dagger
 (a_{00}^\dagger)^{k-j-1}a_{00}^{k+j}+\mathrm{h.c.}
\]
其 ground matrix element 为
\[
 \lambda_{2k}\gamma_j
 \sqrt{(N)_{\underline{k+j}}(N-2j-1)_{\underline{k-j-1}}}
 =g\sqrt N\,\gamma_j[1+O(N^{-1})].
\tag{34}
\]
(33) 来自 Rodrigues 积分
\[
 \int_0^1x^{k\Delta-2}P_\nu^{(\Delta-1,0)}(1-2x)dx
 =\frac{(1-(k-1)\Delta)_\nu}{(k\Delta-1)(k\Delta)_\nu}.
\]
对 ν=jΔ、j≤k−2，分子每个因子严格为负，故不可能为零。j=k−1 的 one-to-many 项则恰好包含零因子，按选择定则消失。

若 Δ=a/b 为最简分数，𝒥 非空当且仅当 b≤k−2；无理 Δ 时为空。这**正好等价于**已证明的偶次顶角改变粒子数条件。因此一旦有这种共振，就不能把全基态当作完整 secular 理论的 stationary condensate。

### 6.3 正性分类与第一个完整共振块的全部非零谱

**定理。** 取 λ₂ₖ>0。完整一阶 secular 作用在**每个**有限 (E,J) 块都半正定，当且仅当不存在改变粒子数的共振，即 Δ 无理，或 Δ=a/b 最简且 b>k−2。若 b≤k−2，则第一个出现负本征值的自由能量是
\[
 E_*=(k+b)\Delta,\qquad J=0,
\tag{34a}
\]
这个完整块恰有一个负本征值；不是每一个更低能或其它角动量块都有负谱。

证明并可进一步求出完整非零谱。令 r=k−b、s=k+b。任何非零 cross-N 顶角都有 |δN|=2j、j≥b；其高粒子数侧至少有 k+j≥s 个粒子。spectators 或激发只会提高自由能，所以 E<E* 的所有完整块都是保持数正作用的直和。

在 E=E*，唯一 cross-N 作用是无 spectator 的 r↔s。N=s 侧只有全基态；N=r<k 的对角接触作用严格为零。N=r 的 grade (a,a) 中只有一个活跃 scalar primary 能与全基态耦合。将其相位选为正耦合，记为 |Aᵣ(a)⟩。由一般 r↔s coincidence 公式，这两个态上的**不变**矩阵，在单位 λ₂ₖ c₂ₖʳᵃᵈ、c₂ₖʳᵃᵈ=(2π)¹⁻ᵏ/2 下为
\[
 \begin{pmatrix}0&t_*\\t_*&d_*\end{pmatrix},\quad
 d_*=\frac{\binom sk}{k!(k\Delta-1)},\quad
 t_*^2=\frac{\binom{a+r-2}{r-2}}{r!s!(s\Delta-1)^2}>0.
\tag{34b}
\]
因此
\[
 z_\pm=\frac{d_*\pm\sqrt{d_*^2+4t_*^2}}2,\qquad z_-<0<z_+,
 \quad
 |\psi_\pm\rangle=\frac{t_*|A_r(a)\rangle+z_\pm|s_0\rangle}
 {\sqrt{t_*^2+z_\pm^2}}.
\tag{34c}
\]
这里使用的是完整活跃 primary，而不是把某个 two-state Fock compression 擅自当作不变子空间。

剩余非零谱完全由分子 a 的 parity 决定：

- **a 为奇数：** 允许 N=s−2bℓ。除 N=s 外均小于 k，所以整个完整块只有 λ₂ₖc₂ₖʳᵃᵈ z₋、λ₂ₖc₂ₖʳᵃᵈ z₊ 两个非零本征值。
- **a 为偶数：** b 必为奇数，允许 N=s−bℓ。额外有 N=k、P=Q=a/2，且它与上述 r,s sectors 的 field parity 相反。它贡献 λ₂ₖκₖ,c，c=0,…,a/2，各一次；其它态全零。

这些是带重数的谱列表；若不同正谱条目偶然相等，其重数相加。若完整 Fock 维数为 D，零重数为 D−2−1ₐ偶(a/2+1)。完整非零谱无需对大矩阵求根，只需 (34b) 和已知的最小 k 体谱。

例如 k=3、Δ=2 的 E*=8 恰好重现首阶正文的完整九维答案：两个 κ₃,c 正根以及 z²−2z/15−1/2352 的两根。非整数例 k=4、Δ=3/2 的 E*=9 完整块也是九维，在 λ₈/(16π³) 单位下
\[
 \chi(z)=z^7\left(z^2-\frac z8-\frac1{92160}\right).
\tag{34d}
\]
[阈值谱程序](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/code/even_threshold_spectrum.py>) 实现整个分类、零重数和完整特征多项式；`--check-full` 另建完整 Fock 矩阵作精确比较。[Fresh 独立推导](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/first-resonant-threshold/theorem.md>) 在没有阈值候选的情况下得到同一全指标结论，并以独立 Jacobi/Bose 构造检查六个完整阈值块和 99 个阈值以下块。这是首阶系数正性的定理，不是说总 Hamiltonian 有负能量或不稳定。

### 6.4 精确的极限对象

以下假设 g≠0 且 𝒥 非空。若 𝒥 为空，全基态是完整首阶作用的精确本征态；相同标度下其中心化谱测度为 δ₀，而不是正方差高斯，也不满足下述窗口权重趋零结论。

以非基态 occupations 嵌入完整能量块，基态 occupation 由能量约束重建：
\[
 n_0=N-\sum_{I\ne0}\frac{\omega_I}{\Delta}m_I.
\]
仅保留 n₀ 为非负整数及总 spin 为零的 configurations。每个固定的容许 configuration 在 N 足够大后都存在。辅助 bI 必须连同相应 reservoir change 理解；单个任意 bI 不一定保持这条 lattice，(33) 中的 combinations 则保持。

在有限 excitation core 上，令
\[
 X_N=\frac{H_N-C_N}{g\sqrt N},\qquad
 C_N=\lambda_{2k}\kappa_{k,0}\binom Nk,
\]
便有
\[
 X_N\longrightarrow X=\sum_{j\in\mathcal J}\gamma_j(b_{I_j}+b_{I_j}^\dagger).
\tag{35}
\]
证明仍是非基态腿数计数：中心化 d=0 项在此标度趋零，d=1 只留下 (33)，d≥2 项至少再小 N⁻¹ᐟ²。每个固定次幂只到达有限多 configurations/mode labels，其集合与 N 无关，因此所有固定基态矩都收敛：
\[
 \langle X_N^{2s}\rangle\to(2s-1)!!\,\sigma^{2s},\quad
 \langle X_N^{2s+1}\rangle\to0,\quad
 \sigma^2=\sum_{j\in\mathcal J}\gamma_j^2>0.
\tag{36}
\]
Gaussian moment problem 是 determinate，所以基态谱测度弱收敛到 𝒩(0,σ²)。对 φ⁶、Δ=2，σ²=c²。固定 O(|g|) 宽度、中心 Cᴺ 的窗口在 g√N 标度下缩到一点，故其全基态谱权重趋零。

这不是整个增长矩阵的范数极限，也不保证逐个 eigenvalue 收敛。φ⁶ 情形还可由共同的本质自伴 finite-particle core 得到 strong-resolvent convergence；[完整共振推导](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/independent/large-N-resonant/README.md>) 保存了论证、全部 O(g) quadratic correction、无限 radial hopping chains 及精确三四阶矩。

## 7. 证据、边界与真正仍开放的问题

**Assumptions:** 固定背景、指定 standard 边界与自由真空正规序；(5)–(29c) 针对保持数作用，(30)–(36) 针对完整共振作用；所有大 N 声明均为已说明次序下的领先阶系数极限。

**Verified:**

- 非手征秩的证明由物理 channel、显式三角 intertwiner 和全质量多项式引理闭合，不依赖有限质量采样。独立 channel 与原 bulk/Fock 构造的谱已交叉核对。
- 固定层定理有精确有限 N 母矩阵 (23)、primary projector 极限、(28) 的尖锐反例及 (29) 的增长层反例。
- 完整正性分类和首个负谱块的全部谱由粒子数下界及 spectator-free channel 闭合；[270 项精确 compression 检查](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/results/even_positivity_exact_01.json>) 与另行 fresh 构造的完整阈值块交叉验证了阶乘、范数和负惯性。
- Gaussian 是完整第一阶系数的谱测度定理；不是从拟合曲线推断，也不是对纯实场动力学稳定性的声明。
- 初始独立推导与后续协作扩展分开记录于[验证说明](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/Validation and reproduction.md>)。父流程的 [155 项交叉证书](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/polynomial scalar interactions/results/extended_structures_exact_01.json>) 补充连接了各算法的单位、基与退化空间。

**Not verified / 尚未闭合：** 任意 N>k+1 的完整非手征 kernel/rank；一般大 excitation 的全多体谱；共同增长 N、P、Q 的正向统一极限定理；完整共振理论中变形 stationary/periodic 凝聚态的构造及其 Hessian；高阶 QFT 余项和零模保护。尤其不能围绕尚未消除线性源的全基态直接宣称得到了 Bogoliubov 稳定性。
