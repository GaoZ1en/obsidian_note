# Ising spatial replicas：Jordan–Wigner strings、计数行列式与连续 sewing

日期：2026-11-07。

## 结论与证明状态

**在固定圆周的临界 Ising even 真空、两个互不接触的区间、n=2 的条件下，保留全部 Jordan–Wigner strings 与四个 spin-structure 项的归一化 replica 振幅收敛成立。** 令 x 为圆周 cross ratio，则
\[
\boxed{\lim_{N\to\infty}R_{2,N}
=\frac{1+x^{1/4}+(1-x)^{1/4}}{2(1-x)^{1/8}}
=R_2^{\rm Ising\ CFT}.}
\]
§8 以 Schur complement、trace-ideal 收敛和 scalar Riemann–Hilbert 解证明三个 even 项的相对极限；§10 以有限网格 Hardy 多项式近零模及计数方差界证明 odd 项消失，给出非最优但严格的 \(O(N^{-0.171720\ldots})\) 界。**整个证明不依赖 §5 的 Fisher–Hartwig 假设。**

§11–12 还证明：对所有固定整数 n≥2，Gaussian 参考 word 的双区间相对极限和单区间的 reference endpoint renormalization 均成立。**完整 n>2 spin sum 仍未证明。** canonical characteristic map 已另行核实，并非简单的 \((\alpha,\beta)/2\)；n=3 的两个非参考 even 轨道已有严格 Fredholm 极限并识别到指定 CFT theta 常数，见[三阶推进](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/ising-third-replica.md>)。

[多区间推进](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/ising-multi-interval-fredholm.md>)将参考项推广到任意固定区间数，并证明 n=2 的所有非零 counting-winding sectors 满足 \(O(N^{-|w|/4})\) 相对抑制；双区间 odd 项因此有更强的 \(O(N^{-1/4})\) 界。下文保留原先独立的 variance 证明。这里不把 UV-finite／reference-renormalized 极限偷换成未校准的绝对 UV 常数，也不声称已能交换 n→1 与 cutoff limit。

## 1. 模型、态与需要收敛的对象

偶数 \(N\)，圆周长度 \(L\)，格距 \(a=L/N\)，
\[
H_N=-\sum_{j=0}^{N-1}Z_jZ_{j+1}-\sum_{j=0}^{N-1}X_j.
\]
取唯一的 even-parity 基态 \(\psi_N\)，\(P=\prod_jX_j=+1\)。本篇不是固定温度的热态问题。整体能量的 bulk subtraction 及速度重标度不改变这个基态。

圆周依次分成 \(A_1,B,A_2,C\)，四段均保持严格正的物理长度。令 \(A=A_1\cup A_2\)，\(\ell=|A|\)，JW 起点选在 \(A_1\) 前的补区。端点按同一格点 prescription 逼近固定位置 \(x_1<x_2<x_3<x_4<x_1+L\)。定义
\[
p_{n,N}(A)=\operatorname{Tr}(\rho^{\rm spin}_{A,N})^n,
\qquad
R_{n,N}=\frac{p_{n,N}(A_1\cup A_2)}{p_{n,N}(A_1)p_{n,N}(A_2)}.
\tag{1.1}
\]
原始 \(p_{n,N}\) 含 endpoint UV 因子；不能直接把它等同于有限、非零的 continuum correlator。比值 (1.1) 消去每个端点相同的局域常数，是本篇优先研究的对象。§11 用一个 reference 二点函数严格固定 n=2 的 branch-point renormalization；未校准的绝对 UV 常数仍未求出。

圆周上使用无量纲 chord
\[
d_{ij}=2\sin\frac{\pi(x_j-x_i)}L>0\quad(i<j),\qquad
x=\frac{d_{12}d_{34}}{d_{13}d_{24}},\qquad
1-x=\frac{d_{14}d_{23}}{d_{13}d_{24}}.
\tag{1.2}
\]
最后一个式子是圆内接四边形的 Ptolemy 恒等式。真空的 replica cover compactification genus 为 \(g=n-1\)。若改为有限温度 base torus，则 genus 不是 \(n-1\)，不能沿用本篇的 vacuum 目标。

## 2. 精确保留 JW strings，而非直接取 Gaussian entropy

取
\[
\gamma_{2j}=\Big(\prod_{k<j}X_k\Big)Z_j,\qquad
\gamma_{2j+1}=\Big(\prod_{k<j}X_k\Big)Y_j,
\qquad i\gamma_{2j}\gamma_{2j+1}=X_j.
\]
因此 \(\{\gamma_r,\gamma_s\}=2\delta_{rs}\)，\(\gamma_{r+2N}=-\gamma_r\) 是 even spin ground state 的 NS 条件。

在 \(\mathcal H_A\) 上另取**只跨越保留的 A sites** 的 JW generators \(\eta\)。通过全部 CAR monomials 定义 \(G,S\)：
\[
\operatorname{Tr}_A[G\,O(\eta)]=\langle O(\gamma_A)\rangle,
\qquad
\operatorname{Tr}_A[S\,O(\eta)]=\langle P_B O(\gamma_A)\rangle,
\quad P_B=\prod_{j\in B}X_j.
\tag{2.1}
\]
\(G\) 是 fermionic Gaussian reduced state；\(S\) 是**未归一化**、一般不正的 string-inserted CAR operator。不将 \(S\) 定义成 ordinary spin partial trace \(\operatorname{Tr}^{\rm spin}_{\bar A}(P_B|\psi\rangle\langle\psi|)\)：那是不同矩阵。

令 \(P_1=\prod_{j\in A_1}X_j\)，\(\mathcal E_1(M)=(M+P_1MP_1)/2\)，\(\mathcal O_1(M)=(M-P_1MP_1)/2\)。则有有限系统严格恒等式
\[
\boxed{\rho_A^{\rm spin}=\mathcal E_1(G)+\mathcal O_1(S)
=\tfrac12(G+P_1GP_1+S-P_1SP_1).}
\tag{2.2}
\]

**证明。** \(G,S\) 均与 \(P_A\) 对易，因此总奇 CAR monomial 的系数为零。每一块各含偶数个 Majoranas 时，局域 JW 与全链 JW 的补区 strings 抵消，系数来自 \(G\)。两块各含奇数个 Majoranas 时，恰多出 \(P_B\)，系数来自 \(S\)。\(\mathcal E_1,\mathcal O_1\) 分别抽取这两类系数。CAR monomials 构成完整矩阵基，故 (2.2) 成立。□

若 \(\tau_A=\operatorname{Tr}^{\rm spin}_{\bar A}(P_B|\psi\rangle\langle\psi|)\)，同一论证还给
\[
\tau_A=\mathcal E_1(S)+\mathcal O_1(G).
\]
这明确了两种 partial trace 的区别。

### 2.1 任意固定整数 n 的有限 words

令 \(F_0=G,F_1=S\)。展开 (2.2)，利用同时共轭 \(P_1\) 不改变 trace，得到
\[
p_{n,N}(A)=2^{1-n}
\sum_{\substack{r\in\mathbb F_2^n\\\sum_jr_j=0}}
\sum_{\substack{s\in\mathbb F_2^n\\s_n=0}}
(-1)^{r\cdot s}
\operatorname{Tr}\prod_{j=1}^n
\big(P_1^{s_j}F_{r_j}P_1^{s_j}\big).
\tag{2.3}
\]
乘积按显示顺序，不能交换非对易 factors。证明中原始 \(4^n\) 项按 \(s\leftrightarrow s+\mathbf1\) 配对：\(\sum r_j\) 奇时抵消，偶时给 factor 2；固定 \(s_n=0\) 选轨道代表。

