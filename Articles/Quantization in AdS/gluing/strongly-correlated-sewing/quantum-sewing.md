# 强关联量子 sewing：有限系统的严格构造与反例

## 结果与对象

**有限自旋系统的非微扰 amplitude sewing 成立，但需要完整的界面时间历史与 crossing interactions；由局域性直接推出静态 Markov／marginal sewing 不成立。** 本文给出独立构造、收敛证明、Ising／Potts 的精确 transfer realization，以及 replica 恒等式。它不是把既有 BV–BFV 定理换名；本地结果的实际输入边界见 [基线说明](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/local-baseline.md>)。

所有 logarithms 为自然对数，\(\hbar=k_B=1\)。Hilbert 空间正定，Hamiltonian 自伴。有限晶格 spacing 暂取 \(a=1\)，\(\beta\ge0\)；连续极限时恢复 \(a\)，不能把 \(\beta\)、系统长度与 cutoff 混成同一极限。

须区分三种问题：

1. **Kinematic algebra sewing：**独立矩阵代数如何嵌入整个系统。
2. **Amplitude/dynamics sewing：**由区域 Hamiltonians、接口作用和未闭合边界 indices 构造 \(e^{-\beta H}\)。
3. **State recovery：**给定若干 reduced states，能否局部恢复一个指定的 global state。

第三种失败不否定第二种；第一种成功也没有证明第三种。

## 1. 独立定义 regional 和 global 对象

有限顶点集 \(\Lambda=L\sqcup R\)，每点 \(\mathcal H_x\cong\mathbb C^{q_x}\)。规定

\[
\mathcal H_L=\bigotimes_{x\in L}\mathcal H_x,\quad
\mathcal A_L=B(\mathcal H_L),\qquad
\mathcal H_R=\bigotimes_{x\in R}\mathcal H_x,\quad
\mathcal A_R=B(\mathcal H_R).
\]

给定 local interaction rule \(h_X=h_X^*\)，独立定义

\[
H_L=\sum_{X\subset L}h_X,\quad H_R=\sum_{X\subset R}h_X,
\quad V=\sum_{X\cap L\ne\varnothing,\,X\cap R\ne\varnothing}h_X,
\]
\[
H_{\Lambda}^{\rm dir}=\sum_{X\subset\Lambda}h_X
=H_0+V,\qquad H_0=H_L\otimes1+1\otimes H_R.
\]

Global target 是由同一 local rule 直接定义的矩阵，不用 sewn answer 定义它。若有超过最近邻的 interactions，所有 crossing supports 都计入 \(V\)，不能只保留几何上最近的 bond。

**命题 1（kinematics）。**
\(\mathcal A_L\otimes\mathcal A_R\to B(\mathcal H_L\otimes\mathcal H_R)\)，\(A\otimes B\mapsto A\otimes B\)，是 \(*\)-isomorphism，kernel 为零、image 为全部矩阵代数。证明：两边的 matrix units 一一对应。有限维无 tensor-norm 歧义。

这项命题不含状态或 dynamics。相同两份 bare algebras 允许 \(V=0\)、铁磁 bond、反铁磁 bond、twist 等不同 global theories。必须先给 \(V\)，否则问题欠定。本例没有 gauge constraints；不能据此推广到 gauge theory 或 continuum local von Neumann factors。

## 2. 全界面历史的 exact sewing

有限维保证可以写 operator decomposition

\[
V=\sum_{\mu=1}^{r}A_\mu\otimes B_\mu,
\qquad C=\sum_\mu\|A_\mu\|\,\|B_\mu\|<\infty.
\]

系数吸收进 \(A_\mu\) 或 \(B_\mu\)。单个因子不必 self-adjoint，总和 \(V\) 必须 self-adjoint。分解非唯一，最后得到的 operator 不依赖分解。

对 \(0<\tau_1<\cdots<\tau_n<\beta\) 定义独立区域的未归一化 operator-valued history

\[
K_L(\boldsymbol\mu,\boldsymbol\tau)=
e^{-(\beta-\tau_n)H_L}A_{\mu_n}
e^{-(\tau_n-\tau_{n-1})H_L}\cdots A_{\mu_1}e^{-\tau_1H_L},
\]

