# Ising 多区间：相对行列式、JW 和式与 winding sectors

日期：2026-11-07。续接[双区间证明](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/ising-spatial-replica.md>)；不修改其已证范围。

## 当前结果

**任意固定有限个分离区间的 Gaussian 参考振幅，以及 second replica 中不含 gap strings 的全部 parity-twisted 项，均有严格且显式的连续极限。** 证明使用局部 resolvent、cross-block Hilbert–Schmidt 收敛和 regularized determinant，不使用 Fisher–Hartwig 渐近。

完整 spin second replica 有保留所有 signs 的有限 FCS 和式。下面把它的 coefficient parity 精确识别为 counting-phase winding 的奇偶性；这不自动计算所有 winding-zero terms。任意多区间的完整 spin sum 仍不能由 Gaussian 参考项代替。

## 1. 自然归一化的 m-block theorem

取固定圆周 L 上 m 个区间 \(A_j=(a_j,b_j)\)，在一个正 gap 内切开，使
\(a_1<b_1<\cdots<a_m<b_m<a_1+L\)。所有区间及相邻 gaps 长度有正下界，m 固定。取[原约定](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/ising-spatial-replica.md>)的 even PBC 真空、实 covariance \(\Gamma_N\) 与 staggered NS embedding。

对固定 \(s_j\in\mathbb R\setminus\{0\}\)，定义
\[
D_N(\boldsymbol s)=
\frac{\det[\operatorname{diag}(s_jI)+\Gamma_{A,N}]}
{\prod_j\det(s_jI+\Gamma_{jj,N})},\qquad
\beta_j=\frac1\pi\arctan\frac1{s_j}\in(-1/2,1/2).
\]
令
\[
q_{jk}=\left|
\frac{\sin[\pi(b_j-a_k)/L]\sin[\pi(a_j-b_k)/L]}
{\sin[\pi(a_j-a_k)/L]\sin[\pi(b_j-b_k)/L]}
\right|\in(0,1),\qquad j<k.
\]
**定理：**
\[
\boxed{D_N(\boldsymbol s)\longrightarrow
\prod_{j<k}q_{jk}^{-2\beta_j\beta_k}>0.}
\tag{1.1}
\]
局部参数一致性限于 \((\mathbb R\setminus\{0\})^m\) 的紧子集；不含 \(s_j\to0\)、m 增长或端点碰撞。

### 1.1 为什么 det₂ 是合适的有限到连续桥

记 \(D_{0,N}=\bigoplus_j(s_jI+\Gamma_{jj,N})\)，V_N 为 cross blocks、对角为零，\(K_N=D_{0,N}^{-1}V_N\)。有限矩阵恒有
\[
D_N=\det(I+K_N)=\det_2(I+K_N),\qquad\operatorname{Tr}K_N=0.
\]
强收敛的 diagonal blocks、\(\|(s_jI+\Gamma_{jj,N})^{-1}\|\le1/|s_j|\)，以及 cross blocks 的 \(\mathcal S_2\) 收敛，给
\(K_N\to K=D_0^{-1}V\) in \(\mathcal S_2\)。因此 det₂ 的连续性给严格极限。

连续 cross kernels 在每个闭矩形 \(\overline A_j\times\overline A_k\) 上光滑。它们映 \(L^2(A_k)\to H^2(A_j)\)，而一维 \(H^2\hookrightarrow L^2\) 的奇异值为 \(O(r^{-2})\)，故 V、K 实际是 trace class。K 的 diagonal blocks 为零，所以 \(\operatorname{Tr}K=0\)，于是
\[
\det_2(I+K)=\det_F(I+K).
\]
这一步不要求离散 K_N 在 trace norm 收敛；只知道 \(\mathcal S_2\) 收敛时直接使用普通 determinant 的连续性会是错误的。

### 1.2 Scalar RH evaluation

