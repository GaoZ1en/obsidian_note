# Contact 谱的进一步结构：相邻次数秩定理与非零谱上端

## 新结果与边界

本文在已有平衡块定理之后继续推进，不修改先前笔记、脚本或结果。始终采用
\[
c_k=\frac{1}{8\pi(2\Delta+2k-1)},\qquad \Delta>1,
\quad H_{\mathrm{eff}}=H_0+\lambda W+O_{\mathrm{formal}}(\lambda^2),
\]
以及标号粒子的乘积 Bargmann 内积
\(\|\prod_i z_i^{p_i}w_i^{q_i}\|^2=\prod_i p_i!q_i!/[(\Delta)_{p_i}(\Delta)_{q_i}]\)。物理空间为平移不变、同时 \(S_N\) 不变的双齐次多项式。

本轮得到三个解析结果。

1. **相邻次数的完整秩与零模计数，所有 \(\Delta>1\)**：
   \[
   \boxed{N=3,\ (P,Q)=(Q+1,Q):\quad\operatorname{rank}W=Q.}
   \]
   反射给出 \((Q,Q+1)\)。这不仅构造一条普遍关系，而且证明它是唯一关系。因而先前非平衡猜想的整个 \(|P-Q|=1\) 带已提升为定理。
2. **任意 \(N\ge3\) 的非零谱上端不变软到零**：在每个平衡块 \((P,P)\)，
   \[
   \boxed{\binom{N-1}{2}c_0\le\lambda_{\max}(W)\le\binom N2c_0.}
   \]
   因而 \(\lambda_{\max}/[\binom N2c_0]\to1\) 在大 \(N\) 时对 \(P\) 一致成立。它与固定 \(N\) 的正谱经验测度趋于 \(\delta_0\) 完全相容：绝大多数正本征值变软，并不意味着最大的正本征值也趋零。
3. **三粒子平衡谱的逐个本征值极限**：将正本征值降序排列为 \(e_1(P)\ge e_2(P)\ge\cdots\)，则每个固定 \(j\ge1\) 满足
   \[
   \boxed{\lim_{P\to\infty}e_j(P)=c_{j-1}
   =\frac{1}{8\pi(2\Delta+2j-3)}.}
   \]
   这是实际物理系数的极限，不是把全部 \(c_k\) 换成 \(1\) 的控制算子。证明给出辅助通道压缩算子的算子范数收敛。

尚未解决的是三粒子 \(|P-Q|\ge2\) 的一般精确秩、任意 \(N\ge4\) 的完整核及逐个正本征值极限。这些结果也不确定最小正本征值的精确尺度。

独立新实现：[contact2_rectangular.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/scripts/contact2_rectangular.py>)；精确证书与示例：[contact2_rectangular.json](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/results/contact2_rectangular.json>)。实现不导入旧审计脚本或归档引擎。

## 1. 三粒子算子约定

记单侧 degree \(n\) primary 空间为
\[
U_n=\ker J_-\cap\mathbb C[z_1,z_2,z_3]_n,
\quad J_\pm=\sum_iJ_i^\pm,
\quad J_i^- =\partial_{z_i},\quad
J_i^+=z_i^2\partial_{z_i}+\Delta z_i,
\quad J_i^0=z_i\partial_{z_i}+\frac\Delta2.
\]
\(J_-^\dagger=J_+\)，\(\dim U_n=n+1\)。令
\[
A_n=C_{12}|_{U_n},\quad B_n=C_{23}|_{U_n},\quad C_n=C_{13}|_{U_n},
\quad A_n+B_n+C_n=s_nI,
\]
\[
s_n=n(n+3\Delta-1)+3\Delta(\Delta-1),\qquad
\lambda_k=(\Delta+k)(\Delta+k-1).
\]
这里 \(C_n\) 是第三个 pair Casimir，不是特征值 \(\lambda_k\)。

采用相对坐标
\[
r=z_1-z_2,\qquad u=\frac{z_1+z_2}{2}-z_3.
\]
\(A_n\) 的本征向量固定首项为
\[
f_{n,k}=r^ku^{n-k}+O(r^{k+2}),\qquad k=0,\ldots,n,
\quad A_nf_{n,k}=\lambda_kf_{n,k}.
\]
不同 \(k\) 的向量正交，范数记 \(g_{n,k}>0\)。在这一非单位基中，
\[
(B_n)_{k-1,k}=-k(n-k+\Delta),\qquad
(B_n)_{jk}=0\quad(|j-k|>1). \tag{1.1}
\]
前者由 \(r\) 的最低次项直接得到，另一侧带宽由自伴性得到；因此相邻非对角元均不为零。此三对角事实也是先前平衡秩定理的核心，详见 [structural comparison.md](</Users/koishi/Documents/Note/Articles/Quantization in AdS/linearized gravity/Einstein scalar spectrum/independent audit and phi4 comparison/structural comparison.md>)。