\(K_R\) 同式，把 \(H_L,A\) 换成 \(H_R,B\)。零阶是 \(e^{-\beta H_L}\)、\(e^{-\beta H_R}\)。保留所有 initial/final matrix indices；也可以事后与指定边界态配对，或再取 trace。

**定理 2（有限系统的全历史 sewing）。** 仅由上述区域数据定义

\[
K_\#(\beta)=\sum_{n=0}^{\infty}(-1)^n
\sum_{\mu_1,\ldots,\mu_n}
\int_{0<\tau_1<\cdots<\tau_n<\beta}
K_L(\boldsymbol\mu,\boldsymbol\tau)\otimes
K_R(\boldsymbol\mu,\boldsymbol\tau)\,d^n\tau .
\tag{2.1}
\]

它对每个有限 \(\beta\) 在 operator norm 绝对收敛，并且

\[
K_\#(\beta)=e^{-\beta H_{\Lambda}^{\rm dir}}.
\tag{2.2}
\]

没有小 \(V\)、高温或 gap 假设；“非微扰”在此意为收敛到 exact matrix exponential，而非仅作为形式 power series 使用。

**证明。** 置 \(E_*=\lambda_{\min}(H_L)+\lambda_{\min}(H_R)\)。因为所有时间段非负且总长为 \(\beta\)，每个区域的 propagator norm 的乘积至多 \(e^{-\beta\lambda_{\min}(H_a)}\)。对 \(\boldsymbol\mu\) 求绝对和再积分得到

\[
\sum_{\boldsymbol\mu}\int\|K_L\otimes K_R\|
\le e^{-\beta E_*}\frac{(\beta C)^n}{n!}.
\tag{2.3}
\]

由指数级数得绝对收敛。把 tensor factors 合成，(2.1) 的第 \(n\) 项恰为 \(H_0,V\) 的第 \(n\) 个 Duhamel term。逐次代入独立矩阵恒等式

\[
e^{-\beta(H_0+V)}=e^{-\beta H_0}
-\int_0^\beta e^{-(\beta-t)H_0}V e^{-t(H_0+V)}dt
\]

并用同一阶乘界使 remainder 趋零，即得 (2.2)。也可由积分方程的唯一解证明。□

保留到阶 \(N\) 的误差有显式界

\[
\|K_\#-K_\#^{(N)}\|
\le e^{-\beta E_*}\sum_{n>N}\frac{(\beta C)^n}{n!}
\le e^{-\beta E_*+\beta C}\frac{(\beta C)^{N+1}}{(N+1)!}.
\tag{2.4}
\]

这是可检验的收敛界，不是高效算法保证：随 \(\beta\)、体积、cut 长度或 \(a^{-1}\) 增长，界可很差。固定阶截断一般也不保持 positivity；只有 exact sum 或另行指定的 positive approximant 保证这一点。各项 histories 不是 positive product states，权重也不是概率；(2.1) 不是 convex separable decomposition，因此不蕴含无纠缠。

### 2.1 多界面的结合性及必要信息

**定理 3（有限 joint histories 的顺序独立性）。** 对有限区域图、有限个 crossing interactions 作同样构造，在各区域保留所有尚未闭合接口的**混合多时刻 histories**。对任意最终保留的外部 indices，所有 admissible 中间收缩次序产生同一 operator。

证明：令 \(C=\sum_e\sum_\mu\prod_{a\in e}\|A_{e\mu,a}\|\)，有限 hyperedge 也允许。各接口各自的 ordered-time simplex 的乘积可按所有插入时间的 shuffles 分解成全局 simplex；相同时间的边界为 measure zero。每个 regional factor 必须按共同时间顺序排列，不把非对易 operators 交换。绝对界仍是 (2.3)，故 Fubini 与绝对可和级数允许重组。最后每一种次序都给独立定义的同一 \(e^{-\beta H}\)。□

**不能无证书采用的压缩：**若把中间 cluster 换成 partition function、若干 marginals 或 separate one-interface responses，却不保留重建 joint histories 的资料，定理 3 就不适用。这里不宣称“所有有限编码／静态输入都不足”：完整 Hamiltonian 加外部 operators 本身就是 histories 的有限编码；已知温度的 full-rank Gibbs matrix 加完整 operator data 也可由 \(H=-\beta^{-1}\log\rho+\mathrm{constant}\) 恢复 dynamics，但绝对 amplitude 仍需能量零点／partition normalization。问题是丢失必需信息，而不是表示中出现有限个参数。

