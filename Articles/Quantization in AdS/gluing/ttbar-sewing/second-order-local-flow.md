# Ising 二阶局域 flow：条件构造、接触项与同-regulator 反项

**结果：在明定的 integrated stress-flow／finite-part 处方下，可以推导非零的局域二阶 Hamiltonian，并证明全部固定能量—动量块的二阶谱恒等式；这还不是完整的 Hilbert-stress 量子构造。** 对整个 determinant 中的复合对象取 midpoint finite part，与只对内部 stress pair 取 symmetric finite part，给不同的非对角顶点，必须同时说明算符／态的 frame map。原空间格点的二次迭代也已直接计算，不能用 mode counterterms 代替。

日期：2026-11-15。本文是第二阶段新增研究，第一阶段的 [Hamiltonian](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/ising-hamiltonian.md>)、[有限-history sewing](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/sewing-and-observables.md>)及旧正文保持不变。

## 1. 对象、展开与 formalism

遵循 [CPS pipeline](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md>)：signature 为 $(-,+)$，保留边界／corner potential，$\omega=\delta\theta$；平直守恒 current 不自动等于某个协变 action 的 metric variation。遵循 [原 gluing formalism](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/Gluing and observable algebras.md>)：独立区域输入、opening/release、实际 crossing supports、完整 joint histories，最后与独立 global theory 比较。本文不从一阶线性量子化或能谱推断相互作用 sewing 的连续极限。

取 $\hbar=v=1$，圆周 $L$，各 chiral central charge $c=1/2$（不是两者之和），$[\lambda]=L^2$。只减 infinite-volume bulk vacuum energy，保留 Casimir。物理展开无阶乘：
\[
H_\lambda=H_0+\lambda V_1+\lambda^2V_2+O(\lambda^3),\qquad
V_1=-4\int_0^L rl\,dx.
\]
定义 $h=T^{00},p=T^{01}=T^{10},q=T^{11}$；$h_0=q_0=r+l,p_0=r-l$，守恒式为
\[
i[H,h]+p'=0,\qquad i[H,p]+q'=0.
\]
\[
A_n=L_n-\frac c{24}\delta_{n0},\quad B_n=\bar L_n-\frac c{24}\delta_{n0},\quad
[A_m,A_n]=(m-n)A_{m+n}+\frac c{12}m^3\delta_{m+n,0},
\]
\[
r=\frac{2\pi}{L^2}\sum_nA_ne^{2\pi inx/L},\qquad
l=\frac{2\pi}{L^2}\sum_nB_ne^{-2\pi inx/L}.
\]
为区分物理能量与代码中的 dimensionless Hamiltonian，统一写
\[
H_\lambda=\frac{2\pi}{L}(\mathcal H_0+gW_1+g^2W_2+\cdots),\quad
\mathcal H_0=A_0+B_0,\quad g=\frac{8\pi\lambda}{L^2},
\]
\[
W_1=-O_4,\quad O_4=\sum_nA_nB_n,\qquad V_2=\frac{128\pi^3}{L^5}W_2.
\]
所有空间积分周期；以下积分分部只用于整圈，切分区域后不准无条件丢弃界面项。

## 2. 一阶局域守恒已固定一个量子 improvement

令 $\kappa=c/(24\pi)=1/(48\pi)$。Virasoro 代数给
\[
i[\int fr,r]=-fr'-2f'r+\kappa f''',\qquad
i[\int fl,l]=fl'+2f'l-\kappa f'''.
\]
因此
\[
i[V_1,r]=4lr'+8rl'-4\kappa l''',\quad
i[V_1,l]=-4rl'-8r'l+4\kappa r'''.
\]
在 canonical current frame $p_1=0$，两条守恒式强制
\[
\boxed{h_1=-4rl+4\kappa(r+l)'',\qquad
q_1=-12rl+4\kappa(r+l)''.}
\]
这里只用了无同-chiral 重叠碰撞的一阶代数；任意周期 smear 的残差精确为零。更一般 improvement family 及其约束见 [独立局域推导](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/reviews/local-second-order-independent.md>)。