用实的物理双线性内积识别 \(U_P\otimes U_Q\) 与 \(\operatorname{Hom}(U_Q,U_P)\)。物理态对应同时置换下的不变映射。等 pair 标签子空间对应满足
\[
A_PT=TA_Q
\]
的矩形对角映射。Bose 平均记 \(\Gamma\)。由正性及三对粒子的置换共轭关系，
\[
\operatorname{rank}W=\operatorname{rank}\bigl(\Gamma|_{\text{等标签映射}}\bigr). \tag{1.2}
\]
这是已证明的单 pair 约束与其伴随的秩等式，单独的 pair 投影不必保持 Bose 子空间。下面研究的是这些等通道像之间的线性关系，**不是**把一个平均为零的非物理向量冒充非零 Bose 零模。

## 2. 投影后的单粒子升算子：构造普遍关系

固定 \(Q\ge0\)、\(P=Q+1\)，令 \(\Pi_P\) 为全 degree \(P\) 空间到 primary 的正交投影，并定义
\[
T_i=\Pi_PJ_i^+|_{U_Q}:U_Q\longrightarrow U_P,
\qquad h=\frac{3\Delta}{2}+Q.
\]
对 \(v\in U_Q\)，可不求整个投影矩阵而直接写出
\[
\boxed{T_iv=J_i^+v-\frac{J_+J_i^0v}{h}
+\frac{J_+^2J_i^-v}{2h(2h-1)}.} \tag{2.1}
\]
验证方法是使用 \([J_-,J_i^+]=2J_i^0\)、\([J_-,J_i^0]=J_i^-\)：右端被 \(J_-\) 消灭，而所减项都在 \(\operatorname{im}J_+\)，与 primary 正交，故确实是正交投影。

它具有三项决定性性质：

- \(\sum_iT_i=0\)，因为 \(\sum_iJ_i^0=h\)、\(J_-v=0\)。
- \(T_i\) 与**另外两粒子**的 Casimir 交织；该 Casimir 与 \(J_i^{\pm,0}\) 及总 \(J_\pm\) 都对易。
- \(T_i^\dagger=J_i^-|_{U_P}\)，因为 \(J_i^-\) 把 degree \(P\) primary 映到 degree \(Q\) primary。

令
\[
D=T_3,\qquad U=T_1,\qquad V=T_2.
\]
于是 \(D\) 在 \(A\) 的本征基中为矩形对角，\(U,V\) 分别交织 \(B,C\)，并且
\[
D+U+V=0,\qquad
\Gamma(D)=0. \tag{2.2}
\]

### 2.1 这条关系非零，而且每个对角位置都非零

由于 \(J_3^-=-\partial_u\) 与 \(A\) 对易，
\[
J_3^-f_{P,k}=-(P-k)f_{Q,k}\quad(k\le Q).
\]
物理伴随关系给出
\[
D_{kk}=-(P-k)\frac{g_{Q,k}}{g_{P,k}}<0. \tag{2.3}
\]
它也有显式闭式
\[
\boxed{D_{kk}=-\frac{(Q+k+2\Delta)(Q-k+\Delta)(Q+k+3\Delta-1)}
{(3\Delta+2Q)(3\Delta+2Q-1)},\qquad0\le k\le Q.} \tag{2.4}
\]
故 \(D\) 为单射。式 (2.2) 是等通道 Bose 平均的一条真正非零关系，而非形式上的 \(0=0\)。

## 3. 矩形带宽论证：证明没有第二条关系

每个矩形对角映射唯一写为
\[
D f(A_Q),\qquad\deg f\le Q,
\]
因为 \(D\) 的所有对角元非零。置换平均消失等价于
\[
D f(A_Q)+U f(B_Q)+V f(C_Q)=0. \tag{3.1}
\]
常数 \(f\) 已由 (2.2) 给出核方向。下面排除所有正次数。

### 3.1 升映射本身的三对角性

