# Einstein–scalar 首阶谱的复核与固定背景 φ⁴ 对照

最低标量–边界引力子混合矩阵元为零，原因是完整径向交换和非零接触项精确抵消；不能截到最低内模。固定背景的实 φ⁴ 在一阶则是一个独立的正接触谱问题：它与引力共享手征首低层的代数形式，但在非手征高激发区有大量**精确零模**，正谱也会变软，同时保留非零谱顶。下文保留实际算出的结果，以及排除过强说法的见证。引力的全指标系数以现行 [Unreduced OFPT calculation](<supporting material/Unreduced OFPT calculation.md>) §§75–77 为准。

## Einstein–scalar：混合与减除是两个问题

取单位半径 global AdS₃，号差 $(-++)$，$\kappa^2=16\pi G$，$m^2=\Delta(\Delta-2)$，$\Delta>1$，标准无源快衰减、光滑中心、固定边界 cylinder 与时钟、Brown–Henneaux 条件。按 [CPS 约定](<../formalism.md>) 保留作用的边界 Lagrangian 和 $\theta$ 的角点项，$\omega=\delta\theta$，$H_\lambda=X_\lambda\cdot\theta-\alpha_\lambda$；只商去 proper diffeomorphisms，保留有渐近荷的边界引力子。以下 $E=E_0+Gg+o(G)$ 的系数使用 canonical Weyl、共同局域减除与固定物理单粒子能隙的处方。

### 最低完整混合矩阵元

在 $\Delta=2,E_0=4,J=0$ 的偶标量奇偶块，取 $|ss\rangle=(b^\dagger_{00})^2|0\rangle/\sqrt2$、$|gg\rangle=a^\dagger_{2,+}a^\dagger_{2,-}|0\rangle$。写 $H=H_0+\kappa V_1+\kappa^2V_2+\cdots$，以 $V_1=[H_0,S]$ 消掉完整三次项，退化投影后的系数是 $P(V_2+[S,V_1]/2)P$。下表是原始 $\kappa^2a^\dagger_{2,+}a^\dagger_{2,-}b_{00}^2$ 系数乘 $\pi$；从原始系数到归一化矩阵元的 $G$ 系数还须乘 $16\pi\sqrt2$。

| 项 | 系数乘 $\pi$ |
|---|---:|
| $p^2\phi^2$ | $3067/180-(74/3)\log2$ |
| $\eta_{\rm edge}p\phi^2$ | $(56/3)\log2-116/9$ |
| $\eta_{\rm edge}^2\phi^2$ | $0$ |
| 完整 cubic exchange | $6\log2-83/20$ |

边界重参数化 $f=\mathrm{id}+\kappa\eta_{\rm edge}+\cdots$ 的 cotangent pullback 有一个 Jacobian：$P=p_{\rm base}(f) f'$。$p_{\rm base}=P-\kappa(\eta_{\rm edge}P)'+\cdots$ 的导数修正在这里的零 harmonic 消失，但边界能量中的 $6\int\eta_{\rm edge}' C_3[P;\phi]$ 不消失。真空对称收缩为零不能删掉这个算符。三次交换的两类顶角按内部标量频率 $2n+4$ 配对，纳入两手征后得到

$$
 \pi C_{\rm ex}=\sum_{n\ge0}\frac{27}{(n+2)(2n+1)(2n+3)^2(2n+5)^2(2n+7)}
 =6\log2-\frac{83}{20}.
$$

平方分母项拆成 $\frac{27}{16}[(2n+5)^{-2}-(2n+3)^{-2}]$，其和为 $-3/16$；一阶分母项的调和发散互相抵消，和为 $6\log2-317/80$。四项精确相加为零。旧值 $24\sqrt2/175$ 是归一化后仅 $n=0,E_{\rm int}=8$ 的两条路径，不是完整交换；遗漏的正项尾部为 $O(n^{-7})$ **逐项**。本计算不是普通的纯标量 pair OFPT；它也没有计算引力子对的完整对角量子移位。