## 3. Positive transfer realization：Ising 与三态 Potts

### 3.1 统一约定与 factor-of-two

\(q=2,3\)，\(Z|s\rangle=\omega^s|s\rangle\)，\(X|s\rangle=|s+1\bmod q\rangle\)，\(\omega=e^{2\pi i/q}\)，故 \(ZX=\omega XZ\)。取

\[
H_q=-J\sum_{\langle jk\rangle}\sum_{k'=1}^{q-1}(Z_jZ_k^\dagger)^{k'}
-h\sum_j\sum_{k'=1}^{q-1}X_j^{k'},\qquad J,h>0.
\tag{3.1}
\]

\(q=2\) 给标准 transverse-field Ising \(-J\sum ZZ-h\sum X\)；\(q=3\) 给 \(-J\sum(ZZ^\dagger+\mathrm{h.c.})-h\sum(X+X^\dagger)\)。不能将 \(q=3\) 的 h.c. 写法不加修改用于 \(q=2\)：后者会把标准 Ising 的整份 Hamiltonian 乘二。

PBC 时 \(N\ge3\)，含 \((N-1,0)\) bond；OBC 时只含 \((j,j+1),0\le j<N-1\)。数值生产数据用 PBC，OBC 只作小矩阵对照。

### 3.2 精确单步 kernel 与 classical sewing

置 \(B=\sum_{\langle jk\rangle,k'}(Z_jZ_k^\dagger)^{k'}\)，\(F=\sum_{j,k'}X_j^{k'}\)，\(\delta>0\)。正定 Strang step

\[
T_\delta=e^{\delta J B/2}e^{\delta h F}e^{\delta J B/2}
\]

的时间单点 kernel 可精确求出。因 \(\sum_{k'=1}^{q-1}X^{k'}=\mathbb J-I\)，其中 \(\mathbb J\) 是全一矩阵，