式 (2.1) 中总 \(J_+\) 保持 \(r\) 的消失阶数，而局部算子最多降低一次，故 \(U_{jk}=0\) 当 \(j<k-1\)。从伴随 \(U^\dagger=J_1^-\) 同样得到 \(j>k+1\) 时为零。因此 \(U\) 是 \((Q+2)\times(Q+1)\) 的三对角矩阵。又因
\(J_1^-=\partial_r+\tfrac12\partial_u\)，
\[
\boxed{U_{j,j-1}=j\frac{g_{Q,j-1}}{g_{P,j}}\ne0,
\qquad1\le j\le Q+1.} \tag{3.2}
\]
\(V=-D-U\) 的非对角元与 \(U\) 相反。由 (1.1)、(2.3) 和物理自伴性，还得到一个简单而关键的比值：
\[
\boxed{\frac{D_{jj}(B_Q)_{j,j-1}}{U_{j,j-1}}
=(Q+1-j)(Q-j+\Delta).} \tag{3.3}
\]
在末行 \(j=Q+1\) 上，把左侧的对角贡献视为零，右侧也为零。

### 3.2 最高次数必被消去

写 \(f(t)=a_mt^m+a_{m-1}t^{m-1}+\cdots\)、\(a_m\ne0\)、\(1\le m\le Q\)。

若 \(m\) 为奇数，取 (3.1) 距主对角线 \(m+1\) 的**下**对角元。\(D f(A_Q)\) 无贡献，其余贡献为
\[
2a_mU_{i+m+1,i+m}\prod_{j=i}^{i+m-1}(B_Q)_{j+1,j}\ne0,
\]
立刻矛盾。

若 \(m\ge2\) 为偶数，最外层抵消，取距主对角线 \(m\) 的下对角元。除去非零公共因子
\(U_{i+m,i+m-1}\prod_{j=i}^{i+m-2}(B_Q)_{j+1,j}\)，条件为
\[
a_mF_i+2a_{m-1}=0,\qquad i=0,\ldots,Q+1-m, \tag{3.4}
\]
其中
\[
F_i=\sum_{j=i}^{i+m-1}(s_Q-\lambda_j)
-(Q+1-i-m)(Q-i-m+\Delta). \tag{3.5}
\]
第一个和来自矩阵幂路径的一次对角停留，第二项正是 (3.3) 的对角升映射贡献。不能沿用方阵证明而漏掉这一项。

- 若 \(m<Q\)，至少有三个相邻的起点，而
  \[
  F_{i+2}-2F_{i+1}+F_i=-2(m+1)\ne0.
  \]
  所以 \(F_i\) 不可能全相等，与 (3.4) 矛盾。
- 若 \(m=Q\) 为偶数，只有两个起点，但
  \[
  F_1-F_0=-(2Q-1)\Delta-Q(Q-1)<0,
  \]
  仍然矛盾。

所以只有常数 \(f\) 能在 (3.1) 中消失。等标签空间维数为 \(Q+1\)，其 Bose 平均核恰为一维。结合 (1.2)，得到
\[
\boxed{\operatorname{rank}W_{3;Q+1,Q}=Q
\quad(Q\ge0,\ \Delta>1).} \tag{3.6}
\]
这里 \(Q=0\) 的 physical 空间本身为零，公式仍一致。

### 3.3 完整计数与尚未解决的非平衡块

\(S_3\) 字符计数给出
\[
d_3(Q+1,Q)=\frac{(Q+1)(Q+2)-2\mathbf1_{3\mid Q}}6.
\]
于是
\[
\boxed{\dim\ker W_{3;Q+1,Q}
=\frac{Q^2-3Q+2-2\mathbf1_{3\mid Q}}6.} \tag{3.7}
\]
前几个 \(Q=0,1,2,3,4,5,6\) 的核维数为 \(0,0,0,0,1,2,3\)。首次非零在 \((5,4)\)。这说明“等通道像有一条关系”不等于“每个这样的 physical 块都有零模”。

本轮没有证明 \(P\ge Q+2\) 的剩余猜想
\[
\operatorname{rank}W\stackrel{?}=\min\{d_3(P,Q),Q+1\}.
\]
进一步路线是研究 \(\Pi_P(J_i^+)^{P-Q}|_{U_Q}\) 的较宽带矩形结构；它仍交织互补 pair Casimir，但 \(P-Q\ge2\) 时不再有 \(\sum_iT_i=0\) 这一简单关系，必须重新分析对角与端点项。本文不把相邻带的证明自动外推过去。

## 4. 任意 \(N\ge3\)：单粒子激发簇给出的谱上端界