**全标量分支的闭合另有理由。** 取带时移权重 $s$ 的渐近荷 $Q_s=\kappa^{-1}Q_{-1,s}+\cdots$，其非全局 leading 项是各手征的引力子线性振子。把 Ward 恒等式投到权重 $s$ 后，$\operatorname{ad}H_0-s$ 项消失，而 $R_s[A,Q_{-1,s}]=[R_0A,Q_{-1,s}]$，其中 $R_s$ 是权重投影。这先迫使共振三次项不依赖引力振子，再由标量奇偶性得其为零。随三次正则变换一起变换荷，重复该投影就迫使**完整共振四腿符号**不依赖引力振子。这是跨自由能级的恒等式，不是在单个 $E_0$ 块里把线性荷压成零。全局 Ward 再排除 $1\leftrightarrow3$：从单标量正离散系列到三标量的 intertwiner 必须杀掉单标量最低态（$3\Delta>\Delta$），故杀掉其所有后裔。四腿以下，保奇偶性、自由能量和角动量的二次修正不产生标量–引力混合；这并不计算二次单体移位。

只要求**全局**共形协变就不足够：$\Delta=2$ 的双最低标量与左右 $m=2$ 的引力子对都生成 $D_2^+\otimes D_2^+$，两者间容许非零协变共振映射。它不满足上述非全局 leading-linear Ward 前提，故不是 minimal Einstein 的反例。更强的高阶断言也不能从 leading 荷推出：配对振子 toy 中 $m=4\omega,\ D=b^2+\beta b^*b$ 可产生三阶共振 $-16\omega\beta a_+^*b^4$（$b$ 为标量振子，$a_+$ 为正手征引力类振子）；它只说明须检验实际 AdS 的次阶 Ward 消除。

### 共同外腿权重和移除顺序不可弱化

设 $y=\sqrt{1+r^2}$、$\tau>0$ 为 scalar-leg Abel 参数；一体外模 $I=(n,j)$ 这里取 $j\ge0$，$\omega_I=\Delta+2n+j$，$R_I(y)$ 为物理归一化的径向模。交换迹剥离 $G$ 后的极点为 $-C_I/\tau$，其中

$$
 C_I=(4m^2+2)\int_1^\infty R_I^2\,dy+2\int_1^\infty y^{-2}R_I^2\,dy.
$$

有限项为零另需动力学种子、带 cutoff 边界项的 Ward transfer 与实际壳和；Hartree 需在约束求逆前由完整 tadpole 局域变分抵消，不能只减真空常数。处方的极限是 $e^{-\tau\omega_I}[s_I^{\rm X}(\tau)+C_I/\tau]\to0$，并固定基态能隙。三个检验说明这些条件不能换掉：

- $\Delta=3/2$ 的 ground pole 为零，但 $(n,j)=(0,1)$ 有 $C_I=-1/8$。若 bare 项带 $e^{-\tau\omega_I}$ 而 counterterm 不带，会留下 $\omega_I C_I$；在 $\Delta=2$ 调过 ground gap 后，$(0,1)$ 仍错留 $G(3\cdot16/21-2\cdot16/15)=16G/105$。
- 任加有限局域动能项 $Z=Gc/y$，在同一外模留下 $8Gc/105$；它破坏调节子去掉后应恢复的全局 Ward 恒等式。局域性加固定基态 gap 本身不够。
- 对边界尾 $\phi=A y^{-\Delta}$、$\delta\phi=B y^{-\Delta}$，$Z_\tau=-4G/(\tau y)$ 的动能项给边界变分 $-4G\Delta AB(y^2-1)y^{-2\Delta-1}/\tau$。先去径向 cutoff 为零，沿 $y=\tau^{-1/(2\Delta-1)}$ 则趋于 $-4G\Delta AB$。

这些反例改变了处方、极限或 Ward 前提，并不推翻原处方内首阶谱。相同 Hessian 域、齐次数据、时钟、lapse/shift 重建和时间端点是与协变响应比较的条件；不能由离散 OFPT 复核推出任意域的 Born 匹配、长期端点消失、统一有限 $G$ 控制或无条件的 $O(G^2)$ 余项。

