# $T\bar T$ Ising：一个有算符内容的有限-cutoff Hamiltonian

**已构造并验证：局域一阶 $T\bar T$ Hamiltonian、一个三格点范围的自旋实现，以及固定 NS 低模子空间的矩阵元极限。尚未构造：有限物理耦合的全阶连续 Hamiltonian。** 精确能谱不能填补后一缺口。

日期：2026-11-12。此目录是独立的新研究；不恢复旧归档 programme，不改写既有 formalism。

## 1. 对象、约定与问题边界

取 Lorentzian signature $(-,+)$，$x\sim x+L$，$v=\hbar=k_B=1$；$c_L=c_R=c=1/2$，不是把 $c$ 定义成两者之和。$[\lambda]=L^2$。真空能只减去无限体积 bulk 项，保留 Casimir 能。

遵循[区域 formalism](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/Gluing and observable algebras.md#L48-L146>)的独立区域输入、opening、实际 crossing data、再比较 independently defined global theory 的次序。遵循[CPS 权威约定](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L7-L27>)的 $\omega=\delta\theta$、physical boundary/corner terms；本次量子计算使用其中的[有限时间 Dyson/OFPT](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L163-L204>)。有限自旋 Hilbert 空间和自伴矩阵是另行明确的量子定义，不从线性 Peierls/CCR 结论推断非微扰相互作用理论。无 gauge redundancy，不加入无必要的 BV 场。

独立指定 bosonic Ising CFT：
\[
\mathcal H_{\rm Ising}=(\mathcal V_0\otimes\bar{\mathcal V}_0)
\oplus(\mathcal V_{1/2}\otimes\bar{\mathcal V}_{1/2})
\oplus(\mathcal V_{1/16}\otimes\bar{\mathcal V}_{1/16}).
\]
各 $\mathcal V_h$ 为 irreducible $c=1/2$ module。单一未投影 NS Majorana Fock space 不是整个 bosonic Ising；空间 entropy 使用真实 spin tensor factors，而不把多区间 JW strings 丢掉。

以如下谱流固定 $T\bar T$ 的符号和归一化：
\[
E_\lambda(L)=\frac{L}{2\lambda}\left[\sqrt{1+\frac{4\lambda E^{(0)}}L+\frac{4\lambda^2P^2}{L^2}}-1\right],\quad
E^{(0)}=\frac{2\pi}L(h+\bar h-c/12),\quad P=\frac{2\pi}L(h-\bar h).
\tag{1}
\]
$h,\bar h$ 此处包含 descendant levels。分支连续接到 $\lambda=0$。展开为
\[
E_\lambda=E^{(0)}+\frac\lambda L(P^2-(E^{(0)})^2)
+\frac{2\lambda^2}{L^2}E^{(0)}[(E^{(0)})^2-P^2]+O(\lambda^3).
\tag{2}
\]
其他文献的 deformation 参数必须先按 (1) 映射，不直接照搬其正负号或因子。

## 2. 局域 Hamiltonian 的非零模不能删去

令 $A_n=L_n-(c/24)\delta_{n0}$，$B_n=\bar L_n-(c/24)\delta_{n0}$，并定义物理 chiral energy densities
\[
h_R(x)=\frac{2\pi}{L^2}\sum_n A_ne^{2\pi inx/L},\quad
h_L(x)=\frac{2\pi}{L^2}\sum_n B_ne^{-2\pi inx/L}.
\]
于是 $H_0=(2\pi/L)(A_0+B_0)$，$P=(2\pi/L)(A_0-B_0)$。固定 seed-CFT operator prescription 下，局域应力乘积给
\[
\boxed{H_\lambda=H_0+\lambda V_1+O(\lambda^2),\qquad
V_1=-4\int_0^L h_Rh_L\,dx
=-\frac{16\pi^2}{L^3}\sum_{n\in\mathbb Z}A_nB_n.}
\tag{3}
\]
左右空间 Fourier 指数相反，因此是同号指标 $n,n$。混合 chiral OPE 无奇点，但在 Hilbert 空间上对态施加等时积分仍需要 cutoff；(3) 首先是有限能量矩阵元/复合场插入。

$n=0$ 项给全部一阶能移 $(P^2-E_0^2)/L$；$n\ne0$ 项满足
\[
[H_0,L_n\bar L_n]=-\frac{4\pi n}L L_n\bar L_n,\qquad [P,L_n\bar L_n]=0.
\]
故在固定 $(E_0,P)$ 退化子空间一阶扰动为 scalar，却仍混合不同能量。仅用 $H_{\rm spec}(\lambda)=E_\lambda(H_0,P)$ 会漏掉这些动力学。

这是一个可显式比较的 frame 问题，而不只是措辞。有限 cutoff 下置
\[
S=\frac{4\pi}{L^2}\sum_{n\ge1}\frac{L_{-n}\bar L_{-n}-L_n\bar L_n}{n},\qquad S^\dagger=-S.
\]
则 $H_0+\lambda V_1=e^{\lambda S}[H_0+\lambda(P^2-H_0^2)/L]e^{-\lambda S}+O(\lambda^2)$。使用对角 frame 时必须同时变换物理 operators。有限维 $e^{\lambda S}H_{\rm spec}e^{-\lambda S}$ 是一种有正确谱和正确一阶的 completion，但**未证明满足全阶局域 stress flow**；任意再加 $\lambda^2$ 阶的 unitary rotation 就显示谱本身不唯一确定算符映射。

### 2.1 真空态与真正检测非对角项的关联

$C_n=\langle0|L_nL_{-n}|0\rangle=c\,n(n^2-1)/12$。在保留 $n\le M$ 的 cutoff 下，
\[
|\Omega_\lambda\rangle=|0\rangle+
\lambda\frac{4\pi}{L^2}\sum_{n=2}^M\frac1n L_{-n}\bar L_{-n}|0\rangle+O(\lambda^2).
\tag{4}
\]
因此对固定的 CFT modes，
\[
\boxed{\left.\partial_\lambda\langle L_2\bar L_2\rangle\right|_0=\frac{\pi}{8L^2}.}
\tag{5}
\]
等价 Hermitian connected response 为 $\partial_\lambda\langle(L_2+L_{-2})(\bar L_2+\bar L_{-2})\rangle_c=\pi/(4L^2)$。只保留谱、同时固定 operators 会给零；共轭 operators 的对角 frame 则能恢复同一结果。(5) 不是声称某个未指定的 deformed-stress renormalization scheme 有唯一关联。

[CAR 截断程序](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/virasoro_checks.py>)从 NS fermion modes 独立形成有限 Virasoro 矩阵，$M=2,\ldots,6$ 的解析 response 全为 $0.392699081699\ldots$（$L=1$），与 (5) 一致；独立 ED centered derivative 也相符，见[完整结果](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/verification/virasoro-results.md>)。这里的 tensor factors 是 chirality，不是 spatial regions；只计算 vacuum block，不冒充全部 Ising sectors。

## 3. 明确的空间自旋 cutoff

偶数 $N\ge4$，$a=L/N$，PBC，各 site 为 $\mathbb C^2$。独立给定
\[
H_{a,0}=\frac1{2a}\left[-\sum_j(X_j+Z_jZ_{j+1})+\frac{4N}{\pi}\mathbf1\right].
\tag{6}
\]
不是用全局能谱定义形变，而取以下实际 Pauli interactions：
\[
\boxed{\begin{aligned}
H_{a,\lambda}&=H_{a,0}+\lambda V_a,\\
V_a&=\frac1{8a^3}\left\{
-\sum_j(X_jX_{j+1}+Z_jZ_{j+2})
+\frac{14}{3\pi}\sum_j(X_j+Z_jZ_{j+1})\right.\\
&\hspace{21mm}\left.+\frac2\pi\sum_j[-Y_jY_{j+1}+Z_jX_{j+1}Z_{j+2}]
-\frac{32N}{3\pi^2}\mathbf1\right\}.
\end{aligned}}
\tag{7}
\]
指标模 $N$。这是有限维自伴、range 至多三格点的确定 Hamiltonian，任意实 $\lambda$ 的有限系统动力学都存在。它的 $T\bar T$ 识别**仅到一阶**；(7) 没有未知的 $V_{2,a}$，故不能当作有限 $\lambda$ 的 exact $T\bar T$ lattice regularization。

### 3.1 为什么必须有这些 counterterms

取 $\gamma_{2j}=(\prod_{l<j}X_l)Z_j$，$\gamma_{2j+1}=(\prod_{l<j}X_l)Y_j$，$\{\gamma_m,\gamma_n\}=2\delta_{mn}$；JW continuation 为 $\gamma_{m+2N}=-P_s\gamma_m$，$P_s=\prod X_j$。于是 $i\gamma_{2j}\gamma_{2j+1}=X_j$，$i\gamma_{2j+1}\gamma_{2j+2}=Z_jZ_{j+1}$。在固定 parity sector，(6) 是 uniform Majorana hopping 加 bulk subtraction。

无限临界链的 contractions 为 $c_r=\langle\gamma_m\gamma_{m+r}\rangle=-2i/(\pi r)$（正奇数 $r$），正偶数为零。完整四次 Wick 减除给
\[
Q_m=:\gamma_m\gamma_{m+1}\gamma_{m+2}\gamma_{m+3}:_\infty,
\]
\[
\sum_mQ_m=\sum_m\left[\gamma_m\gamma_{m+1}\gamma_{m+2}\gamma_{m+3}
+\frac{14i}{3\pi}\gamma_m\gamma_{m+1}
+\frac{2i}{\pi}\gamma_m\gamma_{m+3}
-\frac{16}{3\pi^2}\right].
\tag{8}
\]
$V_a=(8a^3)^{-1}\sum_mQ_m$ 正好变成 (7)。尤其 length-three bilinear 会给 $-YY+ZXZ$：只减常数或只调 velocity 不够。

令 $x_m=ma/2$，低能展开 $\gamma_m=\sqrt a[R(x_m)+(-1)^mL(x_m)]$，$\{R(x),R(y)\}=\{L(x),L(y)\}=\delta(x-y)$。Hamiltonian densities 为 $h_R=-iRR'/2$、$h_L=+iLL'/2$。四行 $(1,j a/2,(-1)^j,(-1)^jj a/2)$ 的 determinant 为 $-4a^2$，故
\[
Q_m=-4a^4:RR'LL':+\cdots=-16a^4 h_Rh_L+\cdots.
\]
$\sum_m\to(2/a)\int dx$ 后，(8) 的归一化恰为 $V_a\to-4\int h_Rh_L$。完整 infinite-vacuum Wick subtraction 去掉全部 bilinears；四个同 chirality fermions 的最低 Taylor determinant 为 $O(a^6)$，不会在维数四混入独立的 spin-four bilinear。

### 3.2 比谱斜率更强的低能命题

**命题（固定 NS 低模矩阵元极限）。** 固定 $L$ 和有限 NS chiral modes 及其有限 Fock 子空间 $\mathcal F_K$，保留 bosonic even-total-parity restriction。以 exact lattice Fourier modes 嵌入为 $\iota_a$。则
\[
\iota_a^\dagger V_a\iota_a
=P_KV_1P_K+O_{K,L}(a^2)
\tag{9}
\]
是在这个固定有限维空间上的 operator-norm 陈述，**不是**全 Hilbert 空间的 norm-resolvent 或固定 $\lambda$ 连续动力学收敛。

证明关键：2R2L Fourier coefficient 为 Vandermonde determinant，变量为 $e^{idp_1},e^{idp_2},-e^{idq_1},-e^{idq_2}$，$d=a/2$。除以 leading $16d^2(p_2-p_1)(q_2-q_1)$ 后为
\[
e^{3idK_{\rm tot}/2}
\operatorname{sinc}\!\frac{d(p_2-p_1)}2
\operatorname{sinc}\!\frac{d(q_2-q_1)}2
\prod_{i,j=1}^2\cos\!\frac{d(q_j-p_i)}2.
\]
空间求和要求 $K_{\rm tot}=0$，所以无 $O(a)$ 项，余项为固定 modes 的 $O(a^2)$。3R1L/1R3L 带 staggered momentum，在固定低模时求和严格为零；4R/4L 在归一化后为 $O(a^4)$。无限线与圆周 Wick conventions 之差增加正确的 Casimir-times-stress 与 vacuum 项，而非残留的 spin-four 污染。有限项 Taylor remainder 一致有界，即得 (9)。R 零模下全矩阵元 analogue 本次未逐项证明；下列 R primary slope 已独立核查。

NS vacuum 的严格有限-$N$ 公式是（$M=2N$）
\[
d_r=-\frac{2i}{M\sin(\pi r/M)}+\frac{2i}{\pi r},\quad r=1,3,
\qquad \langle V_a\rangle_{\rm NS}=\frac{M}{8a^3}(d_1^2+d_1d_3),
\]
\[
\langle V_a\rangle_{\rm NS}=-\frac{\pi^2}{144L^3}
\left[1+\frac{7\pi^2}{30N^2}+O(N^{-4})\right].
\tag{10}
\]
这不是有限-$a$ 精确 Burgers flow。R spin-primary 用 $\sin^{-1}$ 换成 $\cot$（正确保留零模及 parity），得 $\langle V_a\rangle\to-\pi^2/(36L^3)$，匹配 $E_\sigma=\pi/(6L)$。

[独立空间 regulator 审核](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/reviews/spatial-regulator-audit.md>)另行核查了 PBC/JW、Wick、Vandermonde 和 NS/R slopes；[格点推导](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/reviews/lattice-independent.md>)给出有限占据态公式。后者在初始独立探索后收到 quartic 候选作协作计算，不能和完全盲验混称。

## 4. 真正的 UV 障碍，不是“所有 cutoff 都成功”的推断

仅 (4) 已强迫
\[
\|\partial_\lambda\Omega\|_M^2
=\frac{\pi^2c^2}{9L^4}\sum_{n=2}^M(n^2-1)^2
\sim\frac{\pi^2M^5}{180L^4}\quad(c=1/2).
\tag{11}
\]
若要求真空在原 CFT Hilbert norm 中可微，且 eigen-equation 可对所有有限能态求导、导数插入就是 (3)，这些被强迫的 coefficients 违反 Bessel 不等式；三项要求不能同时成立。$\lambda^2$ counterterms 不能修复这个一阶 norm differentiability。它不排除不同表示、非光滑 coupling dependence 或 renormalized correlator perturbation theory。

只迭代 $V_1$ 的二阶真空能则为
\[
E^{(2)}_{\rm mix}(M)=-\frac{\pi^3}{9L^5}\sum_{n=2}^M n(n^2-1)^2
\sim-\frac{\pi^3M^6}{54L^5},
\tag{12}
\]
不是精确谱要求的 $-\pi^3/(864L^5)$。在此 sharp-mode scheme 中匹配真空至少要求
\[
\langle V_2(M)\rangle=\frac{\pi^3}{9L^5}\sum_{n=2}^Mn(n^2-1)^2-\frac{\pi^3}{864L^5}.
\]
这是必要 diagonal constraint，不是完整局域 $V_2$ 的解。一般 primary 还有 state-dependent $M^4$ 和 $M^2$ divergences，仅调 identity 不够，详见[独立 Hamiltonian 推导](</Users/koishi/Documents/Note/Articles/Quantization in AdS/ttbar-sewing/reviews/hamiltonian-independent.md#L334-L439>)。

在 (7) 中有效的 cutoff coupling 为 $\eta=\lambda/a^2$。固定 $\eta$ 去掉 cutoff 会把物理 $\lambda$ 送回零；固定非零 $\lambda$ 则 $\eta\to\infty$。两条不同极限不能混为非微扰 UV completion。低模一阶 (9) 与有限链 exact dynamics 同时正确，也不足以交换 $\lambda$ 展开、全历史求和和 $a\to0$。

**Verified:** (2)、(5)、(8)、(10) 和 UV sums 有解析推导、Wolfram 检查及 fresh 独立复核；有限 CAR/自旋矩阵另作 NumPy 比较。**Assumptions:** 明定的 operator frame、NS fixed low modes、PBC/parity、infinite-plane Wick subtraction、只到形变一阶。**Not verified:** 全阶局域 flow、R 全 off-diagonal bridge、固定非零 $\lambda$ 连续 dynamics/entropy 或 cutoff-uniform spatial sewing。