令 \(\mathcal T=\binom N2\)，固定平衡次数 \(P\)。记 \(\Pi_P^{\rm prim}\) 为单侧总 primary 正交投影，取
\[
v_i=\frac{\Pi_P^{\rm prim}z_i^P}{\|\Pi_P^{\rm prim}z_i^P\|},
\qquad i=1,\ldots,N.
\]
分母非零：\(z_i^P\) 与 primary \((z_i-z_j)^P\) 的内积非零。投影和置换可交换，所以 \(U_\sigma v_i=v_{\sigma(i)}\)，所有向量可取实，且存在同一个实数 \(\rho\) 满足 \(\langle v_i,v_j\rangle=\rho\)（\(i\ne j\)）。

更重要的是，任何**不含 \(i\)** 的 pair 在 \(v_i\) 上都有标签 \(k=0\)：该 Casimir 在 \(z_i^P\) 上就是 \(C_0\)，并与总 primary 投影可交换。这对应其余 \(N-1\) 个粒子保留最低内部相对通道，而由粒子 \(i\) 携带相对总次数。

令
\[
d_i=v_i\otimes v_i,\quad a=\rho^2\in[0,1],\quad
x=\sum_{i=1}^Nd_i,\quad y=\sum_{i=3}^Nd_i.
\]
\(x\) 是非零 physical 向量，\(y\) 在 pair \((12)\) 的左右 \(k=0\) 子空间内。记 \(h=1+(N-1)a\)，直接有
\[
\|x\|^2=Nh,\qquad
\|y\|^2=(N-2)[1+(N-3)a],\qquad
\langle y,x\rangle=(N-2)h.
\]
令 \(Q_{12,0}=P^L_{12,0}P^R_{12,0}\)。正交投影的 Cauchy 不等式给出
\[
\frac{\|Q_{12,0}x\|^2}{\|x\|^2}
\ge\frac{|\langle y,x\rangle|^2}{\|y\|^2\|x\|^2}
=\frac{(N-2)[1+(N-1)a]}{N[1+(N-3)a]}.
\]
因此用归一化的 \(x\) 作试探态，
\[
\lambda_{\max}(W)\ge\binom{N-1}{2}c_0
\frac{1+(N-1)a}{1+(N-3)a}
\ge\binom{N-1}{2}c_0.
\]
实际 contact 系数严格递减，故另一方面 \(W\le\mathcal T c_0I\)。最终得到
\[
\boxed{\frac{\binom{N-1}{2}}{8\pi(2\Delta-1)}
\le\lambda_{\max}(W_{N;P,P})
\le\frac{\binom N2}{8\pi(2\Delta-1)}.} \tag{4.1}
\]
这是每个有限 \(N\ge3,P\ge0\) 的界，不只是渐近论证。\(P=0\) 时 \(a=1\)，精细试探界达到上界。

还可得出一个真正**对次数一致**的大粒子数结论：
\[
1-\frac2N\le\frac{\lambda_{\max}(W)}{\binom N2c_0}\le1.
\]
故任意 \(P=P(N)\) 下，归一化谱上端都趋于 \(1\)。这是有限不等式直接给出的结论，不把先前固定 \(N\) 的 bulk-rank 渐近冒充一致极限。

与已有的固定 \(N\) 正谱经验测度趋零、正谱均值 \(\Theta(\log P/P)\) 结合，可见谱同时具有稀疏的有限能量上端和大量软正本征值；不能从经验测度收敛推断整个算子范数趋零。

## 5. 三粒子逐个正本征值的精确极限

### 5.1 范数与 endpoint 重耦合系数

把粒子 \(12\) 先耦合到 pair 标签 \(k\)，再与第三粒子耦合。两个正离散系列的最低向量范数可用有限 Chu–Vandermonde 和直接求得：
\[
\|(x-y)^n\|^2
=\frac{n!(\alpha+\beta+n-1)_n}{(\alpha)_n(\beta)_n},
\]
其中单项式范数参数分别为 \(\alpha,\beta\)。依次应用于 \((\alpha,\beta)=(\Delta,\Delta)\) 和 \((2\Delta+2k,\Delta)\)，得到本文首项归一化下的
\[
\boxed{g_{P,k}=
\frac{k!(2\Delta+k-1)_k}{(\Delta)_k^2}
\frac{(P-k)!(3\Delta+P+k-1)_{P-k}}
{(2\Delta+2k)_{P-k}(\Delta)_{P-k}}.} \tag{5.1}
\]
由此直接得到
\[
\frac{g_{P,k+1}}{g_{P,k}}
=\frac{4(k+1)[4(\Delta+k)^2-1]}{2\Delta+k-1}
\frac{P+\Delta-k-1}{(P-k)(P+3\Delta+k-1)(P+2\Delta+k)}. \tag{5.2}
\]
对固定 \(k,\Delta\)，它是一个严格正常数乘 \(P^{-2}(1+O(P^{-1}))\)。