\[
e^{\delta h(\mathbb J-I)}
=e^{-\delta h}\left[I+\frac{e^{q\delta h}-1}{q}\mathbb J\right]
=C_t e^{K_t\delta_{s',s}},
\]
\[
C_t=e^{-\delta h}\frac{e^{q\delta h}-1}{q},\qquad
K_t=\log\frac{e^{q\delta h}+q-1}{e^{q\delta h}-1}.
\tag{3.2}
\]

最后的等式是逐 matrix entry 的表达。另有 \(\sum_{k'=1}^{q-1}(Z_jZ_k^\dagger)^{k'}=q\delta_{s_j,s_k}-1\)。令 \(N_b\) 为 bond 数，\(K_s=q\delta J\)，得到

\[
\langle\boldsymbol s'|T_\delta|\boldsymbol s\rangle
=C_t^N e^{-\delta JN_b}
\exp\left[\frac{K_s}{2}\sum_{\langle jk\rangle}
(\delta_{s'_j,s'_k}+\delta_{s_j,s_k})
+K_t\sum_j\delta_{s'_j,s_j}\right].
\tag{3.3}
\]

这就是明确归一化的 anisotropic classical Potts row kernel。每一步保留完整 row configurations，有限 lattice sewing 是有限指标求和，结合性严格成立。一个 separator 的全部**Euclidean history**通常远大于某个时刻的 separator spin。

在 \(J=h\) 时有 exact identity

\[
(e^{K_s}-1)(e^{K_t}-1)=q.
\tag{3.4}
\]

它说明整个有限 \(\delta\) transfer family 位于 square-lattice ferromagnetic self-dual line；不能仅以“自对偶”一词证明任意模型的临界性。对于这里的 \(q=2,3\)，临界理论识别还使用各自已知的模型结构；本研究将 \(g=h/J=1\) 作为这些模型的 critical benchmark。\(q=2\) 若改成 \(\pm1\) classical spins，Potts-delta coupling 必须除二。

**定理 4（固定有限链的 quantum limit）。**

\[
\lim_{m\to\infty}T_{\beta/m}^{\,m}=e^{-\beta H_q}
\]

在 operator norm 成立；固定有限 \(\beta,H_q\) 时误差为 \(O(m^{-2})\)。证明：矩阵 Taylor 展开给单步误差 \(O(\delta^3)\)，乘幂 telescoping 和 \(\|e^{\delta J B/2}e^{\delta hF}e^{\delta JB/2}\|\le e^{\delta(J\|B\|+h\|F\|)}\) 给总误差 \(mO(\delta^3)\)。□

因此不以 \(J\) 为小参数也能构造 exact quantum amplitudes。上述估计依赖链长和能量单位，**不是**空间 \(a\to0\) 的 uniform theorem。

## 4. 反例：local Gibbs 不保证 Markov sewing

令三个 qubits 的

\[
P=Z_A X_B I_C,\quad Q=I_A Z_B Z_C,\quad H=P+Q.
\]

没有 \(A-C\) coupling，仍有 \(P^2=Q^2=I\)、\(PQ=-QP\)。对任何有限 \(\beta>0\)，置 \(t=\tanh(\sqrt2\beta)\)、\(u=t/\sqrt2\)。独立 Gibbs state 为

\[
\rho_{ABC}=\frac{I-u(P+Q)}8,\quad
\rho_{AB}=\frac{I-uZ_AX_B}{4},\quad
\rho_{BC}=\frac{I-uZ_BZ_C}{4},\quad \rho_B=I/2.
\tag{4.1}
\]

若 \(b(x)=-\frac{1+x}{2}\log\frac{1+x}{2}-\frac{1-x}{2}\log\frac{1-x}{2}\)，直接对角化给

\[
I(A:C\mid B)=2b(t/\sqrt2)-b(t)-\log2
=\sum_{k=2}^\infty\frac{(1-2^{1-k})t^{2k}}{2k(2k-1)}>0.
\tag{4.2}
\]

证明用 \(b(x)=\log2-\sum_{k\ge1}x^{2k}/[2k(2k-1)]\)，在 \(|x|<1\) 绝对收敛，每个 \(k\ge2\) 系数严格正。高温首项为 \(\beta^4/6+O(\beta^6)\)，不是只在低温才出现的障碍。

根据 finite-dimensional quantum Markov structure theorem，\(I=0\) 才等价于 exact compatible recovery 的结构；见 [Hayden–Jozsa–Petz–Winter](<https://arxiv.org/abs/quant-ph/0304007>)。本例还可直接检查：

\[
\rho_{AB}\rho_B^{-1}\rho_{BC}
=\frac{I-u(P+Q)+u^2PQ}{8}
\]

非 Hermitian，根本不是 state。标准 Petz channel applied to \(\rho_{AB}\) 得

\[
\omega=2\sqrt{\rho_{BC}}(\rho_{AB}\otimes I_C)\sqrt{\rho_{BC}}
=\frac{I-uQ-u\sqrt{1-u^2}P}{8}\ne\rho.
\tag{4.3}
\]

它甚至改变了给定的 \(AB\) marginal。

### 4.1 更强：这些 marginals 根本没有 Markov extension

对任何与 \(\rho\) 有相同 \(AB,BC\) marginals 的 \(\sigma\)，locality of \(H\) 意味 \(\operatorname{Tr}\sigma H=\operatorname{Tr}\rho H\)，从而

\[
D(\sigma\|\rho)=S(\rho)-S(\sigma)\ge0.
\tag{4.4}
\]

所以 \(\rho\) 是这些 marginals 的唯一 maximum-entropy extension。若另有 Markov extension，则其 entropy 必须为
\(S_{AB}+S_{BC}-S_B=S(\rho)+I_\rho>S(\rho)\)，矛盾。

这不等于“marginals 在任何先验下都不能决定 Gibbs state”：在已知 local-Gibbs prior 下，(4.4) 恰好证明其唯一性。**全局 maximum-entropy reconstruction 不等于 interface-local Markov formula。**

### 4.2 不给 Gibbs prior 时，甚至相同 marginals 也不决定 entropy

令 \(W=Z_AI_BZ_C\)，\(\rho_\epsilon=\rho+\epsilon W/8\)，\(0<|\epsilon|<1-t\)。\(W\) 与 \(H\) 对易，且 \(\operatorname{Tr}_A W=\operatorname{Tr}_C W=0\)。四组 eigenvalues 为

\[
\frac{1-qt+s\epsilon}{8},\qquad q,s=\pm1,
\]

各二重，故正定，并有完全相同 \(AB,BC\) marginals。由 (4.4)，\(S(\rho_\epsilon)<S(\rho)\)。更简单的例子是纯 GHZ 与其 incoherent mixture：所有 proper marginals 相同，global entropies 分别为 \(0\) 和 \(\log2\)。

## 5. Replica sewing 是额外的 permutation，不是 entropy 假设

给定任意有限维 positive operator \(Q\ne0\)，\(\rho=Q/\operatorname{Tr}Q\)，\(A\subset\Lambda\)，\(n\ge2\) 为整数。\(P_A^{(n)}\) 在 \(n\) 份 copies 的 \(A\) indices 上作 cyclic permutation，在 complement 上恒等。

**定理 5（有限 replica identity）。**

\[
\operatorname{Tr}\rho_A^n
=\operatorname{Tr}(\rho^{\otimes n}P_A^{(n)})
=\frac{\operatorname{Tr}(Q^{\otimes n}P_A^{(n)})}{(\operatorname{Tr}Q)^n}.
\tag{5.1}
\]

证明：展开 \(n\) 个矩阵的 \((a_i,b_i;a_i',b_i')\) indices，complement contraction 给每份的 partial trace，cycle 将 \(a_i'\) 接到相邻份的 \(a\)，剩下恰为 \(\operatorname{Tr}\rho_A^n\)。有限和允许任意重排。□

因此可先用定理 2 或 4 构造 \(Q=e^{-\beta H}\)，再按 (5.1) sew replicas；normalized expectation 不能代替未归一化 amplitudes，必须保留 denominator。Ground-state 版本取 \(Q=|\Omega\rangle\langle\Omega|\)，或在独立证明唯一基态及投影极限后取 \(\beta\to\infty\)。

若 \(\rho_m\to\rho\) in trace norm（有限链 Trotter 后归一化满足），则

\[
|\operatorname{Tr}(\rho_{m,A}^{n})-\operatorname{Tr}(\rho_A^n)|
\le n\|\rho_{m,A}-\rho_A\|_1
\le n\|\rho_m-\rho\|_1.
\tag{5.2}
\]

证明是 noncommutative telescoping、density-operator norm \(\le1\)、partial trace contractivity。固定有限维时 \(S_n\) 连续；随着 cutoff 去除，moments 趋零，取 logarithm 会放大误差，(5.2) 不是 uniform Rényi-entropy 收敛定理。

## 6. 实际检验及其力度

- [Mathematica 程序](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/verification/transfer_replica_checks.wl>) 与 [结果](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/verification/transfer_replica_results.json>)：8 项 exact identities 通过，包括 \(q=2,3\) temporal-kernel ODE、初值、self-duality、三自旋 spectrum、CMI 首项及 GHZ marginal 对照。最终执行无 Wolfram messages；最初一个脚本括号错误已修复后重跑。
- 在 \(H_0=-X\otimes I-I\otimes X\)、\(V=-Z\otimes Z\)、\(\beta=0.7\) 下，Strang error 的 Frobenius norm 从 \(m=8\) 的 \(0.01248568659\) 到 \(m=16\) 的 \(0.003127377973\)、\(m=32\) 的 \(0.000782216861\)，符合二阶趋近；不把该有限数列替代定理 4。
- 同一两自旋 Gibbs 态的 purity 与 swap contraction 均为 \(0.64870023446606621948\)，50-digit 工作精度下残差为数值零。
- 三自旋反例在 \(\beta=0.7\) 有 \(I=0.0212237094965428058862540292\) nats；全 \(\beta>0\) 的严格性来自 (4.2)，不是该样本。
- [独立复核](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/reviews/finite-independent.md>) 未预先取得主文答案，独立推导反例及 full-history theorem，并用 Sage exact algebra 核验。

临界链数据、continuum collar、sector sum 和 entropy 的极限问题见 [连续与 replica 研究](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/continuum-and-replica.md>)。这里没有声称任意 strongly correlated system 都已得到 continuum sewing；严格已证的是明确有限输入上的构造与上述无条件候选的反例。
