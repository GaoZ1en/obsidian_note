# AdS₃ 接触谱：全三粒子秩、第一混合带与连续极限

原审稿包不是对旧 Einstein 审计的又一次复跑。它收录一份独立谱研究的投稿快照和四份专题复核。相对于 [Einstein 与 φ⁴ 对照笔记](<Einstein audits and phi4 comparison.md>) 记录的较早阶段，它**完成了三粒子所有双次数的秩**，求出了任意粒子数的 $Q=1$ 接触核，并把 $(2,2)$ 的 $\sqrt N$ 分裂推广到无限质量序列。Racah 连续问题解决的是强极限及其连续谱，不是有限矩阵的底端收敛。

取单位半径 global AdS₃、标准无源快衰减、固定时钟与物理 gap、$\Delta>1$。固定背景实标量的单位 $\lambda$ 一阶算符为 $K_N=\sum_{i<j,k}c_k\Pi_{ij}^{(k,k)}$，$c_k=[8\pi(2\Delta+2k-1)]^{-1}$。单侧 $U_{N,P}$ 是被 $\sum_i\partial_{z_i}$ 消去的 $P$ 次齐次多项式，单体 $z^a$ 的平方范数为 $a!/(\Delta)_a$；物理 primary 空间 $\mathcal H_{N;P,Q}=(U_{N,P}\otimes U_{N,Q})^{S_N}$ 只对两侧的**同时**置换取不变量。核、秩定理只需相应权重严格为正；谱值用实际 $c_k$。

## 所有三粒子双次数的秩

记 $m=\min(P,Q)$，$d=|P-Q|$，则

$$
\operatorname{rank}K_{3;P,Q}=
\begin{cases}
 1 & P=Q=0,\\
 m & d\le1,\ (P,Q)\ne(0,0),\\
 1 & \{P,Q\}=\{3,1\},\\
 m+1 & \text{其余情形}.
\end{cases}
$$

秩不在某些物理质量点额外跌落。维数可由 $S_3$ 字符直接取得：$d_3(P,Q)=[(P+1)(Q+1)+3u_Pu_Q+2v_Pv_Q]/6$，其中 $u_n=\mathbf1_{2\mid n}$，$v_n=(1,-1,0)$ 按 $n\bmod3$ 取值。减去秩即为精确核维数。

关键在排除**确实可能共振**的末行，而非假设质量一般。设 $P\ge Q$，用实物理内积将等 pair 标签张量识别成矩形对角映射 $T:U_{3,Q}\to U_{3,P}$。秩等于它们经 Bose 平均所得像的维数。记 $A_n=C_{12}$、$B_n=C_{23}$ 在 $U_{3,n}$ 的限制，$A_n$ 谱为 $\lambda_k=(\Delta+k)(\Delta+k-1)$，$s_n=n(n+3\Delta-1)+3\Delta(\Delta-1)$ 是三个 pair Casimir 的和。$E_n=\operatorname{diag}((-1)^k)$；Bose 平均为零当且仅当 $T+U+E_PUE_Q=0$，其中 $U$ 是以 $(13)$ 共轭 $T$ 得到的矩阵，满足 $B_PU=UB_Q$。$B_n$ 不可约三对角，对角为 $(s_n-\lambda_k)/2$。因此远离主对角（$|j-k|>1$）的项必须满足

$$
 [s_P-s_Q-(\lambda_j-\lambda_k)]U_{jk}=0.
$$

当 $d\ge2$，末行至多有一项 $U_{P,k}$，且 $k<Q$、$P-k$ 为奇数。若 $P-k>3$，在 $(P,k+1)$ 比较交织方程，等式只剩 $(B_P)_{P,P-1}U_{P-1,k+1}=U_{P,k}(B_Q)_{k,k+1}$；左侧因远项谱差严格较小而为零，右侧系数非零。只剩 $P=Q+2,k=Q-1$，此时共振条件为 $\lambda_{Q+2}-\lambda_{Q-1}-(s_{Q+2}-s_Q)=2(Q-1)=0$。末行若为零，交织方程把零逐行向上传递。例外 $(3,1)$ 的物理空间仅一维，$p_{20}p_{11}$ 在 $X=(x,x,-2x),Y=(y,y,-2y)$ 的双碰撞值是 $36x^3y$，故秩一而不是零；$p_{ab}=\sum_iX_i^aY_i^b$。