## 固定背景实 φ⁴：从有限构造到谱极限

在同一 AdS 标量边界条件上另取 $-\lambda:\phi^4:/4!$，真空 Wick 排序、固定物理 gap，不引入引力。单模标签 $(p,q)$ 的频率是 $\Delta+p+q$、有号自旋 $p-q$；$N$ 粒子 $(P,Q)$ primary 是双次数为 $(P,Q)$ 的 Bose 态中同时被总左右 lowering 杀掉的空间，自由能量 $N\Delta+P+Q$。此处所有谱值 $\varepsilon$ 是单位 $\lambda$ 的能移系数，$z=\varepsilon/c_0$。完整一阶共振算符为

$$
 K_N=\sum_{i<j}\sum_{k\ge0}c_kP^L_{ij,k}P^R_{ij,k},\qquad
 c_k=\frac{1}{8\pi(2\Delta+2k-1)},\qquad a=c_0.
$$

$P^{L,R}_{ij,k}$ 是 pair 相对次数 $k$ 的物理正交投影；单手征 pair Casimir 的特征值为 $C_k=(\Delta+k)(\Delta+k-1)$。接触在双重 coincidence 只保留等标签，归一化 pair primary 的径向积分给 $c_k$。为得到固定 $N$ 还须排除数变共振：$0\leftrightarrow4$ 由正频率排除，$1\leftrightarrow3$ 同时守恒 $E,J$ 只在整数 $\Delta>1$ 才可能。此时设 $j_i=p_i-q_i$ 为三个出模的有号自旋，$s=(\sum_i|j_i|-|\sum_i j_i|)/2$，$\nu_i=\min(p_i,q_i)$。入模径向次数 $\nu_A=\Delta+\sum_i\nu_i+s$，其 Jacobi 正交权重下的另一因子是 $y^s(1-y)^{\Delta-1}$ 乘三个出模 Jacobi 多项式，最高只有 $\nu_A-1$ 次，所以积分严格为零。这不是全阶粒子数守恒。

**有限块可直接复算。** 枚举 $\sum n_A=N,\ \sum p_A n_A=P,\ \sum q_A n_A=Q$。令 $w_p=(\Delta)_p/p!$，取占据基 $\prod_A(a_A^\dagger/\sqrt{w_{p_A}w_{q_A}})^{n_A}|0\rangle$，其物理 Gram 对角元为 $\prod_A n_A!/(w_{p_A}w_{q_A})^{n_A}$。对无序入／出 pair $A\le B,C\le D$，令 $\mu_I=\max(p_I,q_I)$、$\ell_I=|p_I-q_I|$、$s=\sum_{I=A,B,C,D}\ell_I/2$。将四个 $P_{\nu_I}^{(\ell_I,\Delta-1)}(1-2y)$ 的积展开为 $\sum_h b_h y^h$，这里 $y=r^2/(1+r^2)$。保左右总次数的顶角在 $K_N/c_0$ 中给

$$
 t_{AB;CD}=\frac{2(2\Delta-1)(-1)^{\nu_A+\nu_B+\nu_C+\nu_D}}
 {(1+\delta_{AB})(1+\delta_{CD})}\frac{w_{\mu_A}w_{\mu_B}}{w_{\nu_C}w_{\nu_D}}
 \sum_h b_h\frac{(s+h)!}{(2\Delta-1)_{s+h+1}}.
$$