固定 species rotation 将 \(\mathcal G=\left(\begin{smallmatrix}0&H\\H&0\end{smallmatrix}\right)\) 化为 \(H\oplus(-H)\)。用 tan 坐标及 half-density 酉变换，H 成为实线上 \(\pi^{-1}\mathrm{PV}(y-x)^{-1}\)。令
\[
\mathcal X(z)=\prod_j\left(\frac{z-a_j}{z-b_j}\right)^{\beta_j},
\qquad\mathcal X(\infty)=1,
\qquad\frac{\mathcal X_+}{\mathcal X_-}=\frac{s_j-i}{s_j+i}\quad(x\in A_j).
\]
实线端点在本小节表示已变换的坐标，q 不变。设 S 为 piecewise constant s_j。scalar Cauchy 解给 \(\mathcal A=S+H\) 的逆
\[
\mathcal A^{-1}(x,y)=
\frac{s(x)}{1+s(x)^2}\delta(x-y)
-\frac{\mathcal X_+(x)/\mathcal X_+(y)}
{\pi(s(x)-i)(s(y)+i)(y-x)}.
\tag{1.2}
\]
合法性可用两条路线：独立推导中，权 \(\prod_j|(x-a_j)/(x-b_j)|^{2\beta_j}\) 的每个 endpoint exponent 都在 \((-1,1)\)，满足 A₂ 控制；也可直接对 \(g\in C_c^\infty\) 构造 \(\Phi=\mathcal X\,\mathcal C[g/((s+i)\mathcal X_+)]\)。其 jump 属于 L²，小端点弧积分趋零，故 \(\Phi=\mathcal C f\) 且 \(\mathcal Af=g\)。\(\mathcal A\) 是 invertible block diagonal 的 compact perturbation，Fredholm index 零，稠密且闭的 range 给全体可逆。这不以 mixed-sign S 的 coercivity 作错误论证。

令 F 为 scalar relative determinant。仅对这个合法相对量求导：
\[
\partial_{s_j}\log F
=\operatorname{Tr}_{A_j}\big[(\mathcal A^{-1})_{jj}-(s_j+H_{jj})^{-1}\big]
=\frac1{\pi(1+s_j^2)}\sum_{k\ne j}\beta_k\log q_{jk}.
\]
inverse difference 为 trace class；对角 trace 先在截去端点的 compact subinterval 上计算，再取 trace-norm localization 极限。单区间的 Cauchy singularity 与 delta 项抵消，余下 diagonal 有界。