相邻块的末行只剩一个位置；存在的唯一关系由 $\Pi^{\rm prim}_{Q+1}J_{3,+}|_{U_{3,Q}}$ 给出，因为三粒子升算子的和是后裔。平衡块中 $U=h(B_P)$，远项恒等式迫使其三对角，于是最高带宽迫使 $h$ 至多一次，关系正是 $A_P-s_P/3$。这个纯表示论证明对 $\Delta>0$ 的正范数和独立正权重也适用，不改变物理快衰减问题的 $\Delta>1$ 范围。

## 任意 N 的第一混合带

$N\ge2$ 时令 $V_N(z)=\prod_{i<j}(z_i-z_j)$、$D=N(N-1)$，负次数空间视为零。则

$$
 \ker K_{N;P,1}=V_N^2\mathcal H_{N;P-D,1},\qquad
 \sum_P\dim\ker K_{N;P,1}\,t^P=
 \frac{t^D(t+\cdots+t^{N-1})}{\prod_{j=2}^N(1-t^j)}.
$$

右次数一只容许标签 0、1；同时置换的偶性使左标签 0 或 1 分别只与同标签配对。正性遂剔除这两个左标签。若 $d=z_i-z_j,s=(z_i+z_j)/2$，pair label $k$ 的 $m$ 次后裔首项是 $(2\Delta+2k)_{m-k}s^{m-k}d^k$；三角过滤表明同时剔除 $k<2$ 正好是被 $d^2$ 整除。各 pair 线性因子不同，乘积给 $V_N^2$；商仍平移不变且 Bose 对称。有右次数一的协变模在 $\mathbb C[e_2,\ldots,e_N]$ 上以 $p_{r1}$（$1\le r\le N-1$）为自由基：spectator 对称的分量可写成 $X_i$ 的次数至多 $N-1$ 的多项式，对 $N$ 个不同 $X_i$ 作插值证独立。$N=2$ 只在奇 $P\ge3$ 有核；$N\ge3$ 从 $P=D+1$ 起每级有核。

**不能把单个高通道当普通法向 jet。** 物理归一化的 $k=2$ 抽取为 $[\tfrac12\partial_d^2-\tfrac1{8(2\Delta+1)}\partial_s^2]_{d=0}$。整段低标签同时消失才等同于低阶普通 jet 消失；$Q=2$ 允许 $(0,2),(2,0)$，尚不能把一般 $N\ge4,Q\ge2$ 的核称为同一碰撞理想。

## 无限多个真正的 √N 分裂

固定 $(n,n)$ primary 系数。令 $g_n(\Delta)=2(1/2)_n(\Delta)_n/[n!(\Delta+1/2)_n]$。ground–excited 的 pair 接触矩给 beta-binomial 投影权重；对每个 $n\ge2$，两个 leading 斜率碰撞的方程 $(2\Delta+1)(g_{n-1}-g_n)=1$ 有唯一物理解 $\Delta_n>1$，随 $n$ 严格增加，且

$$
 \Delta_n=\frac{\sqrt\pi}{2}n^{3/2}-\frac n2+O(\sqrt n).
$$

这不只是矩阵的重根：在物理 primary 压缩与解析正交化后，实际耦合边

$$
 b_n=\frac{n g_n(\Delta_n)}{(2n-1)\sqrt{1+\mathbf 1_{n=2}}}>0
$$

连接不同激发数奇偶部分。首个共振修正 Hermitian 且对奇偶分级为双部矩阵，故有一对 $\pm b$ 且 $b\ge b_n$；两个实际谱支为 $\varepsilon_\pm/c_0=\binom N2+[g_n(\Delta_n)-1]N\pm b\sqrt N+O(1)$。在同一 leading 值 $\sigma$ 的空间，解析正交框架的导数项是 $\sigma\,\partial_t\langle u_i,u_j\rangle=0$，不能消去该物理耦合。在 $(2,2)$ 给出早期实例；一般 $n$ 的簇未证明总是二维，故 $b_n\sim1/\sqrt{\pi n}$ 只描述一条边，不一定是整个簇的分裂。也没有把系数渐近提升成固定非零耦合的一致余项。