作用为 $t_{AB;CD} n_C(n_D-\delta_{CD})$ 乘目标占据态；其余顶角取零。比如 ground 顶角为 $1/2$，给出 $z=\binom N2$。在双 lowering 的共同核取基矩阵 $B$，以物理 Gram 解 $B^\dagger G_{\rm occ}(K_N/c_0)B$ 对 $B^\dagger G_{\rm occ}B$ 的广义本征问题；代数根隔离区间与对应零空间给出精确谱及态，双 raising 重建后裔。例：$N=4,\Delta=2,(P,Q)=(2,2)$ 的三个 $z$ 是 $z^3-\frac{76}{7}z^2+\frac{6708}{175}z-\frac{7704}{175}=0$ 的实根。历史有限批次覆盖 $N=2,\ldots,8$、三种质量；定理是任意有限块可构造，不是已经枚举所有块。两体归一化与 [Carmi–Ciccone–Sukholuski (2.32)](https://arxiv.org/abs/2606.06589v2) 一致；这里不主张该两体系数的优先权。

### 精确接触核、正软谱与谱顶并存

正性给出 $0\le K_N\le\binom N2 a I$，接触核是所有 pair 的等标签投影的共同核。$P^{-2}K_N\to0$（固定 $N,\Delta$，$P\to\infty$）是范数结论；Einstein 的非平凡 $W/P^2$ Grassmannian law 不能原样迁移。

三粒子的 balanced 块及相邻块有精确计数：

$$
\begin{aligned}
 d_3(P,P)&=\frac{(P+1)^2+3\mathbf1_{2\mid P}+2\mathbf1_{P\not\equiv2\ (3)}}6,
 &\operatorname{rank}K_{3;P,P}&=P\quad(P\ge1),\\
 d_3(Q+1,Q)&=\frac{(Q+1)(Q+2)-2\mathbf1_{3\mid Q}}6,
 &\operatorname{rank}K_{3;Q+1,Q}&=Q\quad(Q\ge0).
\end{aligned}
$$

核维数各为 $d_3-\operatorname{rank}$；$(0,0)$ 一维且秩一。维数来自 $S_3$ 字符平均。秩由**单 pair 等标签像经 Bose 投影**的秩给出，不是单 pair 投影在物理子空间上自行封闭。用实物理内积把左右张量写成线性映射：balanced 时等标签映射是 $f(A)$，$A=C_{12}$，$B_{23}=C_{23}$、$C_{13}$ 与 $A$ 的和为标量 $s_P$。另外两个 Casimir 在 $A$ 的本征基中不可约三对角，非对角相反；对 $f(A)+f(B_{23})+f(C_{13})=0$ 取最外非抵消对角线，偶次直接排除，奇次比较两个相邻起点排除，故只有 $f(t)\propto t-s_P/3$ 一条关系。相邻块将 $f(A)$ 换成 $Df(A_Q)$，$D=\Pi_{Q+1}^{\rm prim}J_3^+|_{U_Q}$ 为满对角的矩形映射（$U_Q$ 是单侧三粒子 primary 空间）。三项单粒子升映射之和被 primary 投影杀掉，给常数 $f$ 的关系；矩形带宽比较须保留一次对角停留及末行，排尽其余次数。

对固定 $N\ge3$、$\Delta>1$ 的 balanced 块，维数 $\Theta_N(P^{2N-4})$，秩 $\Theta_N(P^{2N-5})$，故**非零**比例 $\Theta_N(1/P)$。证明以 pair 稳定子 $S_2\times S_{N-2}$ 的等标签不变量维数夹住秩：上界是该维数，下界是该维数除以 $\binom N2$（向上取整）。下界来自投影压缩的迹；左右同块的实对称表示使平均中的项为实迹的平方，保留稳定子项即可。对真实权重 $c_k$，只数严格正本征值的经验测度也弱趋于 $\delta_0$，且正谱均值为 $\Theta_{N,\Delta}(\log P/P)$。截到固定 pair 标签 $k\le K$ 的秩为 $O_{N,K}(P^{2N-6})$，高标签尾范数至多 $\binom N2 c_{K+1}$，给出弱极限；加权稳定子迹夹逼的数量级是 $\sum_{k\le P}c_k(P-k+1)^{2N-6}$，给出均值阶数而非最小正特征值或典型尺度。

谱顶不消失：每个 $N\ge3,P\ge0$ 都有 $\binom{N-1}{2}c_0\le\lambda_{\max}(K_{N;P,P})\le\binom N2c_0$。下界以单粒子携带激发的 primary 投影 $v_i\propto\Pi_P^{\rm prim}z_i^P$ 构造 Bose 试探态 $\sum_i v_i\otimes v_i$；不含 $i$ 的 pairs 在 $v_i$ 上都处于最低相对通道。因而谱顶除以 $\binom N2c_0$ 在 $N\to\infty$ 时对任意 $P=P(N)$ 趋于 1。三粒子更精确：降序第 $j$ 个正本征值趋于 $c_{j-1}$（$j$ 固定，$P\to\infty$）。非零谱等于通道压缩 $C_P^{1/2}(I+2R_P\circ R_P)C_P^{1/2}$ 的非零谱，$C_P=\operatorname{diag}(c_0,\ldots,c_P)$、$R_P$ 为物理正交归一基中的换位 $(23)$、$\circ$ 为逐项乘。$R_P$ 的固定指标元由 endpoint $(-1)^P(\Delta)_P/(2\Delta)_P$ 和三项递推得 $O(P^{-\Delta})$；$R_P\circ R_P$ 的范数至多 1。先限低标签再用权重紧性控尾，通道算子按范数趋于 $\operatorname{diag}(c_0,c_1,\ldots)$，随之得到逐个谱顶和相应的 Bose 投影近似本征态。以上论证只得到三粒子的 balanced／相邻秩。较晚的[接触谱审稿结果](<Contact spectrum referee results.md>)补齐了 $|P-Q|\ge2$ 的三粒子一般秩和任意 $N$ 的 $Q=1$ 核，并证明 balanced 最小正本征值的 $O(P^{-1})$ 上界；匹配下界、一般 $N\ge4,\min(P,Q)\ge2$ 的全核分类和逐个谱顶极限仍未得到。

### 手征首低层同型，不是全谱等价

在 $Q=0$，接触只有 $k=0$ 两体通道。以 $k=0,2$ 仿射插值得斜率 $s=-a/[2(2\Delta+1)]$，$r_0=r_2=0$，偶 $k\ge4$ 的缺陷 $r_k=a(k-2)(k+2\Delta+1)/[2(2\Delta+1)]>0$。应用同一稳定低层定理，leading 核为 $\mathbb C[c_2,c_3]$（这里 $c_2,c_3$ 是中心化**生成元**，不是上文 pair 权重）；在 $x=c_2,y=c_3$ 的低坐标中，首低算符为

$$
 B_{\rm low}=s\mathcal E(\mathcal E-1)+\frac{\varepsilon_{\phi^4}}2(y^2+4x^3)\partial_y^2,
 \quad \varepsilon_{\phi^4}=\frac{27a(\Delta+3)(\Delta+4)}{(2\Delta+1)(17\Delta+43)},
$$

其中 $\mathcal E=2x\partial_x+3y\partial_y$。这是 Gegenbauer 形式相同而系数不同，不是多体可积性的证明。稳定范围 $N\ge P\ge2$ 的最低系数是 $a[\binom N2-P(N\Delta+P-1)/(2(2\Delta+1))]$，饱和公式不得用于 $P>N$（$N=3,\Delta=2,P=4$ 会误给负值，实际为 $9a/7$）。

## 哪些更强陈述被具体反例排除？

**接触核不能用左右奇性概括。** 三粒子 $(6,6)$ 的 $d=9$、秩 6，左右交换奇、偶零模分别有 2、1 个（奇块维数为 2）。若要求所有 pair 都在同一侧严格领先，则 balanced 时该空间为零：

$$
 \sum_{i<j}(C^L_{ij}-C^R_{ij})=(P-Q)(N\Delta+P+Q-1)I,
 \qquad C_{k+2}-C_k=4(\Delta+k)+2>0.
$$

右式在 $P=Q$ 为零，但同一侧领先的每个 pair 给严格同号，矛盾。不能把按 pair 的左右直和与取交集交换。反方向也不成立：四粒子 $(3,3)$ 的奇 Bose primary $\Xi=p_{20}p_{13}-p_{02}p_{31}$，其中 $p_{ab}=\sum_i X_i^aY_i^b$ 为中心化变量的幂和，在双重碰撞面 $X=(1,1,0,-2),Y=(0,0,1,-1)$ 取 $-4$。所以最低等标签投影非零，接触不湮灭它；$\Delta=2$ 时该奇块谱值为 $12c_0/7$。

**同一碰撞核和主符号不固定低层代数。** 在 Einstein 模型另加 $\delta S=-G\eta\int\sqrt{-g}:\phi^4:/4!$（$\eta$ 与边界坐标、纯 probe 耦合无关）。单位 $G$ 的 pair 系数增加 $\eta\,\delta_{k\ell}/[8\pi(2\Delta+2k-1)]$。$\Delta=2,\eta/(8\pi)=-40/3$ 保持 spin-zero residual 严格正及其他自旋支撑和二次主符号，但 $r_4=0,\ r_6=104/315>0$，leading 低代数改为 $\mathbb C[c_2,c_3,c_4,c_5]$。负四次耦合只作首阶 fixed-gap 形变，非稳定非微扰反例。反过来，抽象 signed defect $\Delta=2,r_4=1,r_6=-1/100$、其他偶缺陷为零，仍给两生成元的 **leading** 核：对次数 $p\ge6$，endpoint 权重比 $\alpha_{p,6}/\alpha_{p,4}=28(p-5)(p-4)/[11(p+8)(p+9)]<28/11$，所以高生成元的 leading gap $2(\alpha_{p,4}-\alpha_{p,6}/100)$ 仍为正；次数 4、5 只见到正缺陷。这不推出有限 $N$ 最低谱结论。

**真实 φ⁴ 谱有半整数大 $N$ 分裂。** 固定 $(2,2)$，在 $\Delta_c=(\sqrt{13}-1)/2$，完整三维特征式给

$$
 \frac{\varepsilon_\pm}{c_0}=\binom N2-\frac{2N}{\sqrt{13}}
 \pm\frac{3\sqrt2}{13+2\sqrt{13}}\sqrt N+O(1).
$$

稳定坐标中 $K_N/c_0=\binom N2I+NA+B$；在 $\Delta_c$，leading 重根的正向与反向耦合积为 $18/(13+2\sqrt{13})^2$。代入 $N=T^2$ 后行列式最高非零次给两个简单实根，故不是只从非正交坐标中看到 Jordan 块作推测。临界失谐 $\Delta-\Delta_c=u/\sqrt N$：减去两个碰撞 leading 斜率的平均乘 $N$ 及 $\binom N2$ 后，除以 $\sqrt N$ 的极限为 $\pm\sqrt{18/(13+2\sqrt{13})^2+u^2/[4(\sqrt{13}+2)^2]}$。这是系数的渐近，不交换大 $N$ 和固定非零 $\lambda$ 的微扰控制。

**存在没有根式解的有限物理块。** $N=8,\Delta=2,(3,3)$ 的偶七维块在 $z=\varepsilon/c_0$ 中的 primitive 特征多项式是

$$
\begin{aligned}
 f_7(z)={}&157565625z^7-23205665000z^6+1462586814500z^5-51138014520600z^4\\
 &+1071221655190400z^3-13443822361820960z^2+93593295299197440z
 -278827127932310784 .
\end{aligned}
$$

模 11 不可约给出素数次数的传递、本原 Galois 群。模 107 的平方自由分解度 $(2,5)$，Frobenius 的五次方是换位（模 19 的分解度 $(1,1,1,1,1,2)$ 直接给换位）。共轭换位的边组成连通图，故群是 $S_7$。排除的是覆盖所有有限块的根式公式，不是 Bethe 型描述或其他意义的可积性。

**Einstein 的自然非手征 Dirichlet cone 不是 Markov cone。** 两粒子取 product-Dirichlet 坐标 $X=2u-1,Y=2v-1$，$F=X^2Y^2\ge0$，生成元为 $L=w-\gamma_{00} I$（$w$ 是单位 $G$ 两体系数算符，$\gamma_{k\ell}$ 为等约定的 pair 谱）。写 $c=\gamma_{00}-\gamma_{20}=\gamma_{00}-\gamma_{02}$、$b_{22}=\gamma_{00}-\gamma_{22}$，在原点 $e^{tL}F=(1-2e^{-ct}+e^{-b_{22}t})/(2\Delta+1)^2$。导数是

$$
 LF(0,0)=-\frac{12(10\Delta^3+29\Delta^2+8\Delta-14)}{(2\Delta-1)(2\Delta+1)(2\Delta+3)(2\Delta+5)}<0\quad(\Delta>1),
$$

$\Delta=2$ 为 $-88/35$，小正时间在开邻域取负。这只排除指定 cone，不排除其他非局域基底和 cone。

**三个有用的小边界见证。** (i) 抽象正接触权重 $\Delta=2,N=3,(2,1),c_0=10,c_1=1$，唯一非零谱迹 $17/2<11$；这排除相应的 $\operatorname{Tr}K\ge c_0+c_1$ 猜想，不是实际 φ⁴ 权重。(ii) Einstein 手征首低层的大质量收缩须先 $N\to\infty$；固定 $N=P=6$ 的大质量移位 gap 多项式 $x^4-63x^3/8+1197x^2/64-837x/64$ 在错误外推的 $27/34$ 处为 $-45691533/21381376\ne0$。(iii) 首低层多项式的唯一性须加 $\deg x=2,\deg y=3$ 的加权齐次条件（或直接用递推定义）；仅对 $y$ monic 时 $y+x$ 与 $y$ 都满足 $b=1$ 的微分方程。

## 溯源与本次检验

下表的旧路径均相对本笔记所在目录原有的 `independent audit and phi4 comparison/`，可在 `bf8b92ac8e2dae32f4e96e17238f9524809d6b82` 用 `git show '<commit>:<仓库相对路径>'` 读取；行号是该快照中的定位，不依赖本地已删除文件。`sources/ADS3_Master_Research_Package/` 是导入的研究稿，别把其中原命题算作本地独立新结果。

| 论证 | 历史相对路径及行号 |
|---|---|
| 最低混合：cotangent、顶角、径向全和及端点 primitive | `reviews/full block independent review.md:35–127,164–235`；`second review and new phi4 results.md:45–77` |
| 全分支 Ward 与二次项边界；一体减除 | `full block closure audit.md:30–166,357–373`；`one-body subtraction audit.md:7–28,51–68` |
| φ⁴ 选择规则、pair 归一化、有限矩阵、态 | `phi4 spectrum.md:189–282,328–571`；`phi4 arbitrary N spectrum.md:65–338,342–415,551–570` |
| 精确秩、软谱、奇性见证与谱顶 | `structural comparison.md:270–556`；`phi4 further structures.md:36–352`；`reviews/adjacent contact independent review.md:242–246` |
| 低层同型、形变及高激发不普适 | `universality and limits.md:62–178`；`sources/ADS3_Master_Research_Package/document_source/semiclassical/chapter10.md:266–300` |
| 半整数分裂、失谐、奇块和七次 Galois 证书 | `phi4 stable spectra and resonances.md:100–231` |
| Ward toy、全局 intertwiner、Dirichlet cone 与固定 $N$ gap | `sources/ADS3_Master_Research_Package/sources/read_only/reports/ADS3_Analytic_spectrum_research.md:4232–4304`；`sources/ADS3_Master_Research_Package/document_source/physics/physics_appendices.md:1781–1826`；`sources/ADS3_Master_Research_Package/document_source/exact_chapter.md:529–549`；`exact stable full proof audit.md:303–333` |

- **Verified:** 重算径向序列的部分分式和及接触抵消。由 Beta 顶角与 primary 投影重建三次、七次谱块及四粒子奇谱，抽查三个三粒子秩；从整数多项式重算模 11、107、19 分解。另核对四粒子碰撞取值、固定 $N=P=6$ 的 gap 多项式取值、Dirichlet 导数符号和外腿权重错配的有限项。
- **Assumptions:** 上述边界条件、固定的物理能隙和各模型的一阶处方；大激发结论按各处注明的固定或变化标签理解。
- **Not verified:** 整理不重跑 canonical 顶角推导、全 OFPT/Ward 或全部历史谱块。未建立更强的全阶量子 Ward、完整引力对角谱、连续响应域等价性或统一微扰余项；φ⁴ 的一阶核不宣称受到高阶保护。