由 \(\beta_j'=-1/[\pi(1+s_j^2)]\)，积分得
\(F=\prod_{j<k}q_{jk}^{-\beta_j\beta_k}\)。常数由所有 \(|s_j|\to\infty\) 固定为1；全符号象限内 F 实且不为零，因此取实 log 合法。另一 species 的 H→−H 同时反转全部 β，贡献相同，得到 (1.1)。□

## 2. 所有固定 n 的 Gaussian 参考振幅

令 \(p^f_{n,N}(A)=\operatorname{Tr}G_A^n\)，单个 interval 上它等于 spin moment。有限 mode polynomial factorization 给
\[
p^f_{n,N}(A)=\prod_{k=0}^{\lfloor n/2\rfloor-1}
\frac{\det(s_{k,n}I+\Gamma_A)}{(1+s_{k,n}^2)^{|A|}},
\quad s_{k,n}=\tan\frac{(2k+1)\pi}{2n}.
\]
因此 (1.1) 立即推出
\[
\boxed{
\frac{p^f_{n,N}(\bigcup_j A_j)}{\prod_j p_{n,N}(A_j)}
\longrightarrow\prod_{j<k}q_{jk}^{-\kappa_n},
\qquad\kappa_n=\frac{n-n^{-1}}{12}.}
\tag{2.1}
\]
该结果对任何固定 m、固定整数 n≥2 成立。利用已证的 \(Z_{n,N}=2^{\kappa_n}p_{n,N}(N/2)\)，也得到参考项的 \(Z_{n,N}^{-m}\) endpoint-renormalized 极限；不另求 absolute cutoff 常数。

## 3. 任意 m 的 second-replica JW 和式

圆周按 \(A_1,B_1,A_2,B_2,\ldots,A_m,C\) 排列。令
\[
r=(r_1,\ldots,r_{m-1}),\qquad r_0=r_m=0,
\quad q_i=r_{i-1}+r_i\pmod2.
\]
q 恰遍历所有总偶的 intervalwise CAR parities。令 \(S_r\) 是插入 \(\prod_{i=1}^{m-1}P_{B_i}^{r_i}\) 的**未归一化 CAR operator**，\(S_0=G\)。取 \(s_m=0\)、\(P_s=\prod_{i=1}^{m-1}P_{A_i}^{s_i}\)。则
\[
\boxed{p_{2,N}^{\rm spin}(A)
=2^{1-m}\sum_{r,s\in\mathbb F_2^{m-1}}
(-1)^{\sum_iq_i s_i}\,W_{r,s,N},\qquad
W_{r,s,N}=\operatorname{Tr}(S_rP_sS_rP_s).}
\tag{3.1}
\]
证明与双区间相同，但用全部 intervalwise parity projectors：
\(\Pi_q=2^{1-m}\sum_{s_m=0}(-1)^{q\cdot s}\operatorname{Ad}P_s\)。局域 JW 与全局 JW 的差在第 i 个 gap 上为 \(r_i=\sum_{k\le i}q_k\)。因此 \(\rho_A^{spin}=\sum_{q\,even}\Pi_q S_{r(q)}\)。这些 parity sectors 在 Hilbert–Schmidt 配对下正交，\(\Pi_q^2=\Pi_q\)，展开平方即得 (3.1)。这给 \(4^{m-1}\) 个有限 terms，而不是只保留 G。

### 3.1 String-free terms 的完整闭式

若 r=0，令 \(\epsilon_j=(-1)^{s_j}\)。由 Wick/Pfaffian polynomial identity，
\[
W_{0,s,N}=2^{-|A|}\det[\operatorname{diag}(\epsilon_j I_{2|A_j|})+\Gamma_A].
\]
每个 block 为偶维，\(\det(-I+\Gamma_{jj})=\det(I+\Gamma_{jj})\)。因此 (1.1) 给
\[
\boxed{\frac{W_{0,s,N}}{\prod_jp_{2,N}(A_j)}
\longrightarrow\prod_{j<k}q_{jk}^{-\epsilon_j\epsilon_k/8}.}
\tag{3.2}
\]
这里每个 term 都非负；但含 string 的 S_r 不正，不能把所有 W 擅取绝对值。

### 3.2 全部 terms 的精确四相位表示

对 auxiliary 2N-site half-filled XX sea，把每个 physical spin 的两个 sites 赋相同 phase：
\[
\lambda_{A_i}=-(-1)^{s_i}\pi/2,\quad
\lambda_{B_i}=-\pi r_i,\quad \lambda_C=0.
\]
则
\[
\boxed{W_{r,s,N}=\widehat\chi_N(\Lambda)
=\det[\cos(\Lambda/2)-\sin(\Lambda/2)\Gamma_N].}
\tag{3.3}
\]
证明：A rows 抽 \(2^{-1/2}\)，再乘 \(\epsilon_i\)；每个 physical site 有两个 rows，故总行乘子 determinant 为1。被插入的 gap sites 对应 cosine zero，得到
\[
2^{-|A|}\det[\operatorname{diag}(D_A,0_{B_r})+\Gamma_{A\cup B_r}].
\]
在 invertible \(\Gamma_{B_r}\) 上作 Schur complement，\(\det\Gamma_{B_r}=t_r^2\)，余下为 \(t_r^2\operatorname{Tr}[G(\Gamma^{S_r})P_sG(\Gamma^{S_r})P_s]\)。等式为 polynomial identity，故也覆盖 \(t_r=0\)；不对 S_r 提前归一化，不选择 principal square root。

记 g=e^{iΛ}。各 A arcs 上 \(g=-i(-1)^{s_i}\)，各 gap 上 \(g=(-1)^{r_i}\)，C 上为1。每个 jump 的 principal increment 恰为 ±π/2。其 winding 是整数
\[
w(r,s)=\frac14\sum_{i=1}^m
\big[(-1)^{s_i+r_i}-(-1)^{s_i+r_{i-1}}\big]
=\sum_{i=1}^m s_i(r_i-r_{i-1}).
\tag{3.4}
\]
最后一式是整数差，不是模2的差。因此
\[
\boxed{(-1)^{q\cdot s}=(-1)^{w(r,s)}.}
\tag{3.5}
\]
有限 Arf-type coefficient 已直接反映在 counting phase 的 winding parity 中。它不决定 W 自身的正负。

## 4. 已证明什么、下一处缺口是什么

(1.1)、(2.1)、(3.2) 是无条件极限定理；(3.1)–(3.5) 是保留全部 signs 的有限恒等式。独立复核已分别检查 m-block determinant 与 parity-projector/winding 代数。

**完整 spin 多区间和式仍需分析 r≠0 的 sector limits。** 非零 winding 给 Hardy near-zero modes 的方向；winding-zero 但含全部四种 phase 的 terms 不能直接套用 (3.2)。需要对这些相对行列式进行 endpoint-localization 或 scalar RH 计算，并与 hyperelliptic spin structures 的 theta constants 对齐。下面先解决全部非零 winding sectors；仍未解决的项随后进一步缩小。

## 5. Jump localization：所有非零 winding sectors 均消失

**定理。** 对任意固定 m，在本篇共同分离的 midpoint endpoints 下，若 (3.4) 的 \(w(r,s)\ne0\)，则
\[
\boxed{\frac{|W_{r,s,N}|}{W_{0,0,N}}
\le C N^{-|w(r,s)|/4}.}
\tag{5.1}
\]
这包括全部 odd coefficient sectors，也包括 \(|w|\ge2\) 的部分 even sectors。不需要完整 FH 渐近。双区间 n=2 时，它将原先的 \(N^{-0.171720\ldots}\) 界改进为 \(N^{-1/4}\)，但仍不声称达到预期最优指数1/2。

### 5.1 一致 trace-class localization lemma

令 \(P=P_N\) 投影到 2N-grid 上的 modes \(0,\ldots,N-1\)。对 unimodular symbol u 定义 \(J_u=[P,D_u]\)。若 g,h 是同一组 finite-N jump positions 上的 piecewise constant symbols，且逐点 jump 差模相同，
\[
|\Delta g_j|=|\Delta h_j|,
\]
则
\[
\boxed{\|J_g^*J_g-J_h^*J_h\|_1\le T,}
\tag{5.2}
\]
T 与 N 无关。共同位置要求是每个 finite N 精确相同，而不只是同一极限位置。

**证明。** 取实光滑平方单位分割 \(\sum_a\psi_a^2=1\)。每个 jump 有一个局部函数 \(\chi_j\)，这些 jump supports 两两不交；其余 \(\psi_a\) 各支撑在一个无 jump 的常值区。所有导数界由固定 separation 控制。写
\[
R=P-\sum_aD_{\psi_a}PD_{\psi_a},\qquad
F(x,y)=1-\sum_a\psi_a(x)\psi_a(y).
\]
F 在对角线至少二阶消失，所以
\(k(x,y)=F(x,y)/(1-e^{i(x-y)})\) 是圆环上的光滑核。半填充有限 projection 的精确几何级数给
\[
R=K_M-ZK_MZ^*,\quad
(K_M)_{ab}=M^{-1}k(\theta_a,\theta_b),
\quad M=2N,\quad Z_{aa}=(-1)^a.
\]
该式包括对角线。若 \(k=\sum_{p,q}\widehat k_{pq}e^{ipx+iqy}\)，每个采样 Fourier term 是 trace norm 为1的 rank-one 矩阵。因此
\[
\|K_M\|_1\le\sum_{p,q}|\widehat k_{pq}|\le C,
\]
平滑性使右侧绝对可和，且 aliasing 不改变这个界。快速振荡由显式酉矩阵 Z 保留，而不是被丢弃。

在 \(\chi_j\) 上，\(u=u_j^-+\Delta u_j H_j\)，H_j 为共同的局部0/1 step。于是
\[
J_u=L_u+E_u,
\quad L_u=\sum_j\Delta u_j D_{\chi_j}[P,D_{H_j}]D_{\chi_j},
\quad E_u=[R,D_u],\quad\|E_u\|_1\le C.
\]
无 jump supports 的 commutator 为零。不同 jump supports 不交，所以 \(L_u^*L_u\) 只含 \(|\Delta u_j|^2\)；g,h 的此项完全相同。又 \(\|J_u\|\le1\)、\(\|L_u\|\le1\)，故余下含 E_u 的差在 trace norm 一致有界，得到 (5.2)。□

### 5.2 将整个 determinant 比值压到近零奇异值

令 \(A_u=PD_uP|_{\operatorname{ran}P}\)，\(X_u=A_u^*A_u\)。压缩 (5.2) 给 \(\|X_g-X_h\|_1\le T\)。取 h 在 A 上为 i、在补区为1；它与任意 (3.3) profile 有相同 jump 模。对 \(B=P\mathbf1_AP\)，
\[
X_h=I-2B+2B^2\ge I/2.
\]
设 \(\mathcal R=X_h^{-1/2}X_gX_h^{-1/2}\)，则 \(\|\mathcal R-I\|_1\le2T\)。按升序排列奇异值 \(s_j=s_j(A_g)\)，min-max 给 \(\lambda_j(\mathcal R)\le2s_j^2\)。对任意固定 r≤N，使用 \(\log t\le t-1\) 控制其余 eigenvalues，得到
\[
\boxed{\frac{|\det A_g|}{|\det A_h|}
\le2^{r/2}e^{T+r/2}\prod_{j=1}^r s_j(A_g).}
\tag{5.3}
\]
零 eigenvalue 时直接成立。这里 determinant 始终限制在 occupied N维空间；整个2N空间的 PDP determinant 恒零，不能混用。

(5.3) 是单个 auxiliary XX determinant 的模，不再平方。若从全空间 \(I-J_u^*J_u\) 入手，两个 half spaces 的奇异值相同给 \(\det(I-J_u^*J_u)=|\det A_u|^4\)，必须取1/4次方才回到本式。

### 5.3 非零 winding 的 |w| 个离散近零模

设正向 jumps 为 \(g_+/g_-=e^{i\pi\sigma_j/2}\)，\(\sigma_j=\pm1\)，\(\sum_j\sigma_j/4=w>0\)。定义 disk branches
\[
f(z)=\prod_{j=1}^{2m}(1-z/\zeta_j)^{-\sigma_j/4},\quad f(0)=1,
\qquad g=c\,z^w f/\bar f.
\]
因此 \(\bar g f=\bar c\,z^{-w}\bar f\)。各因子分别 Taylor 截到 \(k=\lfloor(N-w)/(2m)\rfloor\)，其乘积记 p。于是 \(\deg p\le N-w\)、\(p(0)=1\)。

正 \(\sigma_j\) 的 binomial coefficients 为 \(O(l^{-3/4})\)，Dirichlet 尾界为 \(Ck^{-3/4}/|z-\zeta_j|\)；负 \(\sigma_j\) 的 coefficients 为 \(O(l^{-5/4})\)，绝对尾和为 \(O(k^{-1/4})\)。分离性保证同一点至多靠近一个 singular factor，exact/truncated 因子乘积的离散 L² 范数一致有界。midpoint 恒等式
\[
M^{-1}\sum_{a=0}^{M-1}|z_a-\zeta_j|^{-2}=M/4
\]
与 telescoping product estimate 给
\(\|f-p\|_{\ell^2_M}\le C N^{-1/4}\)。这直接估计采样值，没有交换无限 aliasing sums。

取 \(v_r=z^r p\)，r=0,…,w−1。它们全在 occupied modes；而 \(z^{r-w}\bar p\) 的 modes 全在 \([-N,-1]\)，所以精确属于 empty half space。故
\[
\|P\bar g v_r\|_M\le2\|f-p\|_M\le C N^{-1/4}.
\]
这组 w 个向量统一非退化：\(\sum c_r z^r p\) 的前 w 个 Fourier coefficients 是 diag1 的有限 lower-triangular Toeplitz 矩阵作用于 c，其 coefficients 与 inverse 对 N 一致有界。由 min-max，\(s_1,\ldots,s_w\le C N^{-1/4}\)。w<0 时对 \(\bar g\) 使用同样论证，\(A_{\bar g}=A_g^*\) 奇异值不变。

最后 \(|\det A_g|=|W_{r,s,N}|\)，\(|\det A_h|=W_{0,0,N}>0\)。将 r=|w| 代入 (5.3) 即得 (5.1)。□

## 6. 核验与现在剩下的 balanced sectors

- m-block determinant 的推导由 fresh reviewer 独立得到；它事前未读本篇或其他报告。其完整证明与数值见[独立多区间 Fredholm 报告](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/reviews/ising-multi-fredholm-independent.md>)。
- (3.1)、(3.4)、(3.5) 在独立 CAR 分块推导后经协作核验；另有 m≤7 的 exact parity/winding enumeration，见[互补与多区间代数报告](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/reviews/ising-n3-complement-independent.md>) §7。
- 主代理实际运行[多区间检查程序](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/verification/ising_multi_replica_checks.wl>)：N=6、三个相间单-site区间的 full spin ED purity 与完整16项 FCS 和式之差 \(1.34\times10^{-15}\) 以下；m=2,…,6 全部 winding/Arf labels 精确通过。首次脚本有一个括号语法错误，修复后完整重跑 messages={}；最终输出见[result.txt](</Users/koishi/.codex/mcp-results/evaluate_mathematica-nqcfmu/result.txt>)。
- 同次 finite sample 中，m=3 quarter-phase profile 的 \(\|J_g^*J_g-J_h^*J_h\|_1\) 在 N=12,24,48,96 为2.52645,2.78543,2.89838,2.94357；det ratio/s_min 为1.45942,1.52124,1.55780,1.57869。这只核对 convention 与 boundedness 机制，uniform bound 来自 §5.1 的解析证明。

**剩余问题已经缩小：n=2、任意固定 m 的完整 spin sum，只需计算 winding-zero sectors 的归一化极限并识别 hyperelliptic theta constants。** 所有非零 winding sectors 都由 (5.1) 消失；含全部四种 phase 但总 winding 为零的 sectors，仍不能由 string-free (3.2) 自动推出。\(m\ge3\) 时它们是真正的新项。端点碰撞、m增长及最优修正指数也不在已证范围内。