## 三粒子正谱底端与 Racah 连续问题

按降序列严格正谱 $e_j$，保留 $k<j-1$ 的三 pair 和经 Bose 压缩后秩至多 $j-1$，余项范数至多 $3c_{j-1}$。故 $e_j\le3c_{j-1}$；在 balanced $P\ge1$，底端满足 $0<e_{\min}\le3/[8\pi(2\Delta+2P-3)]$。这是 $O(P^{-1})$ **上界**。固定较小次数 $Q$ 时，矩形通道压缩与 $\operatorname{diag}(c_0,\ldots,c_Q)$ 的范数差是 $O_{Q,\Delta}(P^{-\Delta})$，所以整个正谱都趋于各自 $c_k$，其余是精确零。这对增长的 $Q$ 不一致。balanced 权重压缩在 $\ell^2$ 中还按 Schatten $p>1$ 收敛到 $\operatorname{diag}(c_0,c_1,\ldots)$：奇异值和不等式用 $4c_{j-1}$ 控制第 $2j-1$ 项，结合范数收敛和可和支配。因而 $\lim\operatorname{Tr} K_{3;P,P}^p=\zeta(p,\Delta-1/2)/(16\pi)^p$（$p>1$），不声称 trace-class 收敛。

另一极限保留宏观指标 $x\sim k/P$，不带接触权重。$R_P$ 为三粒子物理正交 Racah 换位矩阵，$M_P=R_P\circ R_P$。取等宽步嵌入 $V_P e_k=\sqrt{P+1}\mathbf1_{[k/(P+1),(k+1)/(P+1))}$。固定 $\Delta$ 时，$V_PM_PV_P^*\to K$ **强收敛**，其中

$$
 (Kf)(x)=\frac2\pi\int_0^{\sqrt{1-x^2}}\frac{f(y)}{\sqrt{1-x^2-y^2}}\,dy,
 \qquad KP_{2r}=P_{2r}(0)P_{2r}.
$$

此处 $P_{2r}$ 为限制到 $[0,1]$ 的偶 Legendre 多项式；在 $[0,1]$ 已完备。局部 Jacobi 矩给出行测度，双随机收缩加稠密多项式给强极限；$K$ 紧但非 Hilbert–Schmidt。固定 $\Delta$ 不是表述方便：若 $\Delta_P/P\to\infty$，对输入 $y$ 的首矩趋于 $3/4-x/2$，而 $Ky=(2/\pi)\sqrt{1-x^2}$。

令 $A=(2x)^{-1/2}$，闭二次型 $q[f]=\langle Af,(I+2K)Af\rangle$ 的域是 $Af\in L^2$，核方向为 $\sqrt{2x}P_2$。对去掉此零模后的算符 $\mathcal H$，$\sigma_{\rm ess}(\mathcal H)=[1/2,\infty)$，且 $3/16\le\lambda_1^+(\mathcal H)\le800/2691<1/2$。因为相对于乘法算符 $A^2$，变换后的扰动是 $2(1+2x)^{-1/2}K(1+2x)^{-1/2}$，是**相对型紧**，不要求 $AKA$ 本身有界。试探态 $f=\sqrt{2x}(P_6+P_2/20)$ 与核正交，$\|f\|^2=621/6400$、$q[f]=3/104$；连续的最低正值是离散特征值，精确算术的嵌套 Ritz 值自上收敛。$0.27758582\ldots$ 仍只是数值引导，未认证八位；尤其不能据此识别有限谱 $P\lambda_{\min}^+(8\pi K_{3;P,P})$ 的极限。

末端行测度结合 Schur 估计已给 $\lim_{\eta\downarrow0}\limsup_{P\to\infty}\|M_P-\chi_\eta M_P\chi_\eta\|=0$，其中 $\chi_\eta$ 取宏观内部 $[\eta,1-\eta]$。这把排除谱污染的难点移到 bulk 高频，并给了无界接触权重的统一图范数控制；尚未证明 $M_P$ 的范数收敛（也**未否定**它），或有限矩阵的正底端匹配下界。一个看似更强的有限估计已被反例否定：$P=4,\Delta=2$ 的 $M_4$ 特征多项式为