**所以字面 pointwise $\partial_\lambda h=-\det T$ 在这个 frame 中一阶就不成立。** 必须允许
\[
\partial_\lambda h=-\operatorname{FP}(hq-p^2)+\partial_xK_\lambda,
\qquad K_0=4\kappa(r+l)'.
\]
以下先采用明确的 **integrated** flow
\[
\partial_\lambda H=-\int\operatorname{FP}_{\rm det}(hq-p^2),
\]
而非假定未知的 $K_1$ 已经解决。改善中的 $r+l$ 也不是 seed Lorentz scalar；其 Hilbert/source completion 是额外问题。

## 3. 二阶 integrated 候选：association 顺序不可省略

$Q_{\rm std}(r)$ 表示 anchored conformal stress-square finite part，$J(r)=((r')^2)_{\rm FP}$。定义整个复合对象之间的 midpoint finite part $X\circ Y=\operatorname{FP}[X_+Y_-+Y_+X_-]/2$。把 opposite-chiral spectator 一起 Taylor 展开，才有
\[
\int h_0\circ(rl)=\int[Q_{\rm std}(r)l+rQ_{\rm std}(l)],
\]
\[
\int h_0\circ h_0''=-\int[J(r)+J(l)+2r'l'].
\]
于是从 $2V_2=-\int(h_1\circ h_0+h_0\circ q_1)$ 得
\[
\boxed{V_2^{\rm det}
=8\int[Q_{\rm std}(r)l+rQ_{\rm std}(l)]
+4\kappa\int[J(r)+J(l)+2r'l'].}
\tag{1}
\]
量子导数项不能删；它来自 central term，不是经典平方根展开。

另外可以先对 **内部两个 stress** 单独取 symmetric finite part，记
\[
Q_{\rm sym}(r)=Q_{\rm std}(r)+\frac{r''}{8\pi},
\]
再把它代入 (1)。这定义另一个代表 $V_2^{\rm pair}$，不是同一个 determinant-FP：
\[
\boxed{V_2^{\rm pair}=V_2^{\rm det}-\frac2\pi\int r'l'.}
\tag{2}
\]
这一区别已经由两条 Wick／Virasoro 推导独立确认，见 [局域 review §5a](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/reviews/local-second-order-independent.md#L365-L454>)与 [fermion review §3.3](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/reviews/fermion-second-order-independent.md#L243-L293>)。

设
\[
D_{\rm mix}=\sum_n n^2A_nB_n,\qquad \mathcal R=\sum_n nA_nB_n,
\qquad \mathcal R^\dagger=-\mathcal R,\quad [\mathcal R,\mathcal H_0]=2D_{\rm mix}.
\]
则
\[
W_2^{\rm det}=W_2^{\rm pair}+\frac14D_{\rm mix},\qquad
\mathcal H_{\rm det}=e^{g^2\mathcal R/8}\mathcal H_{\rm pair}e^{-g^2\mathcal R/8}+O(g^3).
\tag{3}
\]
这里是局域导数 generator 的形式级数／有限 cutoff 恒等式；不预设其无限维 unitary implementability。物理 generator 可写 $G=\int rl'$，$U=e^{i\alpha\lambda^2G}$，使 $V_2\mapsto V_2+2\alpha\int r'l'$。frame 变换必须同步运输 external states 和 operators。

## 4. 全部能量—动量块：解析恒等式，不仅 primary 拟合

定义 $S_j(A)=\sum_{n>0}n^jA_{-n}A_n$，在固定 $(A_0,B_0)=(a,b)$ 块上，cylinder finite parts 为
\[
Q_{4,0}(A)=a^2-\frac a6+2S_0(A)+\frac c{1440},\quad
J_0(A)=2S_2(A)+\frac a{60}-\frac c{3024}.
\]
两个 frame 的块投影相同：
\[
\mathcal P W_2\mathcal P
=\frac12[bQ_{4,0}(A)+aQ_{4,0}(B)]
+\frac c{48}[J_0(A)+J_0(B)],
\]
因为 $\mathcal P D_{\rm mix}\mathcal P=0$。令 $X_n=A_nB_n$，确切 OFPT 约化是
\[
-\frac12\sum_{n>0}\frac{[X_n,X_{-n}]}n
=-aS_0(B)-bS_0(A)-\frac c{24}[S_2(A)+S_2(B)]
-2ab\sum n-\frac c{12}(a+b)\sum n^3-\frac{c^2}{288}\sum n^5.
\tag{4}
\]
以本处方的 Abel finite parts $\zeta(-1)=-1/12,\zeta(-3)=1/120,\zeta(-5)=-1/252$ 相加，所有非标量 descendant 项及 central constants 抵消：
\[
\boxed{\mathcal E_2=\frac12ab(a+b).}
\tag{5}
\]
这是整个退化块的算符恒等式；推导并未用精确形变谱作为输入。[独立 counterterm review](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/reviews/counterterm-second-order-independent.md>)及 [符号脚本](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/second_order_symbolic_checks.wl>)给完整核算。

恢复物理归一化，(5) 恰为独立谱预测
\[
E_2=\frac{2E_0(E_0^2-P^2)}{L^2}.
\]
不能反过来用这个谱恒等式固定 $D_{\rm mix}$ 的有限系数。

## 5. Mode regulator：power、log 与 operator counterterms

本节不是原空间链。转移模 cutoff 为 $M$，chiral level ceiling 为 $K=M+\text{buffer}$，每个一阶顶点权重 $f_\epsilon(n)=e^{-\epsilon|n|/2}$；$\epsilon$ 是无量纲时间点分割参数，**不是**格距 $a$。令
\[
s_j=\sum_{n=1}^{M}n^je^{-\epsilon n}.
\]
由 (4) 的 UV 核而非逐态拟合得到指定 finite subtraction：
\[
\boxed{C_{\rm pow}=2(s_1+1/12)O_4
+\frac c{12}(s_3-1/120)\mathcal H_0
+\frac{c^2}{288}(s_5+1/252)\mathbf1,}
\]
\[
\boxed{C_{\log}=\frac12s_{-1}D_{\rm mix}.}
\tag{6}
\]
连续平滑极限的 leading power 为 $2O_4/\epsilon^2+c\mathcal H_0/(2\epsilon^4)+5c^2/(12\epsilon^6)$；$s_{-1}\sim\log(1/\epsilon)$。冗余 log 在 Euclidean OPE 中对应 $\partial\bar\partial(T\bar T)$；是 bulk EOM 冗余，不意味着有限时间态／边界效应可不管。

有限 $\epsilon$ 下不能把 descendant remainder 删掉：
\[
a\Delta S_0(B)+b\Delta S_0(A)
+\frac c{24}[\Delta S_2(A)+\Delta S_2(B)],\quad
\Delta S_j=\sum_{n>0}n^j(1-w_n)A_{-n}A_n,
\]
其中 $w_n=e^{-\epsilon n}$（$n\le M$），其余零。例如 chiral $T$ 的 remainder 为 $(1-e^{-2\epsilon})/64$；三个 primaries 没有这个 remainder。

counterterm (6) 的 log 部分也是同一 frame rotation：
\[
S_2=\frac14s_{-1}\mathcal R,\quad [S_2,\mathcal H_0]=C_{\log},\qquad
O\mapsto O+g^2[S_2,O]+O(g^3).
\tag{7}
\]
只改 Hamiltonian 而固定原 source，不是等价的物理处方。以 $O=\mathcal H_0$ 的有限矩阵 transition 为例，$g=.01$ 时同步修正 source 的差为 $3.02\times10^{-7}$，仅改 Hamiltonian 的差为 $3.13\times10^{-5}$；减半耦合分别呈三阶、二阶缩放。

### 谱检查不够：一个 off-diagonal 反例

取 $|TT\rangle=4L_{-2}\bar L_{-2}|0\rangle$，$P=\operatorname{span}\{|0\rangle,|TT\rangle\}$，并用 Hermitian Löwdin 高态核。sharp transfer cutoff 加上谱 power CT 与 log CT 后，该非对角元仍约为 $M/2$（$M=4,8,16,32,64$ 时为 $3.03125,4.95238,8.91771,16.90129,32.89329$）。一般外模 $k$ 的端点伪项含 $|k|M$；不能把它冒充局域 symmetric point splitting。

平滑双顶点权重自动将高态核居中，$c=1/2$ 时
\[
\mathcal K_\epsilon=-\frac12\sum_{t=2}^\infty\frac{t^3}{t^2-1}e^{-\epsilon t}
=-\frac1{2\epsilon^2}+\frac12\log\epsilon+\frac{11}{12}+o(1).
\]
故相同的 retained-space／有限减除约定下，完整有效非对角元为
\[
B^{(2)}_{TT,0}\longrightarrow
\begin{cases}85/96,&\text{inner-pair symmetric frame},\\109/96,&\text{whole-composite determinant FP frame}.\end{cases}
\]
这些数不是普适 observable；要比较相关函数仍须 (3)、(7) 的 operator/state map。

## 6. 有限 CAR 检验的实际范围

[mode 程序](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/second_order_mode_checks.py>)与 [完整结果](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/second-order-mode-results.md>)实际构造 $0,\epsilon,\sigma$ 三个 irreducible bosonic sectors。Ramond 实现采用整数 modes 与 $\psi_0=(-1)^{N_f}/\sqrt2$，$L_0=1/16+\sum rN_r$，没有人为 doubling。

- $M=2,3,4$：三个 primary 的二阶能移与 (5) 相符；chiral $T$ 与导出的有限 regulator remainder 相符。
- 全部左右 relative levels $\le4$ 的 blocks，含四重退化；矩阵维数 $324,400,625$，最大残差约 $1.44\times10^{-13}$。
- $\epsilon,\sigma$ 的独立完整矩阵对角化与二阶预测之差随 $g\mapsto g/2$ 约缩小八倍。
- 两个 frame 的局域 $TT$ 顶点与 $[\mathcal R,\mathcal H_0]=2D_{\rm mix}$ 由同一有限 CAR 矩阵直接检验。

这些是 double precision 的有限检查，不是严格舍入误差区间，也不是无限 cutoff 算符域定理。

## 7. 真正有限程的空间局域插入

取 canonical fermions $\{R(x),R(y)\}=\{L(x),L(y)\}=\delta(x-y)$，$r=-i:RR':/2,l=+i:LL':/2$。本节所有 $:\ :_\infty$ 是 **full infinite-plane fermion Wick**，不等于 conformal stress normal product，也不等于有限圈 NS Wick。
\[
\begin{aligned}
K_{42}&=\int:(RR'''LL'+RR'LL'''):_\infty,\\
K_{33}&=\int:RR''LL'':_\infty,\\
\mathcal Q_5&=i\int:(RR^{(5)}-LL^{(5)}):_\infty.
\end{aligned}
\]
两种代表准确为
\[
\boxed{V_{2,\rm loc}^{\rm det}=-\frac7{6\pi}K_{42}-\frac{35}{24\pi}K_{33}
-\frac{\mathcal Q_5}{180\pi^2},}
\tag{8}
\]
\[
V_{2,\rm loc}^{\rm pair}=-\frac7{6\pi}K_{42}-\frac{47}{24\pi}K_{33}
-\frac{\mathcal Q_5}{180\pi^2}.
\]
例如
\[
Q_{\rm std}(r)=\frac{i}{48\pi}:(5RR'''-9R'R''):_\infty,\qquad
\int J(r)=-\frac i{15\pi}\int:RR^{(5)}:_\infty.
\]
所以经典 Darboux 变量中 quartic 截断，并不推出量子 $V_2=0$。在 dimension six 没有非零 full-Wick sextic；所需的是 bilinear／quartic 的收缩有限项，而不是硬补 sextic，详见 [fermion 独立推导](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/reviews/fermion-second-order-independent.md>)。

在偶数 $N$、$a=L/N,d=a/2$ 的空间链，明确取
\[
R_m=\frac{\gamma_{m-1}+2\gamma_m+\gamma_{m+1}}{4\sqrt a},\qquad
L_m=\frac{(-1)^m(-\gamma_{m-1}+2\gamma_m-\gamma_{m+1})}{4\sqrt a},
\quad D=\frac{\text{shift}_+-\text{shift}_-}{2d}.
\]
用 $d\sum_m$ 与 $D^j$ 替换积分／导数，Wick contraction 固定为同一无限临界链 covariance，得到 Hermitian finite-range 多项式；最长支撑为 13 个 Majorana 位置。NS 续接 $\gamma_{m+2N}=-\gamma_m$；全 spin 理论仍需 parity sectors。小圈 alias 另需处理，以下取 $N\ge16$。

局域插入的 continuum NS 数字为
\[
\langle V_{2,\rm loc}\rangle_0=-\frac{1153\pi^3}{90720L^5},\qquad
\langle TT|V_{2,\rm loc}|0\rangle=
\begin{cases}+28\pi^3/L^5,&\det,\\-4\pi^3/L^5,&\mathrm{pair}.\end{cases}
\tag{9}
\]
第一个数两种代表相同，**不是**总二阶真空能移 $-\pi^3/(864L^5)$；还缺二次迭代与反项。不能丢 plane→circle 收缩产生的 bilinear／identity 项。

[空间脚本](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/second_order_spatial_checks.wl>)实际计算 NS Pfaffian／四creation determinants，$L=1$：

| $N$ | 局域真空插入 | pair 顶点 | det 顶点 |
|---:|---:|---:|---:|
| 32 | -0.396859434 | -121.936598 | 842.704779 |
| 64 | -0.394765516 | -123.502330 | 861.746337 |
| 128 | -0.394245367 | -123.894374 | 866.564513 |
| 极限 | -0.394072277 | -124.025107 | 868.175747 |

误差呈 $O(a^2)$。这里验证的是空间 **局域插入**，不是同一空间 $V_a$ 的全二阶 renormalization。

## 8. 原空间 interaction 的二次迭代：直接求得一个反项

回到第一阶段真实 interaction
\[
V_a=\frac1{8a^3}\sum_{m=0}^{2N-1}:
\gamma_m\gamma_{m+1}\gamma_{m+2}\gamma_{m+3}:_\infty.
\]
本节 $M_{\rm sp}=2N$（不等于 mode transfer cutoff）。NS positive-energy modes 为
\[
q_j=\frac{(2j+1)\pi}{M_{\rm sp}},\quad0\le j<N,\qquad
\epsilon_q=\frac{2\sin q}{a},\quad
c_q^\dagger=\frac1{\sqrt{2M_{\rm sp}}}\sum_me^{iqm}\gamma_m.
\]
精确 circle→plane Wick 转换只额外产生 identity 和 number-diagonal bilinears，无 vacuum→two-creation 通道。定义 $D(q)=\det_{r=0,\ldots,3;j=1,\ldots,4}e^{-irq_j}$，则归一化四粒子矩阵元是
\[
\langle q_1q_2q_3q_4|V_a|0\rangle
=\frac{D(q)}{2a^3M_{\rm sp}}\mathbf1_{\sum q_j=2\pi},\qquad q_1<q_2<q_3<q_4.
\]
保留真实 lattice dispersion 的 exact finite-$N$ OFPT 核因此是
\[
\boxed{\frac{E^{\rm mix}_{2,a}}L
=-\frac1{4a^6M_{\rm sp}^3}
\sum_{\substack{q_1<\cdots<q_4\\\sum q_j=2\pi}}
\frac{|D(q)|^2}{\sum_j\sin q_j}.}
\tag{10}
\]
这是原 regulator 的核，不由 CFT sharp-mode 公式替代。其 Riemann 极限给
\[
\frac{E^{\rm mix}_{2,a}}L=-\frac{b_{\rm lat}}{a^6}+o(a^{-6}),\qquad
b_{\rm lat}=\frac1{96(2\pi)^3}\int_{[0,\pi]^4}\!d^4q\,
\delta(\textstyle\sum q-2\pi)\frac{|D(q)|^2}{\sum\sin q}>0,
\]
\[
b_{\rm lat}\simeq0.00074138034437906.
\]
在分母为零的边界，Vandermonde 使 constrained integrand 连续趋零，故存在通常的 Riemann 极限；小数是收敛数值积分，不是 certified interval。

因此在同一 infinite-chain-Wick 算符基中，必需的 leading bulk identity counterterm 为
\[
\boxed{C_{2,a}^{\rm bulk,1}=+\frac{b_{\rm lat}L}{a^6}\mathbf1.}
\tag{11}
\]
这只确定一个 Wilson coefficient，**不**确定全 $C_{2,a}$。原空间 regulator 的 quadratic self-energy、four-leg 与边界／operator counterterms 仍需同-regulator 匹配；不能从 (11) 加 (8) 就声称二阶空间构造完成。

[独立空间-loop 推导](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/reviews/spatial-loop-second-order-independent.md>)、[程序](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/spatial_loop_uv_checks.py>)及 [实际结果](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/spatial-loop-uv-results.md>)记录：物理 PBC spin ED 的 $N=4,6,8$ 与 (10) 的最大 absolute residual 为 $3.2\times10^{-13}$；精确小圈
\[
E^{\rm mix}_{2,a}(L=1,N=4)=-8(2-\sqrt2)^{5/2},\qquad
E^{\rm mix}_{2,a}(L=1,N=6)=-54\sqrt{2-\sqrt3}.
\]

### 8.1 同-regulator 非真空核：identity 反项确实不够

另取固定八维低模空间
\[
P=\operatorname{span}\{c_{j_1}^\dagger\cdots c_{j_s}^\dagger|0\rangle:
\{j_1,\ldots,j_s\}\subset\{0,1,N-2,N-1\},\ s\text{ even}\}.
\]
用同一 $V_a$、真实 lattice gaps 和实际非零耦合的全部 $Q=1-P$ 中间态，定义
\[
K^{\rm loop}_{ab}=\frac12\sum_{k\in Q}(V_a)_{ak}(V_a)_{kb}
\left[\frac1{e_a-e_k}+\frac1{e_b-e_k}\right].
\]
这里不是总能移：排除了保留在 $P$ 中的中间态，所以其 vacuum diagonal 不等于 (10) 的全 OFPT 数字。定义 $|RL\rangle=c_0^\dagger c_{N-1}^\dagger|0\rangle$，$|T_F\rangle=c_0^\dagger c_1^\dagger c_{N-2}^\dagger c_{N-1}^\dagger|0\rangle$。升序 Fock 的 $|T_F\rangle$ 与 (9) 所用 Virasoro $|TT\rangle$ 相位相反；以下所有非对角数同时遵守此相位。

$N=8,L=1$ 时只有六个共同中间态，精确求和给
\[
\boxed{K^{\rm loop}_{T_F,0}
=32\sqrt{2\bigl(190+88\sqrt2+\sqrt{7738+2569\sqrt2}\bigr)}>0.}
\]
因此 identity counterterm 对这个通道严格无能为力，不是只看数值舍入。

| $N$ | $K_{RL,RL}-K_{0,0}$ | $K_{T_F,0}$ | pair 局域插入加 loop 的 $B_{T_F,0}$ |
|---:|---:|---:|---:|
| 8 | -1113.390011 | 928.646641 | 1020.591114 |
| 16 | -16538.205868 | 8763.675951 | 8879.395394 |
| 32 | -192919.086609 | 39573.989199 | 39695.925797 |
| 64 | -2700002.112149 | 159328.582235 | 159452.084566 |

局域插入的固定低模矩阵元有有限极限，无法靠它和 identity subtraction 就称这些核已完成匹配。表中增长是有限数值证据，不据此宣称已证明所有 $a^{-4}/a^{-2}$ 系数。保持 parity、time reversal 及 identity-family 时，一个允许的局域 subtraction basis 为
\[
C_{2,a}=\frac{c_0L}{a^6}\mathbf1+\frac{c_H}{a^4}H_{0,a}
+\frac{c_3Q_{3,a}+c_TV_a}{a^2}
+c_5\mathcal Q_{5,a}+c_{42}K_{42,a}+c_{33}K_{33,a}+\cdots,
\]
其中 $Q_3=i\int(:RR''':-:LL''':)$；**没有确定或声称所有这些系数非零**。同一固定 NS CAR regulator 的一-Majorana 平移保护低模 $L\mapsto-L$ character，排除 $iRL$ mass-family 反项；不能把该 automorphism 直接当成完整 PBC spin 张量积或每个区域的局域 half-translation。

完整公式、六个中间态、两个独立 gamma/Fourier 实现和适用范围见 [空间 Wilson review](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/reviews/spatial-wilson-second-order.md>)、[程序](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/spatial_wilson_checks.py>)及 [实际数据](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/spatial-wilson-results.md>)。

## 9. 局域 Ward／Hilbert-source：一个明确的接触项反例

完整二阶 canonical-current 能量 Ward 要求同一个接触项延拓下
\[
i[H_0,h_2]+i[V_1,h_1]+i[V_2,h_0]=0,
\tag{12}
\]
并且 $\int h_2=V_2,p_2=0$。单凭 (1) 的积分密度不能自动满足 (12)：$i[V_1,h_1]$ 含重叠同-chiral singularities，one-pair finite parts 并未定义所有复合分布的乘积。

### 某个明确二元 FP 规则能解 Ward，但不能直接作为算符代数

考察具体规则
\[
\mathcal C(a,b)=\operatorname{FP}_{\epsilon\to0^+}
 i\int ds\,[a(y,+\epsilon/2)b(x,-\epsilon/2)-b(x,+\epsilon/2)a(y,-\epsilon/2)],
\quad s=y-x,
\]
使用 full-plane Wick 跨端点 contractions
\[
C_R(s,\epsilon)=\frac{i}{2\pi(s+i\epsilon)},\qquad
C_L(s,\epsilon)=-\frac{i}{2\pi(s-i\epsilon)}.
\]
所有未收缩端点也按自由 Euclidean 时间和空间展开：右动上／下端增量为 $s+i\epsilon/2,-i\epsilon/2$，左动为 $s-i\epsilon/2,+i\epsilon/2$；先做空间留数积分，再取 Laurent 常数。每次嵌套都独立取 FP。

在这一规则下，完整 parity-even dimension-six ansatz 可使两条二阶局域 Ward residual 精确为零，并使 $\int h_2=V_2$。以 $V_2=u\mathcal Q_5+vK_{42}+wK_{33}$ 为未知，得到 $u=-1/(180\pi^2),v=-7/(6\pi)$、$w$ 任意。一个独立的必要条件复核只使用 pure-chiral sector：若 $h_2$ 的三个 chiral bilinear 系数为 $a,b,c_6$，局部能量 Ward 给
\[
a-b+c_6=-5u-\frac1{30\pi^2},
\]
而 $\int h_2=V_2$ 要求左边等于 $u$，故独立推出相同的 $u$。这不使用能谱。

**但是，满足这些 Ward 方程仍然不够：该二元规则迭代后违反 Jacobi。** 令
\[
G=\int g,\quad g=rl'=\frac14:RR'LL'':_\infty,\qquad
D_A b=\mathcal C(a,b),\quad A=\int a.
\]
真正 Hamiltonian commutator 必须满足 $[D_{V_1},D_G]=D_{i[V_1,G]}$。按上述二元 FP 规则计算，
\[
\boxed{\bigl([D_{V_1},D_G]-D_{\int\mathcal C(v_1,g)}\bigr)R(x)
=-\frac{1079}{41287680\pi^2}R^{(7)}(x)
+\text{full-Wick }RLL\text{ cubic 项}\ne0.}
\tag{13}
\]
这是两个独立实现复核的精确非零系数。同一规则对 bosonic stress $r$ 也给非零 Jacobi residual，例如其 full-Wick $:RR^{(8)}:$ 系数为 $59i/(5160960\pi^2)$，故不能靠只保留偶算符回避问题。第二条独立计算进一步用两 $L$ 全收缩 determinant 与一个 $R$ contraction，直接对合并有理函数取留数；三个分项的 single-$R^{(7)}$ 系数为
\[
\frac{236489}{82575360\pi^2},\quad
-\frac{236489}{82575360\pi^2},\quad
\frac{29}{5040\pi^2},
\]
按第一项减第二项再减第三项得到 (13)。合并 integrands 的 $1/s$ 尾项均为零，不是大半圆的积分歧义。$R^{(7)}(x)$ 是局域算符，不能以 $\int R^{(7)}=0$ 丢弃；非恒定 smear 可探测，且纯 chiral 项不能由含两个 $L$ 的 full-Wick cubic 消去。

[接触项／Ward review](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/reviews/ward-source-second-order.md>)及 [可复现脚本](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/ward_source_checks.sage>)保存完整 $h_2,q_2$ 解、sanity checks 和非线性残差；[fresh 独立审核](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/reviews/ward-contact-audit.md>)保存必要系数和 Jacobi 的两条计算。自由方程、一阶 Ward、integrated self-commutator、若干含 $H_0$ 的 Jacobi 均通过，正说明只检查低阶／线性恒等式会漏掉这个反例。

还有一个不依赖长多项式的结构性检验：将 $\mathfrak J_R$ 的 cubic 部分写成 $(i/\pi)\sum_jF_j(L)\partial_x^jR$，最高两项为 $F_5=263:LL':/7680$、$F_4=205:LL'':/1536$。保持 elementary CAR 的 Hamiltonian 向量场必须满足该微分算符的 formal skew-adjoint 条件，但其 $\partial_x^4$ 缺陷为
\[
\frac i\pi(2F_4-5F_5')=\frac{49i}{512\pi}:LL'':\ne0.
\]
因此只修改内层 charge-commutator 的一个局域密度，保持外层规则不变，也救不回这个 Jacobi。包含 four-right／four-left quartic 的完整 dimension-eight identity-family 修复基给相同的精确不可解线性系统；不据此排除改变更广泛的 nested／source prescription。

因此这里的精确结论是：**排除了把这套逐次 FP 二元规则直接当作合法相互作用算符代数的捷径。** 它不证伪 (1) 的条件 integrated 构造，不证伪 $T\bar T$，也不排除更完整的 nested-contact／operator-source completion；但不能用其平直 Ward 的可解性宣称已构造 Hilbert stress。更可靠的下一条路线是从保持 CAR／结合性的同一空间 regulator 计算 Wilson kernels 和 source matching，而非继续只添加能级修补项。

允许的曲率源反项例如 $\lambda^2\int\sqrt g\,R_{\rm curv}(T\bar T)_0$ 与 $\lambda\int\sqrt g\,R_{\rm curv}^2$；平直谱不能固定它们。有限时间中 EOM-redundant 项的端点与区域切分中的界面项也必须保留。二阶 counterterms 更不能修复第一阶段已证明的原 CFT Hilbert 表示中一阶真空导数 norm² 发散。

**Verified:** 一阶守恒 improvement；指定 integrated FP 的二阶代表与精确 association/frame 映射；全部固定能量—动量块恒等式；mode power/log 核及同步 source rotation；有限 CAR/空间插入；原空间真空-loop 核及 leading bulk 反项；同-regulator 非标量核；指定逐次 FP 规则的 Jacobi／CAR 反例。解析、CAS、有限矩阵与独立推导的入口见 [证据索引](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/evidence.md>)。

**Assumptions:** 固定规范化、周期空间、canonical current frame、分别明定的复合算符／regulator 处方；各计算只在其 stated cutoff／外态域内使用。

**Not verified:** 完整 metric-defined quantum flow；全空间-regulator $C_{2,a}$ 与 physical spin/$\sigma$ source matching；固定非零物理 $\lambda$ 的连续局域 Hamiltonian／operator 域与 cutoff-uniform sewing／entropy。