令 \(R_P\) 为换位 \((23)\) 在物理正交归一的 \(A_P\) 本征基中的矩阵。它为实对称正交矩阵。最低 pair 标签的 endpoint 元为
\[
\boxed{(R_P)_{00}=(-1)^P\frac{(\Delta)_P}{(2\Delta)_P}
=O_\Delta(P^{-\Delta}).} \tag{5.3}
\]
此式也可直接验证：对 \(f_{P,0}\) 的递推系数作 \((r,u)\mapsto(u+r/2,3r/4-u/2)\) 代换，取 \(r^0u^P\) 系数，再用终止的 Chu–Vandermonde 求和。

### 5.2 每个固定重耦合矩阵元都趋于零

在正交基中，另一个 pair Casimir 的对角元是
\[
b_{P,k}=\frac{s_P-\lambda_k}{2}\sim\frac{P^2}{2},
\]
其相邻非对角元绝对值由 (1.1)、(5.2) 给出：
\[
|\alpha_{P,k}|=(k+1)(P-k-1+\Delta)
\sqrt{\frac{g_{P,k}}{g_{P,k+1}}}
\sim a_kP^2,\qquad a_k>0.
\]
固定列 \(\ell\) 的本征向量 \((R_P)_{k\ell}\) 满足相应三项递推。把递推除以 \(P^2\)，对任意固定有限个 \(k,\ell\)，向前递推系数均有界，分母 \(\alpha_{P,k}/P^2\) 远离零。因此
\[
|(R_P)_{k\ell}|\le C_{k,\ell,\Delta}|(R_P)_{0\ell}|.
\]
再用对称性 \((R_P)_{0\ell}=(R_P)_{\ell0}\) 并对第零列使用同一递推，结合 (5.3) 得
\[
\boxed{(R_P)_{k\ell}=O_{k,\ell,\Delta}(P^{-\Delta})
\quad\text{对每个固定 }k,\ell.} \tag{5.4}
\]
这里没有声称对随 \(P\) 增长的所有标签作一致估计。

### 5.3 压缩算子的算子范数极限

令 \(M_P=R_P\circ R_P\) 为逐项平方。它实对称、双随机，故 \(\|M_P\|\le1\)。令
\(C_P^{\rm wt}=\operatorname{diag}(c_0,\ldots,c_P)\)。三粒子物理 \(W\) 的非零谱等于
\[
\boxed{H_P=(C_P^{\rm wt})^{1/2}(I+2M_P)(C_P^{\rm wt})^{1/2}} \tag{5.5}
\]
的非零谱。这来自三项 Bose 平均：等通道正交基中的压缩为 \((I+2M_P)/3\)，而 \(W=3\Pi_Bv_{12}\Pi_B\)。虽然 \(M_P\) 不必正半定，\(I+2M_P\) 作为压缩投影的三倍必为正半定。

把辅助通道空间用标签 \(k\) 嵌入 \(\ell^2(\mathbb N_0)\)，在 \(k>P\) 上补零。因为 \(c_k\to0\)，对角算子
\(C_\infty^{\rm wt}=\operatorname{diag}(c_0,c_1,\ldots)\) 紧，并且
\(\|C_P^{\rm wt}-C_\infty^{\rm wt}\|\to0\)。对扰动
\(E_P=2(C_P^{\rm wt})^{1/2}M_P(C_P^{\rm wt})^{1/2}\)，先固定 cutoff \(K\)：低标签方块由 (5.4) 趋零，其余部分满足
\[
\|E_P-E_P^{\le K,\le K}\|\le4\sqrt{c_0c_{K+1}}.
\]
先令 \(P\to\infty\)，再令 \(K\to\infty\)，得到
\[
\boxed{\|H_P-C_\infty^{\rm wt}\|\longrightarrow0.} \tag{5.6}
\]
这是辅助**通道压缩**算子的收敛，不假设不同 \(P\) 的 physical 表示空间已经具有一个共同的自然嵌入。