这里恰有 \(4^{n-1}\) 个 words，系数是 \(2^{-(n-1)}\) 乘 \((-1)^{\alpha\cdot\beta}\)，其中 \(\alpha=(r_1,\ldots,r_{n-1})\)，\(\beta=(s_1,\ldots,s_{n-1})\)。这是 Arf 型二次配对。但**个数与符号吻合本身不证明**任意 word 已与某个 canonical homology basis 中的 continuum spin structure 对齐；还需运输 seam cycles 及其 fermionic signs。尤其不能只算普通 NS covariance，然后丢掉 (2.3) 的其余项。

## 3. Second replica 的四项与无支路 Pfaffian

定义
\[
T_0=\operatorname{Tr}G^2,\quad T_1=\operatorname{Tr}(GP_1GP_1),\quad
T_2=\operatorname{Tr}S^2,\quad T_3=\operatorname{Tr}(SP_1SP_1).
\]
由 \(\operatorname{Tr}[\mathcal E_1(G)\mathcal O_1(S)]=0\)，
\[
\boxed{p_{2,N}(A)=\tfrac12(T_0+T_1+T_2-T_3).}
\tag{3.1}
\]
所有 \(T_i\) 都必须先作为有限格点量保留。

采用实 covariance
\[
\Gamma_{rs}=\frac i2\langle[\gamma_r,\gamma_s]\rangle.
\]
若 Gaussian operators 的 trace 为 1，其 overlap 是无支路的多项式
\[
\operatorname{Tr}[G(\Gamma)G(\Gamma')]
=2^{-\ell}\sum_{I\ {\rm even}}\operatorname{Pf}(\Gamma_I)\operatorname{Pf}(\Gamma'_I)
=(-1)^\ell2^{-\ell}\operatorname{Pf}
\begin{pmatrix}\Gamma&I\\-I&-\Gamma'\end{pmatrix}.
\tag{3.2}
\]
这是 Wick expansion 与 Pfaffian minor-summation 的恒等式。不要把它替换成未经符号运输的 principal square root。

令 \(t=\operatorname{Tr}S=\operatorname{Pf}\Gamma_B\)。仅当 \(t\ne0\) 时可写
\[
S=tG(\Gamma^S),\qquad
\Gamma^S=\Gamma_A-\Gamma_{AB}\Gamma_B^{-1}\Gamma_{BA}.
\tag{3.3}
\]
\(t=0\) 时原定义 (2.1) 和 polynomial (3.2) 仍有效，不应除以 \(t\)。

### 3.1 临界 PBC 的精确三角 Cauchy 矩阵

按每个 site 的第一／第二 Majorana 分组，
\[
\Gamma=\begin{pmatrix}0&C_N\\-C_N^{\mathsf T}&0\end{pmatrix},\qquad
(C_N)_{ij}=\frac1{N\sin[\pi(j-i+1/2)/N]},\quad i,j=0,\ldots,N-1.
\tag{3.4}
\]
这来自 NS Fourier modes 的 critical quadratic Hamiltonian；\(C_N\) 是正交矩阵，完整 \(\Gamma^2=-I\)。记 \(C_A=(C_N)_{A,A}\)，
\[
C^S=C_A-(C_N)_{A,B}(C_N)_{B,B}^{-1}(C_N)_{B,A},\qquad
t=\det(C_N)_{B,B},\qquad D=\operatorname{diag}(-I_{A_1},I_{A_2}).
\]
(3.2) 在此 bipartite 结构下化为 \(2^{-\ell}\det(I+CC'^{\mathsf T})\)，给
\[
\begin{aligned}
T_0&=2^{-\ell}\det(I+C_AC_A^{\mathsf T}),\\
T_1&=2^{-\ell}\det(I+C_AD C_A^{\mathsf T}D),\\
T_2&=t^2 2^{-\ell}\det(I+C^S C^{S\mathsf T}),\\
T_3&=t^2 2^{-\ell}\det(I+C^S D C^{S\mathsf T}D).
\end{aligned}
\tag{3.5}
\]
最后一式保留 determinant 的符号，不取绝对值。

例如 \(N=4\)，四段各一个 site：
\[
T_0=\frac9{16},\quad T_1=T_2=\frac{5+2\sqrt2}{16},\quad
T_3=\frac{1+\sqrt2}{8},\quad p_{2,4}=\frac{17+2\sqrt2}{32}.
\tag{3.6}
\]
所以“奇 spin structure 的格点项已经恒为零”不成立。

纯态 purification 另给有限恒等式
\[
T_2(A;B)=T_1(B\cup C;B),\qquad T_0(A)=T_0(B\cup C).
\tag{3.7}
\]
这里右侧用 graded Fock bipartition 定义的补区 CAR state。它解释了 \(x\leftrightarrow1-x\) 时两个 even 项的互换。

## 4. 四项精确等于 XX full-counting-statistics 行列式

引入辅助的 \(2N\)-site 半填充 NS XX Fermi sea，它有 \(N\) 个 occupied modes。记其投影 covariance 为 \(K_N\)，\(Q_N=2K_N-I\)：
\[
(Q_N)_{pq}=\begin{cases}
\dfrac{\sin[\pi(q-p)/2]}{N\sin[\pi(q-p)/(2N)]},&p\ne q,\\0,&p=q.
\end{cases}
\tag{4.1}
\]
在原交错 Majorana 次序，\(\Gamma_{pq}=1/[N\sin(\pi(q-p)/(2N))]\) 对奇 \(q-p\) 成立，对偶差为零。取 \(U_{pp}=e^{i\pi p/2}\)，则
\[
U^\dagger Q_N U=i\Gamma_N.
\tag{4.2}
\]
这只是辅助行列式的精确识别，不把两个 Majoranas 宣称为两个新的物理自旋。

对 site-dependent phase \(\Lambda=\operatorname{diag}(\lambda_p)\)，定义 centered FCS
\[
\begin{aligned}
\widehat\chi_N(\Lambda)
&=\Big\langle\exp\big[i\sum_p\lambda_p(n_p-\tfrac12)\big]\Big\rangle_{XX}\\
&=e^{-\frac i2\operatorname{Tr}\Lambda}\det[I-K_N+e^{i\Lambda}K_N]\\
&=\det[\cos(\Lambda/2)+i\sin(\Lambda/2)Q_N].
\end{aligned}
\tag{4.3}
\]
最后一式与 \(\det[\cos(\Lambda/2)-\sin(\Lambda/2)\Gamma_N]\) 相等。

每个 physical spin site 对应相邻两个 auxiliary sites，二者赋相同 phase。补区 \(C\) phase 为零，另外三段取下表，则有**严格的有限 N 等号**：

| 格点项 | \(\lambda_{A_1}\) | \(\lambda_B\) | \(\lambda_{A_2}\) | 四个跳跃 \(\beta_j=\Delta\lambda_j/(2\pi)\) |
|---|---:|---:|---:|---|
| \(T_0=\widehat\chi_N\) | \(-\pi/2\) | 0 | \(-\pi/2\) | \((-1,1,-1,1)/4\) |
| \(T_1=\widehat\chi_N\) | \(+\pi/2\) | 0 | \(-\pi/2\) | \((1,-1,-1,1)/4\) |
| \(T_2=\widehat\chi_N\) | \(-\pi/2\) | \(-\pi\) | \(-\pi/2\) | \((-1,-1,1,1)/4\) |
| \(T_3=\widehat\chi_N\) | \(+\pi/2\) | \(-\pi\) | \(-\pi/2\) | \((1,-3,1,1)/4\) |

**证明要点。** 对 \(T_0,T_1\)，把 (4.3) 的每个 A row 抽出 \(2^{-1/2}\)。A 上共 \(2\ell\) 个 rows，得到 \(2^{-\ell}\det(I+\Gamma_A)\) 或 \(2^{-\ell}\det(\widehat D+\Gamma_A)\)，其中 \(\widehat D\) 将每个 \(D\) 的符号重复两遍，\(\det\widehat D=1\)。二者即 (3.5)。对 \(T_2,T_3\)，B 上 cosine 为零，sine 为 \(-1\)；在 \(J=A\cup B\) 上分别得到
\[
2^{-\ell}\det(\Pi_A+\Gamma_J),\qquad
2^{-\ell}\det(\operatorname{diag}(\widehat D_A,0_B)+\Gamma_J).
\tag{4.4}
\]
对 B block 作 Schur complement，\(\det\Gamma_B=t^2\)，即 (3.5)。等式是 polynomial identity，因此可延拓到 \(t=0\)。□

这一步把 JW string 变成**确定的 \(\pi\) 计数相位**，不是在 continuum 端补一个任意 spin-structure sum。

## 5. 未采用的较强路线：完整 FH 渐近的条件定理

下面不假装已证明半填充离散 FCS 的广义 FH 渐近。它会给出更多绝对常数与修正信息，但本篇的 n=2 收敛定理已由 §8、§10 绕开此假设；保留本节是为了明确哪些更强结论仍未证明。

**分析假设 FH。** 对 (4.3) 的同一半填充有限圆周 family，在固定分离的端点紧集内，前三个相位 profile 有
\[
\widehat\chi_N(\beta)
=\kappa^4 N^{-\sum\beta_j^2}\prod_{i<j}d_{ij}^{2\beta_i\beta_j}[1+o(1)],
\tag{5.1}
\]
其中 \(\kappa>0\) 是相同的单端点常数；单区间两个 \(\pm1/4\) 跳跃的振幅也有相同局域常数 \(\kappa^2\)。对第四个 profile，要求完整多表示展开具有足以给出
\[
T_3=O(N^{-3/4})
\tag{5.2}
\]
的有界系数和 remainder。只需证明 \(T_3=o(N^{-1/4})\) 也足够最终收敛。这里的 \(N\) 与无量纲 \(d_{ij}\) 约定必须同时使用，不能重复计入物理长度缩放。

**条件定理。** 若 FH 成立，则
\[
\frac{T_1}{T_0}\to(1-x)^{1/4},\qquad
\frac{T_2}{T_0}\to x^{1/4},\qquad
\frac{T_3}{T_0}\to0,
\tag{5.3}
\]
且
\[
\boxed{R_{2,N}\longrightarrow
\frac{1+x^{1/4}+(1-x)^{1/4}}{2(1-x)^{1/8}}.}
\tag{5.4}
\]

**证明。** 前三组 \(\beta\) 均满足 \(\sum\beta_j^2=1/4\)，且各端点 \(|\beta_j|=1/4\)，故相同局域常数相消。距离积分别为
\[
\begin{aligned}
E_0&=N^{-1/4}\left(\frac{d_{13}d_{24}}{d_{12}d_{14}d_{23}d_{34}}\right)^{1/8},\\
E_1&=N^{-1/4}\left(\frac{d_{14}d_{23}}{d_{12}d_{13}d_{24}d_{34}}\right)^{1/8},\\
E_2&=N^{-1/4}\left(\frac{d_{12}d_{34}}{d_{13}d_{14}d_{23}d_{24}}\right)^{1/8}.
\end{aligned}
\]
所以 \(E_1/E_0=(1-x)^{1/4}\)，\(E_2/E_0=x^{1/4}\)；除以两个单区间，\(E_0/(E_{12}E_{34})=(1-x)^{-1/8}\)。代回 (3.1) 即得结论。□

### 5.1 第四项为何不能随意删去或只保留一个 FH 表示

其原始 \(\beta_3=(1,-3,1,1)/4\)。所有允许 integer shifts 满足 \(\sum_j n_j=0\)。令 \(\beta_3+n=\tfrac14\mathbf1+m\)，则 \(\sum m_j=-1\)，
\[
\sum_j(\tfrac14+m_j)^2=\sum_jm_j^2-\tfrac14\ge\tfrac34.
\]
等号恰对应 \(m=-e_j\)，因此有**四个**极小表示，分别把 \(-3/4\) 放在四个端点，其余均为 \(+1/4\)。它们同阶，若广义 FH 展开适用，就都比前三项低 \(N^{-1/2}\)。必须连同各自的振荡相位求和，不能把 envelope 的正数和当成原行列式。这里 \(\max\beta-\min\beta=1\)，位于退化 FH 边界；单表示、spread 小于 1 的定理不足以覆盖它。

## 6. 独立的 CFT sewing 目标

指定 full diagonal nonchiral Ising CFT，\(c_L=c_R=c=1/2\)。两片覆盖的 torus modulus 为
\[
\tau=i\frac{K(1-x)}{K(x)},\qquad
Z_{\rm Ising}(\tau)=\frac{|\theta_2|+|\theta_3|+|\theta_4|}{2|\eta|}.
\]
Twist 权重 \(h_2=\bar h_2=1/32\)，总维数 \(\Delta_2=1/16\)。按二点函数归一化，Ward/Schwarzian calculation 给
\[
F_2(x)=\left[\frac{x(1-x)}{16}\right]^{1/12}Z_{\rm Ising}(\tau).
\]
由 \(\theta_2/\theta_3=x^{1/4}\)，\(\theta_4/\theta_3=(1-x)^{1/4}\)，\(2\eta^3=\theta_2\theta_3\theta_4\)，
\[
F_2(x)=\tfrac12[1+x^{1/4}+(1-x)^{1/4}],\qquad
R_2^{\rm CFT}=(1-x)^{-1/8}F_2(x).
\tag{6.1}
\]
相对 \(\theta_3\) 参考项，\(\theta_4,\theta_2,\theta_1\) 分别是 \((1-x)^{1/4},x^{1/4},0\)。Ising sum 的 \(1/2\) 应最后乘上，不能混入参考项比值。奇结构的 continuum 零来自未饱和 fermion zero modes，不能反向宣称有限格点 \(T_3\) 已经为零。

(6.1) 是指定 CFT 内部的 sewing 恒等式；lattice identification 是独立的分析问题，现由 §8 与 §10 证明，不再依赖 §5 的 FH 假设。

## 7. 已查证定理的适用边界

- [Fagotti–Calabrese, 1003.1110](https://arxiv.org/abs/1003.1110)：确实保留两区间 JW strings 并给整数 replicas 的 Gaussian 方法；其 continuum 对照含 scaling corrections，不能作为本篇全部 uniform asymptotic 的证明。本文使用未归一化 \(S\) 和无支路 Pfaffian，避免 \(\langle P_B\rangle=0\) 除法问题。
- [Izyurov–Khristoforov, 2007.08941v2, Theorem 1.1](https://arxiv.org/html/2007.08941v2)：确证单位ary flat-bundle 标量 Laplacian 在特定 quadrangulated/triangulated 锥面上的 determinant 渐近，包含局域锥点常数和 continuum zeta determinant。它不是所有 spinorial Dirac domain 的定理，punctures 与 cone points 的假设也要逐项核对。
- [Cimasoni, 1101.5559v3, Theorems 3.3、4.6](https://arxiv.org/html/1101.5559v3)：几何 Kac–Ward 到 Ising spin-structure formula 的简单版本要求所有锥角是 \(2\pi\) 的奇数倍；KW determinant 与普通 twisted scalar Laplacian 的比例关系又限于 genus 0 或 1（并有 primal-vertex cone 条件）。\(n=2\) replica 的 \(4\pi\) 锥点不能直接套用。把锥点移到 dual face 不会自动同时满足 Ising spin-bundle 与 Laplacian 两套假设。该文明确指出 genus 大于等于 2 的相应函数并不成比例。
- [Charlier, 1906.11079v2, Theorem 1.1](https://arxiv.org/html/1906.11079v2)：给连续 sine process 在多区间上的全常数渐近，显示定理参数为正实 \(s_j\)。我们的核是半填充离散投影，\(s_j=e^{i\lambda_j}\) 为复相位；不能只凭有限 determinant 是 entire 就把大参数渐近解析延拓过去。
- [Webb, 1509.03446, Proposition 18、Remark 11](https://arxiv.org/html/1509.03446)：离散 Toeplitz FH 结果所用 regime 为粒子数／mesh 点数趋于零，重点为 root singularities。这里该比率恒为 \(N/(2N)=1/2\)，不是稀薄极限；原文明确保留 finite-density 问题。因此不能把普通连续 Toeplitz FH 定理直接当作 (5.1)–(5.2)。

上述排查排除的是不适用的证明路径，不构成 lattice CFT 收敛为假的反例。

## 8. 无条件子定理：三个 even 项的相对 Fredholm 极限

**定理。** 在 §1 的 fixed-circle、固定分离端点条件下，令 \(d_N=p_{2,N}(A_1)p_{2,N}(A_2)>0\)。则
\[
\frac{T_0}{d_N}\longrightarrow(1-x)^{-1/8},\qquad
\frac{T_1}{d_N}\longrightarrow(1-x)^{1/8},\qquad
\frac{T_2}{T_0}\longrightarrow x^{1/4}.
\tag{8.1}
\]
特别 \(T_1/T_0\to(1-x)^{1/4}\)。本定理**不用 §5 的 FH 假设**，也不需要先计算单端点常数。以下给证明。

### 8.1 精确 finite Schur factorization

按 Majorana 区域分块写 \(\Gamma_{ij}\)。定义
\[
D_N(s_1,s_2)=
\frac{\det\begin{pmatrix}s_1I+\Gamma_{11}&\Gamma_{12}\\\Gamma_{21}&s_2I+\Gamma_{22}\end{pmatrix}}
{\det(I+\Gamma_{11})\det(I+\Gamma_{22})},\qquad s_i=\pm1.
\]
每个 block 维数为偶数，\(\det(-I+\Gamma_{ii})=\det(I+\Gamma_{ii})\)。因此
\[
D_N(s_1,s_2)=\det\big[I-(s_2I+\Gamma_{22})^{-1}\Gamma_{21}
(s_1I+\Gamma_{11})^{-1}\Gamma_{12}\big].
\tag{8.2}
\]
\(D_N(+,+)=T_0/d_N\)，\(D_N(-,+)=T_1/d_N\)。由于 \(\Gamma_{ii}\) 实反对称，\(\|(s_iI+\Gamma_{ii})^{-1}\|\le1\)。

### 8.2 Staggered NS embedding：没有遗漏局域 delta 项

将两类 Majorana 放在 \(x_i=ia\)、\(y_j=(j+1/2)a\) 两套 cell centers。取 NS 频率
\[
p=-N/2+1/2,\ldots,N/2-1/2,
\quad X_{ip}=N^{-1/2}e^{2\pi ipi/N},\quad
Y_{jp}=N^{-1/2}e^{2\pi ip(j+1/2)/N}.
\]
(3.4) 的有限 Fourier 求和精确给
\[
C_NY=X\,\operatorname{diag}(i\operatorname{sgn}p).
\tag{8.3}
\]
例如从 \(p=1/2\) 的 \(\sum_j\cot[\pi(j+1/2)/N]=0\) 得 multiplier 为 \(i\)；相邻频率之差的几何级数只在 \(-1/2\to1/2\) 时跳跃 \(2i\)。这也证明 \(C_N\) 正交。

将两个离散空间分别等距嵌入 NS \(L^2\) section 的 piecewise-constant cells，跨 cut 的 cell 使用反周期符号。固定 Fourier mode 的采样 embedding 强趋原 mode，(8.3) 与 uniform norm 1 随即给
\[
E_N^x C_NE_N^{y*}\xrightarrow{\rm strong}H,
\qquad
H(x,y)=\operatorname{PV}\frac1{L\sin[\pi(y-x)/L]},\qquad H^*=-H.
\tag{8.4}
\]
adjoint 亦强收敛，极限没有额外 delta 项。完整 covariance 的极限是
\[
\mathcal G=\begin{pmatrix}0&H\\H&0\end{pmatrix}.
\]
各区间在两套 cells 上的端点只相差 \(O(a)\)，其 support projections 强趋 \(\mathbf1_{A_i}I_2\)，故 diagonal compressions 强收敛。

由于两区间间距（包括绕圆周另一侧）有正下界，cross kernels 的 cell interpolation 在 \(L^2(A_1\times A_2)\) 收敛。因此 \(\Gamma_{12,N}\to\mathcal G_{12}\)、\(\Gamma_{21,N}\to\mathcal G_{21}\) 为 Hilbert–Schmidt 收敛。将 diagonal inverses 延拓到 ambient space，uniform inverse bound 与 resolvent identity 给其强收敛。

若 \(B_N\) uniformly bounded 且强趋 \(B\)，\(A_N\to A\) in \(\mathcal S_2\)，则 \(B_NA_N\to BA\) in \(\mathcal S_2\)：先用有限秩逼近 \(A\)，再用 uniform bound 控制尾部。结合 \(\mathcal S_2\mathcal S_2\subset\mathcal S_1\)，(8.2) 中的乘积 trace-norm 收敛。Fredholm determinant 的 \(\mathcal S_1\) 连续性于是给一个真正的、UV-finite 的 continuum relative determinant。

### 8.3 独立计算连续 relative determinant，不以 CFT 预言代替它

常数 species rotation 将 \(\mathcal G\) 化为 \(H\oplus(-H)\)。两个 scalar 相对 determinant 互为 transpose，因此相等。记其中一个为 \(\Delta\)，则 \(D=\Delta^2\)。把圆周 cut 放在 gap 内，经 \(u=\tan[\pi(x-x_0)/L]\) 与 sqrt-Jacobian unitary，NS kernel 变为直线上
\[
H(u,v)=\operatorname{PV}\frac1{\pi(v-u)}.
\]
区间记作 \([a_1,b_1]\cup[a_2,b_2]\)。令 \(s(u)=s_i\ne0\) 在第 i 段，
\[
\beta_i=\frac1\pi\arctan\frac1{s_i}\in(-1/2,1/2),\quad
\mathcal R(z)=\prod_{i=1}^2\left(\frac{z-a_i}{z-b_i}\right)^{\beta_i},\quad
\mathcal R(\infty)=1.
\]
在第 i 段有 \(\mathcal R_+/\mathcal R_-=(s_i-i)/(s_i+i)\)。scalar Cauchy RH 解给 \(\mathcal A_s=s+H\) 的逆：
\[
\mathcal A_s^{-1}(u,v)
=\frac{s(u)}{1+s(u)^2}\delta(u-v)
-\frac{\mathcal R_+(u)/\mathcal R_+(v)}
{\pi(s(u)-i)(s(v)+i)(v-u)}.
\tag{8.5}
\]
第二项按 PV 理解。其合法化不依赖 indefinite \(s\) 的错误 coercivity 断言：diagonal blocks 可逆、cross blocks compact，使全算子 Fredholm index 为零。对 \(g\in C_c^\infty\)，令 \(h=g/[(s+i)\mathcal R_+]\)，再用标准 Cauchy transform 构造 \(\Phi=\mathcal R\,\mathcal C h\)。它在端点仅有 \(O(r^{-|\beta_i|})\) 增长，因 \(|\beta_i|<1/2\)，jump \(f\) 属于 \(L^2\)。keyhole 小弧的积分为 \(O(\epsilon^{1-|\beta_i|})\to0\)，故 \(\Phi=\mathcal C f\)；Plemelj 公式直接给 \(\mathcal A_sf=g\) 及 (8.5)。range 包含稠密的 \(C_c^\infty\)，又因 Fredholm 性闭合，所以全算子满射；index 零进一步给单射。这样在每个符号象限内均可逆，不对一般 \(L^2\) 齐次解作未经证明的端点假设。

只对 **relative determinant** 求导，不对单个非 trace-class determinant 求导。block inverse 公式保证下式的 inverse difference 是 trace class：
\[
\partial_{s_1}\log\Delta
=\operatorname{Tr}\big[(\mathcal A_s^{-1})_{11}-(s_1+H_{11})^{-1}\big].
\]
(8.5) 中单区间与双区间的 local singularity 抵消。其对角值为
\[
\frac1{\pi(1+s_1^2)}\partial_u\log\mathcal R_2(u).
\]
先用截去端点的 compact cutoffs 计算 continuous-kernel trace，再利用 trace-class localization 及上式可积性去掉 cutoffs，得
\[
\partial_{s_1}\log\Delta
=\frac{\beta_2}{\pi(1+s_1^2)}\log q,\qquad
q=\frac{(a_2-b_1)(b_2-a_1)}{(a_2-a_1)(b_2-b_1)}=1-x.
\tag{8.6}
\]
因 \(\partial_s\beta=-1/[\pi(1+s^2)]\)，从同一符号半轴的 \(|s_1|\to\infty\) 积分，并用 cross Schur determinant 在此趋 1，得到
\[
\Delta=q^{-\beta_1\beta_2},\qquad
D(s_1,s_2)=q^{-2\beta_1\beta_2}.
\tag{8.7}
\]
当 \(s_i=\pm1\)，\(\beta_i=\pm1/4\)，故得到 (8.1) 的前两式。最后利用 (3.7)，补区的 cross ratio 为 \(1-x\)，故 \(T_2/T_0=x^{1/4}+o(1)\)。□

### 8.4 完整收敛规约到 odd 项

(8.1) 给出精确渐近关系
\[
R_{2,N}=\frac12(1-x)^{-1/8}
\left[1+(1-x)^{1/4}+x^{1/4}-\frac{T_3}{T_0}\right]+o(1).
\tag{8.8}
\]
这里使用 \(|T_3|\le T_2\le T_0\) 保证有界误差运输；该界来自 \((G\pm S)/2\ge0\) 与 Hilbert–Schmidt Cauchy–Schwarz。

因此对这个具体 n=2 问题，**完整收敛到 Ising CFT 已规约为一个必要且充分的剩余引理**：
\[
\boxed{T_3/T_0\longrightarrow0.}
\tag{8.9}
\]
不能只由前三项的定理推出 (8.9)。第四项涉及 \(\pi\) counting phase／string Schur complement，相应逆算子不再有 (8.2) 的 uniform bound。§10 改用近零模与收缩 determinant 的界证明 (8.9)，因此不需要补上整套广义 FH 渐近。\(O(N^{-1/2})\) 的最优速率仍只是此处 FH 机制与数据支持的预期。一般 \(n>2\) 的非对易 words 和全部高 genus 振幅也仍需额外分析。

## 9. 验证记录

**Verified：**

- (2.2)–(3.5) 有 CAR/Wick 解析证明；独立推导者先得到模型与约定、未先得到候选答案。后续 XX/FCS 识别是明确标识的协作复核，不冒充第二次盲推。
- 独立 spin ED 与 CAR 矩阵构造在 \(N=4,6,8\) 的四项 reduced operator 比较误差不超过 \(1.5\times10^{-14}\)，\(n=2,3,4\) moments 误差不超过 \(1.2\times10^{-15}\)。这些只检查实现，不替代一般有限恒等式证明。
- 主代理用 Wolfram 对非对易有理 \(4\times4\) 矩阵检查 (2.3) 的 \(n=2,3,4,5\)，分别 4、16、64、256 words，全部精确相等。有限 quadratic-refinement Arf sum 在 genus 1–3 的全部标签精确通过。
- Wolfram 在 \(N=16\) 精确检查 (4.2)；40-digit 四个 FCS determinant 与 (3.5) 残差均为对应精度数值零。独立 Python 用 XX occupied Fourier projector 在 \(N=4,8,16\) 检查相同识别，最大误差 \(1.5\times10^{-15}\)。
- CFT 复核者独立从 Ward identity、torus partition sum 与 Jacobi identities 得 (6.1)，检查 Schwarzian、退化极限和 theta/eta 数值。
- §8 的 staggered Fourier embedding、trace-norm 收敛与 RH inverse 有独立完整推导；数值分别检查精确 Fourier symbol、finite Schur identity、circle 极限及 independent line discretization，包含 mixed-sign \((s_1,s_2)=(2,-0.7)\)。详细见[独立 Fredholm 证明](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/reviews/ising-fredholm-independent.md>)。
- §10 的 odd suppression 由协作乘积截断证明与另一 fresh reviewer 的独立 Taylor/Darboux 证明交叉核验；后者事前只得到有限网格题设，未得到候选指数或证明。随后双方比较出可省去 Darboux 的初等版本，明确区分独立阶段与后续协作。见[独立 odd-sector 证明](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/reviews/ising-odd-sector-independent.md>)。
- [CFT 与 odd-sector 复核](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/reviews/ising-replica-cft-and-odd-sector.md>)附实际 47 项 Wolfram 检查，全部 PASS、messages={}；包括 phase factorization、midpoint csc-square 恒等式、J 精确换半空间、leakage 分块恒等式和 determinant 不等式。它们辅助解析证明，不从有限 N 拟合宣称极限。
- §11 的四弧交换推论与 §12 的一般 n factorization 另经协作复核；主代理 CAS 精确核验两种 parity 的指数和，n=2,…,8 的多项式值以 50-digit 检查。初次对精确零直接作数值求值触发 extra-precision 警告；改为独立数值化两边后重跑无 messages，未把警告隐藏成 exact-zero 证明。完整最新输出见[result.txt](</Users/koishi/.codex/mcp-results/evaluate_mathematica-jWxGX1/result.txt>)。
- 一次让 CAS 直接化简两种嵌套根式的尝试超时；该调用仅已输出的 Arf checks 有效。后续改用明确 theta identities 与有限矩阵恒等式成功，不把超时的 simplification 记为通过。

**Assumptions：** 偶数 PBC 链的 even 真空，两个区间和两个补区都保持正物理长度；固定 replica 整数；相同 endpoint regulator。§5 的 FH 假设明确未证。

**Not verified：** finite-density 多跳跃离散 sine determinant 的完整统一 FH 渐近及最优修正指数，任意整数 \(n>2\) 的全部 signed-sector 与高 genus determinant 极限，未校准的绝对 UV 常数，\(n\to1\) 导数交换，有限温度及 Potts 的相应命题。第四项消失不再属于未证项：§10 给出不依赖 FH 的证明。

### 9.1 有意保留慢收敛的数值证据

取 \(|A_1|=|A_2|=N/8, |B|=N/4, |C|=N/2\)，则 \(x=(\sqrt2-1)^2\)。由 (3.5) 直接计算：

| \(N\) | \(T_1/T_0\) | \(T_2/T_0\) | \(T_3/T_0\) |
|---:|---:|---:|---:|
| 16 | 0.958591 | 0.659690 | 0.301576 |
| 64 | 0.955292 | 0.647855 | 0.155095 |
| 256 | 0.954355 | 0.644677 | 0.078041 |
| 1024 | 0.954114 | 0.643866 | 0.039080 |
| CFT 目标 | 0.954033 | 0.643594 | 0 |

\(N=1024\) 的 spin \(R_2\approx1.309971\)，CFT 目标约 \(1.329735\)。第四项的慢衰减占主要差异；删去它会伪造较好的 finite-size agreement。数据支持 \(N^{-1/2}\) 的 FH 机制，但不证明此 exponent 或极限；极限的解析证明如下。

## 10. Odd sector suppression：有限网格近零模与计数方差

本节证明 (8.9)，不借用任何 absolute FH formula。

### 10.1 精确 projection determinant 与 quarter-turn phase

令 \(M=2N\)，\(z_k=e^{2\pi ik/M}\)。将 NS occupied modes 的共同 momentum offset 以 diagonal gauge 移去，得到 \(P_N\)：离散 Fourier modes \(0,\ldots,N-1\) 的正交投影。此 gauge 与任何 spatial phase multiplication 对易，不改 FCS determinant。

令 \(g\) 在 \((C,A_1,B,A_2)\) 上依次为 \((1,i,-1,-i)\)。Sylvester identity 给
\[
|T_3|=|\det\mathsf A_N|,\qquad
\mathsf A_N=P_ND_gP_N\big|_{\operatorname{ran}P_N}.
\tag{10.1}
\]
所有 \(D_g\) entries 模为 1，所以 \(\mathsf A_N\) 是收缩。四个 phase jumps 全为正向 quarter turn，不是任意零绕数的 phase profile。

### 10.2 一个严格的有限网格近零模

把四个 jump 点选在实际两个 auxiliary sites 之间的 bond midpoint
\(\zeta_j=e^{2\pi i(k_j+1/2)/M}\)。这不改变格点 \(g\)，并保持各 \(\zeta_j\) 的相互距离有正下界。取 disk 内归一化分支
\[
f(z)=\prod_{j=1}^4(1-z/\zeta_j)^{-1/4},\qquad f(0)=1.
\]
在每条无跳跃的弧上，\(zf/\bar f\) 是常数；穿过每个 \(\zeta_j\) 时恰乘 \(i\)。所以在全部采样点有严格恒等式
\[
g(z)=c\,z\frac{f(z)}{\overline{f(z)}},\quad |c|=1,
\qquad \bar g f=\bar c\,z^{-1}\bar f.
\tag{10.2}
\]

令 \(a_k=(1/4)_k/k!\)。它单调下降且 \(a_k\le C(k+1)^{-3/4}\)。每个 binomial series 截断到
\(m=\lfloor(N-1)/4\rfloor\)，取其四个截断多项式的乘积 \(p_N\)。于是
\[
\deg p_N\le N-1,\qquad p_N(0)=1.
\]
Dirichlet 尾估计给
\[
\left|(1-z/\zeta_j)^{-1/4}-\sum_{k=0}^m a_k(z/\zeta_j)^k\right|
\le\frac{C m^{-3/4}}{|z-\zeta_j|},\qquad |z|=1,\ z\ne\zeta_j.
\]
记 \(d=|z-\zeta_j|\)。单因子截断还满足统一界 \(|h_{j,m}(z)|\le C d^{-1/4}\)：当 \(md\le1\) 用系数绝对和 \(O(m^{1/4})\)，当 \(md\ge1\) 用 full factor 加 Dirichlet 尾界。固定分离保证任一点至多靠近一个根；其余 factors 及其截断有统一界。展开乘积差、在各根附近分别估计，得到
\[
|f(z)-p_N(z)|\le C m^{-3/4}\sum_j|z-\zeta_j|^{-1}.
\tag{10.3}
\]
这里近某个根时额外出现的 \(|z-\zeta_j|^{-1/4}\) 可被常数倍 \(|z-\zeta_j|^{-1}\) 控制；常数只依赖端点分离下界。

对 normalized discrete norm \(\|v\|_M^2=M^{-1}\sum_k|v(z_k)|^2\)，midpoint csc-square 恒等式精确给
\[
\sum_{k=0}^{M-1}|z_k-\zeta_j|^{-2}=M^2/4.
\]
因此 (10.3) 给
\[
\|f-p_N\|_M\le C N^{-1/4}.
\tag{10.4}
\]
此处没有交换无限 Fourier aliasing 和极限；整个估计直接在有限网格成立。

反线性等距 \(Jv=z^{-1}\bar v\) 将 occupied modes \(0,\ldots,N-1\) 精确送到 empty modes \(-1,\ldots,-N\pmod{2N}\)。所以 \(P_NJp_N=0\)，而 (10.2) 给
\[
\|P_N\bar g p_N\|_M
\le \|p_N-f\|_M+\|P_NJ(f-p_N)\|_M
\le 2\|p_N-f\|_M.
\]
\(\deg p_N<N\) 保证 discrete Fourier orthogonality，故 \(\|p_N\|_M\ge|p_N(0)|=1\)。由最小奇异值变分原理，
\[
s_{\min}(\mathsf A_N)=s_{\min}(\mathsf A_N^*)\le C N^{-1/4}.
\tag{10.5}
\]

### 10.3 不求完整 spectrum，也能控制 determinant

记 \(K_A=P_N|_A\)，以及计数方差
\[
V_A=\operatorname{Tr}[K_A(1-K_A)].
\]
亏损 trace 为
\[
\mathcal L_g=\operatorname{Tr}(I-\mathsf A_N^*\mathsf A_N)
=\tfrac12\sum_{r,s}|(P_N)_{rs}|^2|g_r-g_s|^2.
\]
对相间的 \(A=A_1\cup A_2\)，\(A^c=B\cup C\)，跨越 \(A,A^c\) 的 \(g\) 相位距离平方都为 2。故有精确的有限矩阵关系
\[
\mathcal L_g
=2V_A+4\|(P_N)_{A_1,A_2}\|_2^2+4\|(P_N)_{B,C}\|_2^2
\ge2V_A.
\tag{10.6}
\]
若奇异值 \(0\le s_1\le\cdots\le s_N\le1\)，用 \(\log s\le-(1-s^2)/2\) 控制除最小值外的乘积，得到
\[
|T_3|\le e^{1/2}s_1 e^{-\mathcal L_g/2}
\le C N^{-1/4}e^{-V_A}.
\tag{10.7}
\]
另一方面 \(T_0=|\widehat\chi_A(\pi/2)|\)，令 \(\lambda_j\in[0,1]\) 为 \(K_A\) eigenvalues，则
\[
\log T_0=\tfrac12\sum_j\log[1-2\lambda_j(1-\lambda_j)]
\ge-2\log2\,V_A,
\tag{10.8}
\]
因为 \(0\le u\le1/4\) 时 \(\log(1-2u)\ge-4\log2\,u\)。这避开了对 \(T_0\) 使用未证明的 absolute FH 渐近。

### 10.4 方差的初等对数界与严格消失速率

对非零奇数距离 r，半填充 projection 满足
\[
|(P_N)_{j,j+r}|=\frac1{2N|\sin(\pi r/(2N))|};
\]
非零偶数距离的 kernel 为零。取 \(\eta N\) 小于四个弧长。对 \(r\le\eta N\)，四个 \(A/A^c\) boundaries 各有 r 对跨界 sites；局域贡献为
\[
4\sum_{\substack{1\le r\le\eta N\\r\ {\rm odd}}}
\frac{r}{4N^2\sin^2(\pi r/(2N))}
=\frac4{\pi^2}\sum_{r\le\eta N,\ r\ {\rm odd}}\frac1r+O(1)
=\frac2{\pi^2}\log N+O(1).
\]
其余跨界 pairs 的圆周距离有正物理下界，kernel 平方为 \(O(N^{-2})\)，总贡献 \(O(1)\)。所以
\[
V_A=\frac2{\pi^2}\log N+O(1).
\tag{10.9}
\]
合并 (10.7)–(10.9)，
\[
\boxed{\frac{|T_3|}{T_0}
\le C N^{-\delta},\qquad
\delta=\frac14-\frac{4\log2-2}{\pi^2}
=0.17172039619\ldots>0.}
\tag{10.10}
\]
常数依赖固定端点的分离下界，可在固定分离紧集上统一。该速率不最优，但已足以代入 (8.8)，**无条件完成本篇双区间 n=2 的归一化 CFT sewing 极限**。□

近零模是在 lattice 层保留 odd 项后构造出来的；它是 continuum odd spin structure 零模的一个可控格点实现，而不是先在 continuum 把零项删掉。

## 11. 用一个 reference 二点函数固定 endpoint renormalization

§8 还有一个不需 absolute FH 的推论。以 \(p_N(m)\) 表示 m 个连续 spin sites 的 second purity。对任意 \(m_N/N\to\ell/L\in(0,1)\)，
\[
\boxed{\frac{p_N(m_N)}{p_N(N/2)}
\longrightarrow\left[\sin\frac{\pi\ell}{L}\right]^{-1/8}.}
\tag{11.1}
\]

**证明。** 单区间 spin 与 fermionic purity 一致。纯 Gaussian state 满足全系统 \(\Gamma^2=-I\)，因此 \((I+\Gamma)^{-1}=(I-\Gamma)/2\)、\(\det(I+\Gamma)=2^N\)；Jacobi complementary-minor identity 给任意 sites 的 fermionic purity 与其补区相等。NS translation 只产生正交 sign gauge，故单区间 purity 仅依赖 m。

取同一组正整数 \(a_N+b_N+c_N+d_N=N\)，四个比例趋正数。将它们依次作为四弧长度。定义
\[
F_N(m)=\log p_N(m)+\frac18\log[2\sin(\pi m/N)].
\]
分别对相间两弧 \((a,c)\) 和其补区 \((b,d)\) 使用 §8 的 \(D_N(+,+)\) 极限，结合全态纯性与 Ptolemy identity，得到
\[
E_N=F_N(a)+F_N(c)-F_N(b)-F_N(d)\to0.
\]
把**同一整数四元组**的 b,c 交换，得到另一几何的
\(E'_N=F_N(a)+F_N(b)-F_N(c)-F_N(d)\to0\)。相减得 \(F_N(c)-F_N(b)\to0\)。只要 b,c 的极限长度之和小于 L，即可选正的 a,d 完成这个构造。

对于一般 \(m_N\)，先利用 \(p_N(m)=p_N(N-m)\) 化到 \(m\le N/2\)，再以 \(k_N=\lfloor N/4\rfloor\) 为 bridge，分别比较 \((m_N,k_N)\) 与 \((N/2,k_N)\)。两次都留下正的物理 gap，故推出 (11.1)，包括 \(m_N/N\to1/2\) 的任意 rounding。无需假定相邻 site 的 log-purity 差已受控。□

在本篇无量纲 chord 约定中，定义唯一的 reference renormalization
\[
Z_N=2^{1/8}p_N(N/2)>0.
\tag{11.2}
\]
这固定二点函数在半圆处的归一化，不以待证的四点函数定义目标。于是
\[
\frac{p_{2,N}(A_i)}{Z_N}\to d_{2i-1,2i}^{-1/8},
\]
而 §8 与 §10 给
\[
\boxed{\frac{p_{2,N}(A_1\cup A_2)}{Z_N^2}
\longrightarrow
\left[\frac{d_{13}d_{24}}{d_{12}d_{14}d_{23}d_{34}}\right]^{1/8}
\frac{1+x^{1/4}+(1-x)^{1/4}}2.}
\tag{11.3}
\]
这正是以单位二点 normalization 固定的 Ising replica twist 四点函数：\(h_2=\bar h_2=1/32\)。相同 \(Z_N^{1/2}\) 作用于每个 branch endpoint，且独立于区间几何。

若改用有长度量纲的 chord \(\widetilde d=(L/2\pi)d\)，则同时令 \(\widetilde Z_N=(L/2\pi)^{1/8}Z_N\)；(11.1)–(11.3) 按此映射恢复物理长度单位。

**仍未由此决定的是 \(Z_N\) 的绝对 cutoff 渐近**，例如其 \(a^{1/8}\) 前常数与精细 corrections；reference-renormalized 振幅收敛不要求先计算这个常数。上述证明也不覆盖端点随 N 碰撞或有限温度；一般 n 的精确可证部分和剩余缺口如下。

## 12. 一般整数 n：参考 word 与 endpoint normalization 已可证明

本节不把 spin reduced state 替换为 Gaussian state。只先确定 (2.3) 中 \(r=s=0\) 的参考 word，然后明确其他 words 还缺什么。

### 12.1 任意固定 n 的 Gaussian 参考项

记 \(p^f_{n,N}(A)=\operatorname{Tr}G_A^n\)。令
\[
m=\lfloor n/2\rfloor,\quad
s_{k,n}=\tan\frac{(2k+1)\pi}{2n}>0,\quad 0\le k<m.
\]
对 covariance 的每个 eigenpair \(\pm i\nu\)，有精确多项式恒等式
\[
\frac{(1+\nu)^n+(1-\nu)^n}{2^n}
=\prod_{k=0}^{m-1}\frac{\nu^2+s_{k,n}^2}{1+s_{k,n}^2}.
\tag{12.1}
\]
根由 \([(1+\nu)/(1-\nu)]^n=-1\) 确定；奇 n 的一个根在无穷远，degree 为 n−1。两边在 \(\nu=1\) 均为 1，固定乘法常数。因此
\[
p^f_{n,N}(A)=\prod_{k=0}^{m-1}
\frac{\det(s_{k,n}I+\Gamma_A)}{(1+s_{k,n}^2)^{|A|}}.
\tag{12.2}
\]
没有额外 square root：每个 \(\pm i\nu\) pair 已在 determinant 中配成 \(s^2+\nu^2>0\)。

对任意固定非零 real s，重新定义自然归一化
\[
\widetilde D_N(s,s)=
\frac{\det(sI+\Gamma_A)}
{\det(sI+\Gamma_{A_1})\det(sI+\Gamma_{A_2})}.
\]
与 §8 的 \(s=\pm1\) 专用分母不同，这里必须把分母也改为 s。相同 Schur 证明给
\[
\widetilde D_N(s,s)\to(1-x)^{-2\beta(s)^2},\qquad
\beta(s)=\pi^{-1}\arctan(1/s),
\]
因为 fixed s 的 resolvent 界 \(1/|s|\) 足够所有 trace-ideal 步骤。单区间 spin/Gaussian moments 相同，故 (12.2) 推出
\[
\boxed{\frac{p^f_{n,N}(A_1\cup A_2)}
{p_{n,N}(A_1)p_{n,N}(A_2)}
\longrightarrow(1-x)^{-\kappa_n},\qquad
\kappa_n=\frac{n-n^{-1}}{12}.}
\tag{12.3}
\]
这里
\(\beta(s_{k,n})=(n-2k-1)/(2n)\)，且
\(2\sum_{k=0}^{m-1}\beta(s_{k,n})^2=\kappa_n\)。这是对所有固定整数 n 的解析结果，但只是完整 spin sum 的一个参考项。

### 12.2 所有固定整数 n 的单区间与 counterterm

纯 Gaussian state 的 complementary reductions 具有相同非零 spectrum，因此所有 \(p^f_n(A)=p^f_n(A^c)\)。将 §11 的四弧交换论证中的 1/8 全部换成 \(\kappa_n\)，得到
\[
\boxed{\frac{p_{n,N}(m_N)}{p_{n,N}(N/2)}
\to\left[\sin\frac{\pi\ell}{L}\right]^{-\kappa_n},\qquad
Z_{n,N}=2^{\kappa_n}p_{n,N}(N/2).}
\tag{12.4}
\]
从而 \(p_{n,N}(A_i)/Z_{n,N}\to d_{2i-1,2i}^{-\kappa_n}\)。这符合 Ising twist weights
\(h_n=\bar h_n=(n-n^{-1})/48\)。每个 branch endpoint 乘 \(Z_{n,N}^{-1/2}\)；依然没有确定 \(Z_{n,N}\) 的绝对 cutoff 常数。

### 12.3 精确剩余引理：不是参考项，也不是 endpoint normalization

令 \(g=n-1\)，将 (2.3) 的有序 trace 记为 \(W_{\alpha,\beta,N}\)，其中 \(\alpha,\beta\in\mathbb F_2^g\)。\(W_{0,0,N}=p^f_{n,N}(A)>0\)。需要区分两个层次：

1. **Seam transport 已明确。** 实际核对 canonical cycles 后，令 L 为全1下三角矩阵，有 \(\delta_{\alpha,\beta}=[\varepsilon;\delta]\)，其中 \(2\varepsilon=L\alpha\)、\(2\delta=L^{-T}\beta\pmod2\)，并非直接 \([\alpha/2;\beta/2]\)。于是 \(4\varepsilon\cdot\delta=\alpha\cdot\beta\pmod2\)。详细的拓扑运输、文献页码与 n=3 全部标签见[运输报告](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/reviews/ising-spin-structure-transport.md>)。这固定 coefficient parity，不自动固定 finite trace 自身的正负，也不证明任何 cutoff 极限。
2. **逐项归一化 Pfaffian 极限仍需证明。** 对这些已经对齐的 characteristics，需建立
   \[
   \frac{W_{\alpha,\beta,N}}{W_{0,0,N}}
   \longrightarrow
   \frac{|\Theta[\delta_{\alpha,\beta}](0\mid\Omega_n)|}
        {|\Theta[\delta_{0,0}](0\mid\Omega_n)|}.
   \tag{12.5}
   \]
   这里 \(\Omega_n\) 是独立由 n-sheeted two-interval cover 算出的 period matrix，参考 characteristic 选择非零的 NS reference；odd characteristics 的 theta 常数为零。若使用不同 Pfaffian orientation，必须把相应符号同时运输到有限 word 系数，不能事后取模修复。

(12.5) 是尚未全部证明的具体分析引理，**不是本文对一般 n 的定理**。若这个逐项极限成立，结合已明确的 characteristic transport、有限 \(4^g\) 项求和及已证 (12.3)，即严格得到
\[
R_{n,N}\to(1-x)^{-\kappa_n}2^{-g}
\sum_{\alpha,\beta}(-1)^{\alpha\cdot\beta}
\frac{|\Theta[\delta_{\alpha,\beta}](0\mid\Omega_n)|}
{|\Theta[\delta_{0,0}](0\mid\Omega_n)|},
\tag{12.6}
\]
并由 (12.4) 得到 reference-renormalized 四点振幅。标准 Ising spin sum 的 odd 项在 continuum 为零，even 项保留；本篇 n=2 的 §8、§10 已完成相应的三个非零项和一个零项，而不是预先假定它们。

**n=3 的推进已将缺口再缩小。** [三阶证明](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/ising-third-replica.md>)给出 a,b,c 三个轨道（7个 terms）的完整极限，其中 b/a 趋于 \(\sqrt{[1+2\cos(\tfrac43\arcsin\sqrt x)]/3}\)，c 由补区对偶得到。仍缺 d 轨道的3个 even terms 与 e 轨道的6个 odd terms。这些通常不再化为本篇 n=2 的单标量四相位问题；不能仅凭相同 genus 或 continuum cover 的另一种表示，将其他 lattice replica 的收敛直接移植过来。
