# Matrix jump localization: independent theorem and determinant bounds

**结论：成立。** 固定 fiber dimension、共同 finite-grid jump positions 与统一正 separation 下，逐端点右 jump-Gram matrices 的酉等价，足以推出 occupied-space 上某个酉共轭后的统一 trace-norm 比较。不同端点的对齐酉不必相同。局部 Gram 对齐本身只在全空间成立；不能把 smooth multiplication gauge 的 occupied compression 当成酉。下文给出两条完整处理：精确谱二重化的存在性证明，以及允许 compression 有核的 polar-extension 构造。

参考压缩有统一谱隙时，absolute determinant ratio 不仅有任意有限个小奇异值的乘积上界；截去固定低阈值以下的奇异值后，剩余 determinant factor 还统一有界且离零。

日期：2026-11-07。此次只新增本报告，不修改原文、已有报告或索引，不创建项目 JSON。阅读了适用的[根目录规则](</Users/koishi/Documents/Note/AGENTS.md>)、[项目规则](</Users/koishi/Documents/Note/Articles/Quantization in AdS/AGENTS.md>)、[gluing 规则](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/AGENTS.md>)、[当前目录入口](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/README.md>)及[标量基线 §5](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/ising-multi-interval-fredholm.md#L181-L234>)。归档规则要求的 gluing TOPICS 文件在本次读取时不存在。本文不涉及 CPS、replica word map 或 odd-sector 零模构造。

## 1. 对象、约定与精确命题

令
\[
M=2N,\qquad \theta_a=2\pi a/M,\quad 0\le a<M,
\qquad \mathcal H_N=\mathbb C^M\otimes\mathbb C^q.
\]
Fourier 向量为 \(M^{-1/2}(e^{ik\theta_a})_a\)。\(P=P_N\otimes I_q\) 投影到 modes \(0,\ldots,N-1\)，\(Q=I-P\)，occupied dimension 为 \(n=Nq\)。所有 trace norms 均不作维数归一化。

允许 \(g=g_N,h=h_N\) 的值及 jump positions 随 N 变化。它们在同一组有限 N 的 midpoint endpoints \(t_{j,N}\) 之间为常值，取值于 \(U(q)\)。不同端点的圆周距离至少为固定 \(\delta>0\)，因此端点数统一有界；q 也固定。取正向 jump
\[
\Delta u_j=u_j^+-u_j^-,\qquad B_{u,j}=\Delta u_j^*\Delta u_j.
\]
假设每个 j 存在 \(V_j\in U(q)\) 满足
\[
V_j^*B_{g,j}V_j=B_{h,j}.
\tag{1.1}
\]
定义
\[
D_u=\operatorname{diag}(u(\theta_a)),\quad
J_u=[P,D_u],\quad
A_u=PD_uP|_{P\mathcal H_N},\quad X_u=A_u^*A_u.
\]
因为 \(D_u\) 酉，\(0\le X_u\le I\)。

**定理 1。** 存在只依赖 q、统一 separation 及其端点数上界的常数 T，使每个 N 都有 occupied-space unitary \(U_N\) 满足
\[
\boxed{\|U_N^*X_gU_N-X_h\|_1\le T.}
\tag{1.2}
\]
更精确地，若 \(x_{u,1}\le\cdots\le x_{u,n}\) 是 \(X_u\) 的 eigenvalues，则
\[
\boxed{
\min_{U\in U(n)}\|U^*X_gU-X_h\|_1
=\sum_{k=1}^n|x_{g,k}-x_{h,k}|\le T.
}
\tag{1.3}
\]
T 不依赖 symbol values、所选局部对齐酉或 N。

## 2. 统一 trace-class localization

取实光滑平方 partition \(\sum_a\psi_a^2=1\)。每个 jump 有一个 \(\chi_j\)，等于 1 于较小 endpoint collar，支撑于稍大 collar；这些 jump supports 两两不交。其余 partition functions 的支撑各包含于一个无 jump 的常值区。固定 separation 保证所需各阶导数界统一。

先只在 scalar grid space 上写
\[
R_0=P_N-\sum_aD_{\psi_a}P_ND_{\psi_a},\qquad
F(x,y)=1-\sum_a\psi_a(x)\psi_a(y).
\]
由平方 partition，
\[
F(x,y)=\tfrac12\sum_a(\psi_a(x)-\psi_a(y))^2.
\]
故 F 在圆环对角线上二阶消失，
\[
k(x,y)=\frac{F(x,y)}{1-e^{i(x-y)}}
\]
有光滑延拓，其对角值为零。有限 Fourier sum 精确给出
\[
R_0=K_M-ZK_MZ^*,\qquad
(K_M)_{ab}=M^{-1}k(\theta_a,\theta_b),\qquad
Z_{aa}=e^{iN\theta_a}=(-1)^a.
\tag{2.1}
\]
这包含对角线，并未丢掉快速振荡项。

若 \(k(x,y)=\sum_{p,r}\widehat k_{pr}e^{ipx+iry}\)，每个采样 Fourier term 是 trace norm 为 1 的 rank-one matrix。因此
\[
\|R_0\|_1\le 2\sum_{p,r}|\widehat k_{pr}|\le C_\delta.
\tag{2.2}
\]
光滑性给 Fourier 系数绝对可和；sampling aliasing 不增加此三角不等式上界。令 \(R=R_0\otimes I_q\)，记其统一界为
\[
\|R\|_1\le\rho.
\tag{2.3}
\]

在 \(\chi_j\) 支撑内写 \(u=u_j^-+H_j\Delta u_j\)，其中 \(H_j\) 是共同的 0/1 step。它在支撑外可任意延拓；圆周上可能出现的第二个 jump 不影响下列局部 operator。设
\[
C_j=D_{\chi_j}[P_N,D_{H_j}]D_{\chi_j},\qquad
L_u=\sum_j C_j\otimes\Delta u_j.
\]
则有精确分解
\[
J_u=L_u+E_u,\qquad E_u=[R,D_u],\qquad
\|E_u\|_1\le2\rho.
\tag{2.4}
\]
无 jump 的 partition terms 的 commutator 为零。

相对于 \(P\oplus Q\)，\(J_u\) 是两个 contractions 组成的 off-diagonal block matrix，所以 \(\|J_u\|\le1\)。每个局部项也等于 \(D_{\chi_j}J_uD_{\chi_j}\)，而 jump supports 不交，故 \(\|L_u\|\le1\)。于是
\[
\|J_u^*J_u-L_u^*L_u\|_1
\le(\|J_u\|+\|L_u\|)\|E_u\|_1\le4\rho.
\tag{2.5}
\]
不同 j 的局部项乘积为零，因而
\[
\boxed{L_u^*L_u=\sum_j C_j^*C_j\otimes B_{u,j}.}
\tag{2.6}
\]
这里出现的是题设指定的右 Gram \(\Delta u_j^*\Delta u_j\)，不是未经说明改用的左 Gram。

## 3. 全空间对齐与 occupied-space 存在性

取任意 fiber multiplication unitary \(V=D_{v}\)，令 \(v(\theta)=V_j\) 于 \(\chi_j\) 的整个支撑。其余点可任意取值于 \(U(q)\)。本节不要求它光滑，也不要求它与 P 对易。由 (1.1)、(2.6)，
\[
V^*L_g^*L_gV=L_h^*L_h.
\]
因此
\[
\boxed{\|V^*J_g^*J_gV-J_h^*J_h\|_1\le8\rho.}
\tag{3.1}
\]

### 3.1 精确二重谱

把任意全空间酉 \(D_u\) 按 \(P\oplus Q\) 写成
\[
D_u=\begin{pmatrix}a&b\\c&d\end{pmatrix},\qquad a=A_u,
\qquad
J_u^*J_u=\begin{pmatrix}c^*c&0\\0&b^*b\end{pmatrix}.
\]
酉性给
\[
c^*c=I-a^*a,
\qquad bb^*=I-aa^*.
\]
由于 a 为 n×n，\(a^*a\) 与 \(aa^*\) 同谱；半填充又使 b 为 n×n，因此 \(b^*b\) 与 \(bb^*\) 同谱。故
\[
\boxed{\operatorname{spec}(J_u^*J_u)
=\operatorname{spec}(I-X_u)\sqcup\operatorname{spec}(I-X_u).}
\tag{3.2}
\]
这是精确 finite-dimensional identity，无极限或 generic-invertibility 假设。

### 3.2 自足的 eigenvalue trace-distance lemma

对同维 Hermitian matrices H、K，令其 eigenvalues 同向排序为 \(\lambda_j(H),\lambda_j(K)\)。则
\[
\sum_j|\lambda_j(H)-\lambda_j(K)|\le\|H-K\|_1.
\tag{3.3}
\]
一个简短证明是写 \(H-K=E_+-E_-\)。由 \(H\le K+E_+\) 及 min-max，
\(\lambda_j(H)\le\lambda_j(K+E_+)\)。因为后一组 eigenvalues 逐项不小于 \(\lambda_j(K)\)，只对 \(\lambda_j(H)>\lambda_j(K)\) 求和，得到正差之和不超过 \(\operatorname{tr}E_+\)。交换 H、K 得负差之和不超过 \(\operatorname{tr}E_-\)，相加即 (3.3)。

任意酉共轭都保谱，故 (3.3) 给 (1.3) 的下界；把两组同序 eigenbases 对齐就达到该下界。

将 (3.3) 用于 (3.1)，再用 (3.2)，得到
\[
2\sum_{k=1}^n|x_{g,k}-x_{h,k}|\le8\rho.
\]
故定理 1 成立，可以取
\[
\boxed{T=4\rho.}
\tag{3.4}
\]

**重要区别：** 本节并未压缩 V 后声称它是酉。全空间对齐只用来比较精确二重谱，最后的 occupied-space U 由 eigenbases 对齐构造。这已经完整证明所问的存在性，并且规避了任何 smooth-gauge index 问题。

## 4. 若坚持 smooth gauge：非对易误差与 polar extension

本节独立给出 gauge-based occupied-space 构造，显式处理 \([P,V]\ne0\)，不把它藏在“光滑误差”一句话中。

### 4.1 统一光滑插值

可要求 v 在 jump collars 上精确等于 \(V_j\)。在两个 collar 之间的无 jump 区间，用
\[
v(t)=V_j e^{i\eta(t)H_j},\qquad
 e^{iH_j}=V_j^*V_{j+1},\quad H_j=H_j^*,\quad\|H_j\|\le\pi,
\]
连接；\(\eta\) 从 0 到 1，且在两端平坦。最后一段连接最后一个 \(V_j\) 到第一个。固定 separation 使这些插值区间有统一正长度，故 v 的各阶导数统一有界，不要求各个 \(V_j\) 随 N 连续选择。

对 matrix-valued smooth kernel
\[
c_v(x,y)=\frac{v(y)-v(x)}{1-e^{i(x-y)}}
\]
取对角线的可去奇点延拓。它光滑且所需导数统一有界。与 (2.1) 相同的精确 kernel 分解给
\[
[P,V]=K_v-ZK_vZ^*,\qquad
(K_v)_{ab}=M^{-1}c_v(\theta_a,\theta_b).
\]
此式对角线两项自行抵消。逐个 matrix Fourier coefficient 的 rank-one tensor 展开给
\[
\|[P,V]\|_1\le2\sum_{p,r}\|\widehat c_{v,pr}\|_1\le C_{\delta,q}.
\tag{4.1}
\]

### 4.2 压缩可以有核，但离某个酉只有 O(1) trace norm

令
\[
T_0=PVP|_{P\mathcal H_N},\qquad W=QVP,
\qquad d_N=\operatorname{tr}(I-T_0^*T_0)=\|W\|_2^2.
\]
由酉性及 (4.1)，
\[
I-T_0^*T_0=W^*W,
\qquad d_N\le\|W\|_1\le\|[P,V]\|_1=O(1).
\tag{4.2}
\]
这里使用了 \(\|W\|\le1\)。取 T₀ 的 SVD，并将 partial polar isometry 在 kernel/cokernel 上任意扩充为酉 \(U_{\rm pol}\)。若 \(t_k\in[0,1]\) 为 T₀ 的 singular values，则
\[
\boxed{
\|U_{\rm pol}-T_0\|_1
=\sum_k(1-t_k)
\le\sum_k(1-t_k^2)=d_N.
}
\tag{4.3}
\]
无需 \(T_0\) 可逆，也无需 uniform lower singular-value bound。

### 4.3 压缩 full comparison 的全部误差

记 \(\mathcal B_u=J_u^*J_u\)。它与 P 精确对易，且 \(0\le\mathcal B_u\le I\)。因此
\[
PV^*\mathcal B_gVP
=T_0^*\mathcal B_{g,P}T_0+W^*\mathcal B_{g,Q}W.
\]
第二项为正，trace norm 不超过 \(d_N\)。由 (3.1)，
\[
\|T_0^*\mathcal B_{g,P}T_0-\mathcal B_{h,P}\|_1
\le8\rho+d_N.
\]
把 T₀ 换为 \(U_{\rm pol}\) 的成本不超过
\[
2\|U_{\rm pol}-T_0\|_1\le2d_N.
\]
又 \(\mathcal B_{u,P}=I-X_u\)，故
\[
\boxed{\|U_{\rm pol}^*X_gU_{\rm pol}-X_h\|_1
\le8\rho+3d_N=O(1).}
\tag{4.4}
\]
这条构造的常数不如 (3.4)，但给出了与所选 smooth gauge 相关联的 occupied-space unitary。

### 4.4 “smooth 所以 PVP 是酉／可逆”的精确反例

取 \(v(e^{i\theta})=e^{i\theta}I_q\)。这甚至是单个 Fourier monomial。乘法将 mode k 送到 k+1，故 T₀ 是 occupied modes 上的 truncated shift：
\[
T_0 e_k=e_{k+1}\quad(0\le k<N-1),\qquad T_0e_{N-1}=0.
\]
它有 q 维 kernel，绝非酉或可逆。其余 singular values 全为 1，因此 \(d_N=q\)。把截断 shift 补成 cyclic shift 即得酉 \(U_{\rm pol}\)，且
\[
\|U_{\rm pol}-T_0\|_1=q=d_N.
\]
这也说明 (4.3) 正确容纳了 nonzero winding/index，而不能改成使用未经证明存在的 \((T_0^*T_0)^{-1/2}\)。

## 5. Absolute determinant ratio：统一上界及阈值双边界

额外假设参考矩阵满足
\[
Y=X_h\ge cI,\qquad 0<c\le1,
\tag{5.1}
\]
其中 c 与 N 无关。以下 T 可取任一已证 occupied trace-distance 常数，最优谱比较可用 (3.4)。令 \(s_1\le\cdots\le s_n\) 为 \(A_g\) 的 singular values。

**定理 2。** 对任意整数 \(0\le r\le n\)，
\[
\boxed{
\frac{|\det A_g|}{|\det A_h|}
\le e^{T/(2c)}c^{-r/2}\prod_{j=1}^r s_j.
}
\tag{5.2}
\]
同一常数对所有 r、N 有效。r=0 时乘积按 1 解释；存在 zero singular value 时按连续性或直接用零 determinant 解释。

**证明。** 令 \(\widetilde X=U^*X_gU\)，并设
\[
\mathcal R=Y^{-1/2}\widetilde X Y^{-1/2}.
\]
则
\[
\|\mathcal R-I\|_1\le T/c,
\qquad
\frac{|\det A_g|}{|\det A_h|}=\sqrt{\det\mathcal R}.
\]
广义 Rayleigh quotient 的 min-max 给同序 eigenvalues
\[
\lambda_j(\mathcal R)\le s_j^2/c.
\]
其余 eigenvalues 使用
\[
\prod_{j>r}\lambda_j
\le\exp\!\left(\sum_{j>r}(\lambda_j-1)\right)
\le\exp\!\left(\sum_j(\lambda_j-1)_+\right)
\le e^{T/c}.
\]
开平方即得 (5.2)。这里无需额外的 \(e^{r/2}\)：既然已有 trace-norm bound，可直接控制 positive part。□

**更强的阈值结论。** 固定 \(a\in(0,c)\)，令
\[
r_N(a)=\#\{j:s_j^2<a\},\qquad
p_N(a)=\prod_{j=1}^{r_N(a)}s_j.
\]
则
\[
\boxed{r_N(a)\le\frac{T}{c-a},}
\tag{5.3}
\]
并且
\[
\boxed{
e^{-T/(2a)}p_N(a)
\le\frac{|\det A_g|}{|\det A_h|}
\le e^{T/(2c)}c^{-r_N(a)/2}p_N(a).
}
\tag{5.4}
\]
由于 \(r_N(a)\) 统一有界，两边 prefactors 都与 N 无关。

证明只需 (1.3)：同序写 \(x_j=s_j^2\)、\(c\le y_j\le1\)，则 \(\sum_j|x_j-y_j|\le T\)。每个 \(x_j<a\) 对此和至少贡献 \(c-a\)，给 (5.3)。分离这些小 eigenvalues 后，其余 \(x_j\ge a\)，故
\[
-\frac{(y_j-x_j)_+}{a}
\le\log x_j-\log y_j
\le\frac{(x_j-y_j)_+}{c}.
\]
小 eigenvalues 的 denominator factors 满足
\(1\le y_j^{-1/2}\le c^{-1/2}\)。乘积即给 (5.4)。若 p=0，两侧及 ratio 均为零。

因此在固定参考 gap 下，absolute determinant ratio 的任何消失都可统一归约为有限个低阈值 singular values 的乘积；若没有这些 small values，则 ratio 统一有正下界。这不声称 ratio 必有极限，也不计算其极限常数。

## 6. 不能把酉对齐从命题中删除

即使 q=2，固定原 fiber 坐标中的 \(\|X_g-X_h\|_1=O(1)\) 也不成立。取 scalar half-circle sign symbol
\[
u_a=\begin{cases}1,&0\le a<N,\\-1,&N\le a<2N,\end{cases}
\qquad g=\operatorname{diag}(u,1),\quad h=\operatorname{diag}(1,u).
\]
二者 jump-Grams 逐点酉等价，甚至同一个 constant swap 就能对齐；但
\[
\|X_g-X_h\|_1=2\operatorname{tr}(I-A_u^*A_u).
\]
离散 Fourier coefficient 在 odd \(1\le d\le N\) 满足
\[
|\widehat u_d|=\frac1{N|\sin(\pi d/(2N))|}\ge\frac2{\pi d}.
\]
对每个此类 d，至少有 d 个 occupied-to-empty mode pairs 贡献该 Fourier coefficient，故
\[
\operatorname{tr}(I-A_u^*A_u)=\|QD_uP\|_2^2
\ge\frac4{\pi^2}\sum_{\substack{1\le d\le N\\d\ \mathrm{odd}}}\frac1d
\longrightarrow\infty.
\]
所以矩阵推广的自然结论确实是酉轨道间的 O(1) trace distance，而不是未经对齐的原坐标比较。

## 7. 有限检验、独立性与证明边界

### 7.1 非共同 global conjugacy 的 q=2 检验

在四个等长 grid arcs 上取
\[
g=(I,G_1,I,G_2),\qquad h=(I,G_1,I,RG_2R^*),
\]
其中
\[
G_1=\operatorname{diag}(e^{i\pi/3},e^{-i\pi/6}),\quad
G_2=\operatorname{diag}(e^{i\pi/4},e^{-i\pi/3}),\quad
R=2^{-1/2}\begin{pmatrix}1&-1\\1&1\end{pmatrix}.
\]
实际 endpoints 取相邻取值 grid cells 之间的 midpoint，故每个 finite N 的 g、h 完全共享跳点。

Wolfram 精确检查：逐端点 Gram conjugacy 成立；g 的两个不同 Gram matrices 彼此对易，h 对应的两个不对易。因此不存在一个共同 constant unitary 同时对齐全部 Gram matrices。所有 symbol values 的 Hermitian part 都至少为 \(I/2\)，所以参考 \(X_h\ge I/4\)。直接构造 occupied compressions 得：

| N | 最优酉轨道 trace distance \(\sum|x_{g,j}-x_{h,j}|\) | 原坐标 \(\|X_g-X_h\|_1\) | absolute determinant ratio | \(\lambda_{\min}(X_h)\) |
|---:|---:|---:|---:|---:|
| 8 | 0.292345081 | 0.471246310 | 1.050338112 | 0.767167389 |
| 16 | 0.288882886 | 0.538438119 | 1.050738554 | 0.748233468 |
| 32 | 0.278597225 | 0.588350881 | 1.050967160 | 0.736606201 |
| 64 | 0.264909994 | 0.632175737 | 1.051081540 | 0.729348547 |

这只检查非共同 global conjugacy 情形的 finite examples，不把数值趋势当作 N-uniform proof。另精确检查 7×7 truncated shift：rank=6，\(\operatorname{tr}(I-T_0^*T_0)=1\)，补成 cyclic unitary 后 \(\|T_0-U\|_1=1\)，\(U^*U=I\)。计算无 Wolfram messages。

### 7.2 Verification status

- **Verified, analytically:** matrix localization 的右 Gram 结构；局部酉对齐；精确二重谱；occupied eigenvalue l1 bound；smooth gauge 的 trace-class commutator；有核 compression 的 polar extension 及全部压缩误差；任意 r 的 determinant upper bound；固定阈值的 count 与双边 product bounds；删除酉对齐后的严格反例。
- **Verified, CAS / finite examples:** 上述 q=2 jump-Gram identities、没有共同 constant conjugator 的 commutator obstruction、四个 finite sizes、exact truncated-shift polar example。
- **Independent-review boundary:** 本报告作者从题设及标量基线独立推导。当前 delegated session 的 delegation depth 已到上限，无法另开 fresh reviewer；已将 smooth-gauge/polar、二重谱及 determinant 主张发回 parent，供其另行独立复核。本报告不将自己的两条证明或 Wolfram 实现冒充另一位 fresh reviewer。
- **Assumptions retained:** q fixed；uniform endpoint separation；每个 finite N 的共同 jump positions；symbols 真正 unitary；determinants 只在 n=Nq 维 occupied space 上取；determinant corollaries 额外需要统一参考 gap。
- **Not claimed:** endpoint collision 的一致常数、q 随 N 增长时的 O(1)、nonunitary symbols 的同一结论、determinant ratio 的极限或 phase、matrix RH/theta identification、任意 replica word 的适用性、small singular values 的产生机制。