$$
 \det(xI-M_4)=\frac{(x-1)(2x+1)(43218x^3-2107x^2-6841x-610)}{86436}.
$$

三次因子在 $-1/2$ 和 $-5/16$ 异号，故其根在两者之间，反驳 $\lambda_2^\uparrow(M_P)\ge-5/16$，不反驳连续本身的谱隙。

## 有条件的 Einstein／接触比较

在 [指定 canonical Weyl／固定 gap 处方](<supporting material/Unreduced OFPT calculation.md>) 的 Einstein pair 系数下，令 $P\ge Q$、$A_E=W_E-b_N(Q)I$，$b_N(Q)=-2N(N-1)\Delta^2-8Q(N\Delta+Q-1)$。则 $0\le8\pi K_N\le A_E/r_*$，$r_*=2\Delta^2(2\Delta+5)/(2\Delta+1)$。只需逐 pair 核对：在等标签通道上，以 $h=\Delta+k,C=h(h-1),\mu=\Delta(\Delta-2)$，Einstein residual 乘 $2h-1$ 得 $R(C)=8C-4\mu-2(C+\mu)^2/(4C-3)$。它在每个无极点分支严格递增，但 $1<\Delta<3/2$ 不能跨极点比较；直接算 $R(C_1)-R(C_0)=16\Delta(\Delta+1)(4\Delta+3)/[(2\Delta+1)(2\Delta+3)]>0$。$k=0$ 的可去极点取消后 $R(C_0)=r_*$；非对角 residual 非负。求和是型不等式，不要求不同 pair 投影对易；ground primary 使常数尖锐。

因此单位 $G$ 形变 $A_E+\alpha(8\pi K_N)$ 当且仅当 $\alpha>-r_*$ 在所有有限块同时保正性和原 residual 核；在严格区间，正特征值被 $\min(1,1+\alpha/r_*)$、$\max(1,1+\alpha/r_*)$ 倍夹住。等号处 ground primary 及其后裔新入核，后裔沿用 primary Casimir baseline；更负时两粒子 ground 已变负。这里比较首阶系数，不是负四次势的非微扰稳定性，也不分类临界全部新核。此前记录的保核但改变低代数的局域形变落在严格区间内。

## 历史源码与证据

`bf8b92ac8e2dae32f4e96e17238f9524809d6b82` 的仓库路径 `Articles/Quantization in AdS/perturbation/Einstein scalar spectrum/submission-referee-20261021.gu7ZA5/` 下可用 `git show '<commit>:<路径>'` 读旧稿。主要投稿稿件是 `submission/AdS3_Independent_Reproducibility/AdS3_Independent_Investigation.md`：第一混合带 393–601；完整秩、Schatten 与固定 $Q$ 602–1064；连续核与形式 1124–1366；无限共振 1578–1845；Einstein 型比较 2292–2452。独立复核的缩短证明分别见 `rank_referee.md:30–128`、`q1_referee.md:5–59`、`resonance_contact_independent_review.md:73–169`、`continuum_referee.md:123–392`；后者新增连续孤立谱和端点排除。Git 外的原证据、环境清单与运行结果保存在 [本地证据归档](<contact-spectrum-referee-evidence.tar.gz>)，14 个成员逐一与原件核对，路径保留旧审稿包前缀。包的 SHA-256 为 `d654a4abb4e2b3c51a1e61098518561ddda363a4382f8c6517306bffda70cb61`。与 Git 快照合用才是完整证据，不须恢复进当前工作树。

- **Verified:** 本次重算了末行共振条件、连续试探态正交与 Rayleigh 商、有限四层反例的三次因子端点异号，以及 Einstein 尖锐比较中的两个有理差值。投稿及四份专题复核中其余检查是历史记录。
- **Assumptions:** 固定背景 Wick 接触；各极限按上述固定标签或质量理解；最后一节另假设 Einstein pair 系数及其物理减除处方。
- **Not verified:** 本次未复跑投稿整包、全激发矩阵或 Einstein 动力学；不把 bulk 谱污染、全部共振簇或一般混合核的开放问题改写成已证。
