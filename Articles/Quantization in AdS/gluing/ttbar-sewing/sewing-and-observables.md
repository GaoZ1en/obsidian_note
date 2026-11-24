# 空间区域的全历史 sewing：精确有限系统与可观测量比较

**有限 cutoff 的 amplitude/dynamics sewing 严格成立；本次已把关联函数、空间纠缠与界面能量输运和独立 global 矩阵逐一比较。它不是全阶连续 $T\bar T$ QFT 的存在定理。**

所有对象使用[空间 Hamiltonian 的式 (6)–(8)](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/ising-hamiltonian.md#L80-L119>)，$v=\hbar=1$，$a=L/N$，PBC。形变的一阶识别和有限-$a$ 的全阶矩阵动力学是不同结论。

## 1. 从区域数据开始，不从全局真空开始

取空间点集 $\Lambda=\Lambda_1\sqcup\Lambda_2$，各区域
\[
\mathcal H_a=\bigotimes_{j\in\Lambda_a}\mathbb C^2,\qquad
\mathcal A_a=B(\mathcal H_a).
\]
从给定 Pauli interaction rule $h_X=h_X^\dagger$ 分别定义
\[
H_1=\sum_{X\subset\Lambda_1}h_X,\quad H_2=\sum_{X\subset\Lambda_2}h_X,
\quad W=\sum_{X\cap\Lambda_1\ne\varnothing\ne X\cap\Lambda_2}h_X.
\tag{1}
\]
常数 bulk/Wick 密度按区域长度分配，不改变动力学。独立 global target 为 $H^{\rm dir}=\sum_{X\subset\Lambda}h_X$，不是把 sewn answer 定义成 global theory。

在一个 cut $k|k+1$ 上，$W$ 包含全部 nearest-neighbor $ZZ,XX,YY$，以及 $Z_{k-1}Z_{k+1}$、$Z_kZ_{k+2}$、$Z_{k-1}X_kZ_{k+1}$、$Z_kX_{k+1}Z_{k+2}$ 等实际 crossing supports。三格点项不允许在切开之后丢掉。圆周 half-chain cut 有两个 interfaces；区域 histories 必须同时保留两个接口的 joint insertions。

这就是此有限 realization 的 opening/release：切开时仅拿掉真实的 crossing terms；用其所有边界 operators 的共同多时刻 history 恢复，而不施加一份不会被移除的 artificial reflecting-wall interaction。此为[区域 formalism 的 opening 要求](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/Gluing and observable algebras.md#L48-L93>)的明确 Hamiltonian 实现，不把 lattice Pauli matching 冒充 smooth full-jet matching 的证明。

有限 kinematics 映射 $\mathcal A_1\otimes\mathcal A_2\to B(\mathcal H_1\otimes\mathcal H_2)$ 为 $*$-isomorphism：matrix units 一一对应，所以 kernel 为零，image 为全部矩阵。这个事实本身不确定 $W$、态或输运。

## 2. 全历史定理（实时和 Euclidean）

将实际 $W$ 分解为 $\sum_\mu A_\mu\otimes B_\mu$，系数包含在因子内，令 $C=\sum_\mu\|A_\mu\|\|B_\mu\|$。所有 Pauli 因子 norm 为一，所以本例有直接可计算的 $C$。

对 $0<t_1<\cdots<t_n<t$，各区域的 independent history 为
\[
U_1(\boldsymbol\mu,\boldsymbol t)
=e^{-i(t-t_n)H_1}A_{\mu_n}e^{-i(t_n-t_{n-1})H_1}\cdots A_{\mu_1}e^{-it_1H_1},
\]
另一侧换成 $H_2,B$。保留全部 initial/final matrix indices，并定义
\[
U_\#(t)=\sum_{n=0}^\infty(-i)^n
\sum_{\boldsymbol\mu}\int_{0<t_1<\cdots<t_n<t}
U_1(\boldsymbol\mu,\boldsymbol t)\otimes U_2(\boldsymbol\mu,\boldsymbol t)\,d^nt.
\tag{2}
\]
**定理。** 对每个固定有限 lattice、有限实 coupling 和有限 $t$，(2) 在 operator norm 绝对收敛，且 $U_\#(t)=e^{-itH^{\rm dir}}$。证明：各 propagation factor unitary，$n$ 阶绝对和 $\le(tC)^n/n!$；将 tensor factors 合并得到实际 $H_1\otimes1+1\otimes H_2,W$ 的 Duhamel series。Volterra equation 的唯一性或逐次代入并控制 remainder 即得等式。保留到 $n=m$ 时
\[
\|U_\#-U_\#^{(m)}\|\le\sum_{n>m}\frac{(tC)^n}{n!}
\le e^{tC}\frac{(tC)^{m+1}}{(m+1)!}.
\tag{3}
\]
不要求小 $W$ 或 integrability，也不保证高效；有限-order approximant 一般不精确 unitary。

令 $t=-i\beta$ 得 Euclidean histories $Q_\#(\beta)$；逐段使用非负 Euclidean intervals，$n$ 阶绝对和为
\[
\le e^{-\beta E_*}\frac{(\beta C)^n}{n!},\qquad
E_*=\lambda_{\min}(H_1)+\lambda_{\min}(H_2).
\]
于是 $Q_\#(\beta)=e^{-\beta H^{\rm dir}}$。精确和 positive，不意味着各 history 是 positive 或 separable state。

多区域包括 hyperedge 时，各区域保存所有接口的混合 histories。不同接口 ordered simplices 的乘积按时间 shuffles 分解为共同 simplex；不交换非对易插入。绝对收敛允许 Fubini，因此任何 admissible 中间 sewing 顺序相同。若只保留单接口 responses、marginals 或 partition functions，这个证明不适用。

这继承并明确用于实际新 interactions 的是[既有 finite-history 定理](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/quantum-sewing.md#L46-L121>)，不是声称 Duhamel 是新定理。新计算在于 (7) 的实际区域分解和下列 operator observables。

## 3. 观测代数与状态在何处进入

有限态的实验 observables 是 Hermitian spin operators、其 time translates、乘积与线性组合。由 (2) 重建 $O(t)=U_\#^\dagger O U_\#$，和 independently defined global evolution 一样。因此同一 operators 的 sums、products、adjoints、commutators 和 finite-time correlations 一致；没有用能谱去补未指定的 matrix elements。

状态另行指定：

- ground-state：直接全局 $H^{\rm dir}$ 的最低 eigenvector；与 $Q_\#$ 最大 eigenvector 比较。若基态唯一，任意 $\beta>0$ 的 exact $e^{-\beta H}$ 都有同一最大 eigenvector，不需要先取 $\beta\to\infty$。
- quench：区域 Gibbs states $\rho_{\rm in}=\rho_1(\beta_1)\otimes\rho_2(\beta_2)$，打开真实 $W$ 后实时演化。这不等于已经相互作用的 equilibrium Gibbs preparation。
- spatial replica：$\rho_A=\operatorname{Tr}_{\bar A}|\Omega\rangle\langle\Omega|$，真实 spin tensor factors。$\operatorname{Tr}\rho_A^2=\operatorname{Tr}(\rho^{\otimes2}\operatorname{Swap}_A)$ 是有限指标恒等式。先 sew amplitude，再 state preparation，再 partial trace；不从 algebra isomorphism 自动推断 entropy。

## 4. 实际独立数值比较

[可复现 NumPy 程序](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/spatial_sewing_checks.py>)直接按 Pauli local rule 构造 $H^{\rm dir}$ 并对角化；另一条路线只用 internal regional Hamiltonians 和 crossing Pauli terms 构造 integrated histories。不是将 global exponential 拆成矩阵因子再称为 sewing。

程序用独立的 noncommuting-word recursion 精确生成 crossing-number coefficients。对 $e^{z(H_{\rm reg}+uW)}$，时间 Taylor coefficient 满足
\[
B_{k,n}=\frac zk[H_{\rm reg}B_{k-1,n}+WB_{k-1,n-1}],\quad B_{0,0}=1.
\]
$\sum_kB_{k,n}$ 恰为 $n$-crossing Duhamel integral，因为每个 noncommuting word 的 simplex integral 等于对应 Taylor coefficient。普通时间 Taylor 截断和 crossing-order 截断分别控制，未使用 $[H_{\rm reg},W]=0$。

取 $L=1,N=6,a=1/6,\lambda/a^2=0.1$，所以 $\lambda=1/360$；64-dimensional spin target。两条 spatial interfaces，16 个含重复系数的 crossing Pauli terms；$C=6.95929581789$。

- local-rule 与 regional-plus-crossing 矩阵 residual $4.45\times10^{-15}$。
- 实时 $t=0.08$，保留 14-crossing histories 时 operator error $7.30\times10^{-15}$；12 阶为 $1.67\times10^{-14}$。14 阶理论 truncation bound 小于 floating-point floor，数值 residual 不称为 exact zero。
- Euclidean $\beta=0.16$，14 阶 error $1.17\times10^{-13}$，解析 tail bound $8.45\times10^{-12}$。
- time Taylor order 100 的 coarse analytic tail 分别小于 $1.3\times10^{-99}$ 和 $1.5\times10^{-67}$；实际误差由 floating-point 和 crossing truncation 主导。

### 4.1 真空关联与空间 entropy

最大 eigenvector of sewn $e^{-\beta H}$ 与独立 ED ground-state fidelity 在 double precision 下为 $1$，不是 interval-certified equality。下表同一 cutoff/state/operator prescription：

| observable | $\lambda=0$ direct | $\lambda=1/360$ direct | deformed sewn |
|---|---:|---:|---:|
| $\langle Z_0Z_2\rangle$ | 0.566452912373 | 0.566948935001 | 0.566948935001 |
| spatial half-chain $S_1$ | 0.587737910765 | 0.587763967713 | 0.587763967713 |
| spatial half-chain $S_2$ | 0.442707930545 | 0.442530148575 | 0.442530148575 |
| $\operatorname{Tr}\rho_A^2$ | — | 0.642408972961 | 0.642408972961 |

自然 logarithm。SVD reduced spectrum 和独立 explicit partial-trace purity 相符。另有真正实时 vacuum Wightman
\[
\langle Z_0(t)Z_2(0)\rangle_{t=0.08}
=0.573645489151-0.00007772302745\,i,
\]
sewn/direct difference 小于 $2\times10^{-14}$。这些不是仅由 energies 得到的数，依赖真空 eigenvector 和 spin matrix elements。

### 4.2 能量输运：必须保留 interaction energy 与切换功

定义 bare right-region uptake
\[
J_2=i[H,H_2]=i[W,H_2],\quad
\frac d{dt}\langle H_2\rangle=\langle J_2\rangle.
\]
这里 $H_2$ 指 embedded regional Hamiltonian，整个 PBC cut 的两个 interfaces 都计入。一般 $J_1+J_2\ne0$，因为 $\dot W=i[H,W]$；精确关系为 $J_1+J_2+\dot W=0$。若把 $W/2$ 分给每侧，可定义反对称 current，但那是另一项需声明的 energy-partition convention。

初态 $\beta_1=0.15,\beta_2=0.45$，$t=0.08$：

| observable | global direct | sewn |
|---|---:|---:|
| $\Delta\langle H_2\rangle$ | 0.428067938716 | 0.428067938716 |
| $\langle J_2\rangle$, hot left | 9.80301196484 | 9.80301196484 |
| $\langle J_2\rangle$, reversed temperatures | 4.53305022032 | 4.53305022032 |
| bias-odd directional part | 2.63498087226 | 2.63498087226 |

bias-odd 定义为两次反向温差实验之差的一半；bias-even 部分包含连接时的 interaction quench，不误称为稳态热导。独立 time finite difference 给 $9.80301196443$；continuity residual 为 $6.7\times10^{-16}$。没有做 steady-state/thermodynamic limit 或声称有限链数据给出 continuum thermal conductance。

### 4.3 不只拟合能谱：低模非对角 matrix element

从 spin vacuum 用四个 exact NS Fourier Majorana creators 构造 $r=1/2,3/2$ 的左右 pair。该态趋于 normalized level-$(2,2)$ CFT state，其目标
\[
|\langle 2,2|V_1|0\rangle|=4\pi^2/L^3.
\]
实际 spin ED 得（$L=1$）：

| $N$ | vacuum $\langle V_a\rangle$ | $|\langle 2,2;a|V_a|0;a\rangle|$ |
|---:|---:|---:|
| 4 | -0.080032905451 | 6.62741699797 |
| 6 | -0.073218123514 | 19.7653718044 |
| 8 | -0.071095763031 | 27.1282900807 |
| 10 | -0.070153938305 | 31.1672387336 |

目标分别为 $-\pi^2/144=-0.068538919452\ldots$ 和 $4\pi^2=39.4784176044\ldots$。非对角有限-size corrections 很大，不把小链外推当成证明。其 exact Fourier factor 为
\[
\frac{|\langle 2,2;a|V_a|0;a\rangle|}{4\pi^2/L^3}
=\operatorname{sinc}^2\!\frac{\pi}{2N}\,
\cos\!\frac{\pi}{2N}\cos^2\!\frac\pi N\cos\!\frac{3\pi}{2N}
=1-\frac{7\pi^2}{3N^2}+O(N^{-4}),
\]
$\operatorname{sinc}x=\sin x/x$。这由四模 Vandermonde 直接给出，并同 spin-state 矩阵元核对；因此非零 mixing 的确在实际 cutoff 中存在。完整数据、norm residuals、代码 hash 见[保存结果](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/spatial-results.md>)。

## 5. 哪里可以推广，哪里还不可以

有限 theorem 对任意有限局域 spin interactions 成立，和自由、可积、强关联无关。例如加 generic longitudinal field 与 next-neighbor terms 后，所有 crossing supports 原样进入 $W$，history proof 不变。**这严格推广的是 finite dynamics sewing，不是这些新 Hamiltonians 具有同一 $T\bar T$ 连续极限。**

若 seed 是同时有 thermal 与 magnetic perturbations 的 Ising QFT（generic couplings 时非可积），其 $T\bar T$ insertion 必须用该 seed 的完整 stress tensor/trace 和 counterterms 重新构造，不能直接复用 critical 式 (7)。最低可核查目标是固定低能矩阵元的一阶匹配，再检验有界 smeared correlators 和 crossing amplitudes 的 cutoff-uniform estimates。Potts 也同理：完整 sectors 和 multiplicities 要保留，不能用 central charge 替代 operator input。

**Verified:** finite real/Euclidean full-history theorem、finite associativity、实际 crossing interactions、上述三个 observable families 的 independent finite-matrix comparison。**Assumptions:** 同一 cutoff/Hamiltonian/state/operator prescription，全部接口 mixed histories。**Not verified:** fixed-$\lambda$ continuum correlators、spatial entropy renormalization、所有 history orders 的 cutoff-uniform domination、非可积 seed 的 continuum operator bridge。