紧自伴算子的 min–max 连续性随即给出，对每个固定 \(j\ge1\)，
\[
\boxed{e_j(P)\longrightarrow c_{j-1}
=\frac{1}{8\pi(2\Delta+2j-3)}.} \tag{5.7}
\]
实际 \(c_k\) 互异，所以相应辅助谱投影也收敛到单个通道基向量。令 \(\widehat f_{P,k}=f_{P,k}/\sqrt{g_{P,k}}\)，则
\[
\psi_{P,k}=\frac{\Pi_B[\widehat f_{P,k}(z)\widehat f_{P,k}(w)]}
{\|\Pi_B[\widehat f_{P,k}(z)\widehat f_{P,k}(w)]\|}
\]
与本征值趋于 \(c_k\) 的单位本征态之间的距离趋于零（选择相容相位）。这里 \(E e_k=\widehat f_{P,k}\otimes\widehat f_{P,k}\) 是等通道等距嵌入。从压缩空间到 physical 空间的谱映射为 \(x\mapsto\sqrt3\Pi_BE(C_P^{\rm wt})^{1/2}x\)，其范数一致有界，而 \(c_k>0\)；同时分母平方趋于 \(1/3\)。因此得到可控制的固定标签近似本征态族。这里未声称最底部正本征值的渐近形式，也未声称全部正谱在某个单一重标度下收敛。

### 5.4 少量数值例子只作图景核对

下表使用 \(\Delta=2\)，明确列的是 **\(16\pi W\)** 的本征值；物理 \(\lambda\) 系数需除以 \(16\pi\)。数值使用双精度对称本征求解，不参与秩判定或定理证明。

| \(P\) | 最大正值 | 第二大 | 第三大 | 第四大 |
|---:|---:|---:|---:|---:|
| 8 | 0.8378543 | 0.5613317 | 0.3627156 | 0.2490273 |
| 16 | 0.7102959 | 0.4776036 | 0.3487174 | 0.2549242 |
| 32 | 0.6766289 | 0.4165576 | 0.3124192 | 0.2496194 |
| 64 | 0.6690635 | 0.4032751 | 0.2903190 | 0.2290116 |
| 解析极限 | \(2/3\) | \(2/5\) | \(2/7\) | \(2/9\) |

无需假定逐个本征值对 \(P\) 单调；例如第四列的有限数据就不支持简单单调递减命题。

## 6. 验证覆盖、归因与剩余问题

**解析证明：** 相邻次数的普遍关系、非零性与唯一性；全 \(N\ge3\) 平衡最大本征值界；三粒子每个固定次序的正本征值极限。投影单粒子升算子的研究线索来自本轮协作，不把它描述为未经提示的独立发现；关键矩形带宽论证和谱极限在此展开并单独验算。

**Fresh CAS：** 新脚本在 \(Q=0,1,2,4,6\)、符号 \(\Delta\) 下直接作用三变量微分算子，验证 primary 投影、\(\sum_iT_i=0\)、互补 pair 交织、矩形三对角、(2.4)、范数伴随公式以及 \(41\) 个关键带宽恒等式，并直接得到对应 Bose 平均秩 \(Q\)。另验证 \(P=0,1,2,4,6\) 的 endpoint、物理 Gram 自伴性、逐项平方双随机性和范数比；\(P=4\)、符号 \(\Delta\) 的三变量单项式内积还直接验证了 (5.1) 的绝对范数，而不只检查相对归一化。另在 \((N,P,\Delta)=(4,3,2),(5,2,2)\) 直接构造总 primary 投影的簇试探向量，验证全部 \(42\) 个内部 pair 的 \(k=0\) 条件与共同 Gram 重叠；精细下界分别为 \((597/197)c_0\) 和 \((444/73)c_0\)，均高于通用的 \(3c_0,6c_0\)。四个谱例子仅是有限数值支持，不代替解析极限。

**范围：** \(\Delta>1\)、有限次数、相同左右表示、物理正内积、所有受罚通道系数严格正。谱极限另用实际系数 \(c_k\to0\)；把系数设为 \(1\) 会破坏该紧性论证。式 (4.1) 确实提供归一化谱上端的一致大 \(N\) 极限；它不提供整个经验测度、最小正本征值或零模比例在同时大 \(N,P\) 时的一致结论。

**尚未解决：** \(|P-Q|\ge2\) 的三粒子精确秩；任意 \(N\ge4\) 的完整非手征核及逐个谱极限；最小正本征值与高阶微扰对零模的提升。下一步优先研究较宽带矩形算子的端点关系，而非继续扩大有限秩表。

复现（在本目录）：

```bash
sage --nodotsage scripts/contact2_rectangular.py \
  --output results/contact2_rectangular.json
```
