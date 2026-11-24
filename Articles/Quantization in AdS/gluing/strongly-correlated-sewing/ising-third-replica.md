# Ising third replica：16 个 words、互补对偶与矩阵 Fredholm 极限

日期：2026-11-07。沿用[空间 replica 主文](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/ising-spatial-replica.md>)的 even critical PBC 真空、固定圆周、分离的两个区间以及 \(\Gamma_{ab}=i\langle[\eta_a,\eta_b]\rangle/2\)。因此 \(\langle\eta_a\eta_b\rangle=\delta_{ab}-i\Gamma_{ab}\)。

## 结论与边界

**n=3 的非参考项已有严格进展，但完整 spin sum 尚未证明。** 16 项归并为五个实 trace。一个非参考 even 轨道可以无 FH 地线性化成有统一局部逆界的三分量 relative Fredholm determinant；纯态互补将第二个 even 轨道精确化到它。另一个 even 轨道与 odd 轨道不能仅凭 Gaussian／纯性消去，已有解析反例。

矩阵 Fredholm 到指定 genus-two theta constant 的桥梁已由独立推导与另一次文献条件审查补齐。因此 a,b,c 三个轨道（共7项）已收敛到指定 CFT terms；d 的3项与 e 的6项仍未证明。§5 明确写出 operator matching、合法 tau 微分、branch/spin data 与归一化，避免直接套用不满足条件的 generic-channel 例子。

## 1. 五个 trace 与实际 spin-structure transport

令 \(P=P_{A_1}\)，\(G'=PGP\)，\(S'=PSP\)。S 是未归一化 string-inserted CAR operator，不是 ordinary spin partial trace。定义
\[
a=\operatorname{Tr}G^3,\quad b=\operatorname{Tr}G^2G',\quad
c=\operatorname{Tr}GS^2,\quad d=\operatorname{Tr}G'S^2,\quad
e=\operatorname{Tr}GSS'.
\]
一般 Hermitian 情形有
\[
p_{3,N}^{spin}=\tfrac14(a+3b+3c+3d-6\operatorname{Re}e).
\tag{1.1}
\]
在本篇 real Ising 真空中 e 实。证明可从 \(\rho=E+O\)、\(E=(G+G')/2\)、\(O=(S-S')/2\) 出发：P-even/odd 分级给 \(\operatorname{Tr}(E+O)^3=\operatorname{Tr}E^3+3\operatorname{Tr}EO^2\)。

### 1.1 不能把原始 r,s 直接当 characteristic

对于一般 n，取 \(s_n=0\)、\(\sum r_j=0\)，\(\alpha=(r_1,\ldots,r_{n-1})\)、\(\beta=(s_1,\ldots,s_{n-1})\)。在 Coser–Tonni–Calabrese 的 canonical cycles 下，
\[
\boxed{2\varepsilon=L\alpha,\qquad2\delta=L^{-T}\beta\pmod2,}
\tag{1.2}
\]
L 为全1下三角矩阵。逐分量为
\(2\varepsilon_k=\sum_{j\le k}r_j\)、\(2\delta_k=s_k+s_{k+1}\)。因此 \(4\varepsilon\cdot\delta=\alpha\cdot\beta\pmod2\)，没有 affine offset；参考 \(G^n\) 是 zero characteristic。

此 map 已实际核实 [arXiv:1511.08328v1](<https://arxiv.org/abs/1511.08328v1>) p25 (76)–(77)，不是只凭项数猜测。论文使用 \(P_{A_2}\)，但 G、S 均总偶，故其共轭与 \(P_{A_1}\) 相同。完整16行表及实际页面证据见[运输核查报告](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/reviews/ising-spin-structure-transport.md>)。

对 n=3，写
\[
\Omega_3(x)=\frac{i\,\mathfrak b(x)}{\sqrt3}
\begin{pmatrix}2&-1\\-1&2\end{pmatrix},\qquad
\mathfrak b(x)=\frac{{}_2F_1(1/3,2/3;1;1-x)}{{}_2F_1(1/3,2/3;1;x)}.
\]
用 binary notation 表示两倍 characteristic，则五类的目标为

| trace | multiplicity | representative \([2\varepsilon;2\delta]\) | relative CFT target |
|---|---:|---|---|
| a | 1 | [00;00] | 1 |
| b | 3 | [00;01] | \(|\Theta[00;01]/\Theta[00;00]|\) |
| c | 3 | [01;00] | \(|\Theta[01;00]/\Theta[00;00]|\) |
| d | 3 | [01;10] | \(|\Theta[01;10]/\Theta[00;00]|\) |
| e | 6 | [01;11] | 0 |

表中 theta 的 characteristic 实际是所列 bits 除以2。每行是 dihedral orbit 的代表，不表示轨道内每个 word 标签相同。odd coefficient 的负号来自有限 (1.1)，不能因 continuum theta 为零而反向任改 finite trace 的符号。

## 2. 精确互补对偶：只有 b 与 c 交换

令 \(D=B\cup C\)，补区局域 parity 为 \(Q=P_B\)，补区 string operator \(S_D\) 插入 \(P_{A_2}\)。对任意 finite pure even CAR state，有
\[
\boxed{(a,b,c,d,e)_A=(a,c,b,d,e)_D.}
\tag{2.1}
\]
此身份不需要 Gaussian 或实性；e 的有序定义必须保持一致，不能随意把右侧改成共轭。

**证明要点。** 物理四块振幅为 \(\psi_{abcd}\)，对应 parity bits 亦记 a,b,c,d。按 CAR 重排形成
\(M_{ac,bd}=(-1)^{bc}\psi_{abcd}\)。则 \(G=MM^*\)、\(S=MQM^*\)。令 \(K=M^*M\)、\(H=M^*PM\)，五个 trace 化为
\[
\operatorname{Tr}K^3,\quad\operatorname{Tr}KH^2,\quad
\operatorname{Tr}K^2QKQ,\quad\operatorname{Tr}H^2QKQ,\quad
\operatorname{Tr}KQHQH.
\]
补区重排矩阵为 \(N=P_DM^T\)，其 \(G_D=K^T\)、\(H^T=P_DS_D\)。转置并利用 P_D 与所有 even 对象对易，成对 P_D 抵消，即得 (2.1)。

尤其
\[
c_A=\operatorname{Tr}_D(G_D^2QG_DQ)=b_D.
\tag{2.2}
\]
可以用 \(G_D^2/\operatorname{Tr}G_D^2\) 的 covariance
\(\Gamma_2=2\Gamma_D(I-\Gamma_D^2)^{-1}\) 和两次带符号 Pfaffian overlap 计算；\(I-\Gamma_D^2\ge I\)，无需除以 string expectation。

### 2.1 排除进一步普适消元的反例

四块各一mode，取
\(M_0=\operatorname{diag}(\sqrt3,\sqrt3,1,-1)/(2\sqrt2)\)，令 U 在 \(|01\rangle,|10\rangle\) 上作实 \(\pi/4\) Gaussian rotation、偶子空间恒等。\(M_0\) 与 \(M_1=UM_0\) 都是 real even pure Gaussian，具有同一个 \(G_D=\operatorname{diag}(3,3,1,1)/8\)。但它们的五词分别为
\[
(a,b,c,d,e)_{M_0}=(7,7,7,7,7)/64,\qquad
(a,b,c,d,e)_{M_1}=(7,5,7,5,2)/64.
\]
故 d,e 不可能由补区 \(G_D\) 与固定块 parities 单独决定。另有 real even pure Gaussian 例给
\((a,b,c,d,e)=(1,1,1,1,-1)/16\)，说明 e 可严格为负，不能以 determinant 正根替代。

进一步令 \(M=UM_0U^T\)，两侧 parity 都不与 reduction 对易，得到
\((a,b,c,d,e)=(7,5,5,5,5)/64\)，所以
\(a^2+d^2-b^2-c^2=3/512\ne0\)。这排除一个可能的 finite theta-like 消元捷径，但不否定 e→0 后、特定 critical continuum locus 上的恒等式。

这些反例针对纯性／CAR／Gaussian 所强迫的普适身份，不排除临界 Hamiltonian 的额外特殊关系。完整解析构造与 QQbar exact checks 见[独立互补报告](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/reviews/ising-n3-complement-independent.md>)。

## 3. b 项的 branch-free finite linearization

按两类 Majorana 分组，\(\Gamma(C)=\left(\begin{smallmatrix}0&C\\-C^T&0\end{smallmatrix}\right)\)，\(T=\operatorname{diag}(-I_{A_1},I_{A_2})\)。令 \(\ell=|A|\)。则
\[
\boxed{a=4^{-\ell}\det(I+3CC^T),\qquad
b=4^{-\ell}\det(I+CC^T+2CTC^TT).}
\tag{3.1}
\]
符号证明：先由 normalized G² 的 covariance 与 Pfaffian overlap 得
\(b^2=4^{-2\ell}\det(I-\Gamma^2-2\Gamma\Gamma')\)。其两个 sublattice blocks 的 determinants 由 Sylvester identity 与 transpose 相等。Wick expansion 保证两边 square roots 实际是 C entries 的多项式，C=0 时均为1，因此恒等式固定整个 polynomial 的正号；没有逐点选择 principal sqrt。

关键三分量线性化为
\[
\mathcal L(C)=
\begin{pmatrix}
I&C&\sqrt2 CT\\
-C^T&I&0\\
-\sqrt2 C^TT&0&I
\end{pmatrix},\qquad
\det\mathcal L=4^\ell b.
\tag{3.2}
\]
按区域重排，diagonal blocks \(\mathcal L_j\) 为 I 加 real-skew matrix，所以 \(\|\mathcal L_j^{-1}\|\le1\)，且
\(\det\mathcal L_j=\det(I+3C_{jj}C_{jj}^T)=4^{|A_j|}p_{3,N}(A_j)\)。cross blocks 记 X_ij，则精确
\[
\frac{b_N}{p_{3,N}(A_1)p_{3,N}(A_2)}
=\det[I-\mathcal L_1^{-1}X_{12}\mathcal L_2^{-1}X_{21}].
\tag{3.3}
\]
整个 relative block 一般仅有 off-diagonal Hilbert–Schmidt，不能直接宣称普通 determinant；(3.3) 的两个 cross factors 乘积才是合适的 trace-class 对象。

## 4. 严格连续 Fredholm 极限

定义
\[
A_t=\begin{pmatrix}0&1&\sqrt2t\\1&0&0\\\sqrt2t&0&0\end{pmatrix},
\quad t_1=-1,\ t_2=+1,\quad B_j=I+A_{t_j}\otimes H_{jj}.
\]
\(A_t\) 是 real symmetric，谱为0,±√3；H skew-adjoint，故 \(\|B_j^{-1}\|\le1\)。staggered embedding 给 \(C_{jj}\to H_{jj}\)、\(C_{jj}^T\to-H_{jj}\) 强收敛，cross 为 \(\mathcal S_2\) 收敛。因此
\[
\boxed{\frac{b_N}{p_{3,N}(A_1)p_{3,N}(A_2)}
\longrightarrow \mathcal D_{-+}(x),}
\]
\[
\mathcal D_{-+}=
\det_F[I-B_1^{-1}(A_+\otimes H_{12})B_2^{-1}(A_-\otimes H_{21})].
\tag{4.1}
\]
证明是 strong bounded inverse×Hilbert–Schmidt，再以两个 \(\mathcal S_2\) factors 的乘积得到 \(\mathcal S_1\) 收敛。全算子可逆性不是这一步的假设。

这个 determinant **就是 b 的归一化极限本身**，不是平方，也不另加 species exponent。\([A_-,A_+]\ne0\)，所以 scalar RH 的 q 幂律不能直接计算它。同号时可对角化，得到 \(\mathcal D_{++}(x)=(1-x)^{-2/9}\)。

纯态对偶与已证参考 a 给
\[
\frac{b_N}{a_N}\to(1-x)^{2/9}\mathcal D_{-+}(x),\qquad
\frac{c_N}{a_N}\to x^{2/9}\mathcal D_{-+}(1-x).
\tag{4.2}
\]
所以五轨道中的 a,b,c 已有无条件、UV-finite 的 continuum operator limit。剩余 d,e 不是遗漏的微小项，仍必须单独分析。

## 5. Matrix RH 与指定 CFT spin 的识别

对 Cauchy transform 取 \(\mathcal Cf=(2\pi i)^{-1}\int f(y)/(y-z)dy\)。相应左作用 jump 为
\[
J_t=(I+iA_t)^{-1}(I-iA_t)=I-\tfrac12A_t^2-\tfrac i2A_t.
\]
令
\[
U=\begin{pmatrix}0&-i/\sqrt2&i/\sqrt2\\0&-1/\sqrt2&-1/\sqrt2\\1&0&0\end{pmatrix},
\quad P_3=\begin{pmatrix}0&0&1\\1&0&0\\0&1&0\end{pmatrix},\quad S_3=\operatorname{diag}(-1,1,1).
\]
则精确 \(U^*J_+U=P_3\)、\(U^*J_-U=S_3P_3S_3\)。第一割线的 sheet transitions 带 signs (−,+,−)，第二割线全正，各 branch 的局部乘积仍为+1。这给真正的 cyclic three-sheet cover 与 Z₂ sewing data，而不只是同一个 characteristic 的项数。

**定理。**
\[
\boxed{\mathcal D_{-+}(x)=(1-x)^{-2/9}\mathcal B(x),\qquad
\mathcal B(x)=\sqrt{\frac{1+2\cos[\tfrac43\arcsin\sqrt x]}3},\quad0<x<1.}
\tag{5.1}
\]
正支由 x→0 时 \(\mathcal B\to1\) 固定。以下给原始 operator 到 theta 的实际桥梁。

### 5.1 原 Fredholm 就是局部 Hardy sewing determinant

用两个不交的逆时针圆周 \(\gamma_i\) 包围各 interval。\(\mathscr H_i^\pm\) 是圆内/圆外 Hardy 空间，外部函数在∞消失。定义
\[
R_i f=2i\mathcal C_i(A_if),\quad E_i:\mathscr H_i^+\to L^2(I_i),
\quad V_{ij}:\mathscr H_j^-\to\mathscr H_i^+,
\quad Q_i=-R_iB_i^{-1}E_i.
\]
E 是 restriction，V 是跨圆周 analytic restriction。此段 B_i 表示 (4.1) 的局部算子，不是下面的 endpoint exponent matrix。精确 \(X_{ij}=E_iV_{ij}R_j\)，两次 Sylvester identity 给
\[
\mathcal D_{-+}=\det_{\mathscr H_1^-}(I-Q_1V_{12}Q_2V_{21}).
\tag{5.2}
\]
全部 cross kernels 因正距离而 smoothing，trace-class 操作合法。

令单割线解 \(Y_i(z)=((z-a_i)/(z-b_i))^{\mathsf B_i}\)，满足 \(Y_{i,+}=J_iY_{i,-}\)、\(Y_i(\infty)=I\)；\(\mathsf B_i\) 的谱为 \(0,\pm1/3\)。对输入 h 令 \(f=-B_i^{-1}E_i h\)、\(F=R_if\)。Plemelj 给 \(h+F\) 同样满足该 jump。去除局部 jump 后 endpoint 增长小于一阶 pole，故可去；又 \(Y_i,Y_i^{-1}\) 在圆外 holomorphic，得到
\[
Q_i=(Y_i\Pi_i^+Y_i^{-1}-I)|_{\mathscr H_i^+}.
\tag{5.3}
\]
restriction 不能省去：把右侧误当全 L² 上的 graph map 会出现额外 \(-I_{\mathscr H^-}\)。

### 5.2 CGL 的合法特化与 local tau 因子

采用 [Cafasso–Gavrylenko–Lisovyy, 1712.08546v1](<https://arxiv.org/abs/1712.08546v1>) Definition3.1、Theorem3.4（p18、p20），取 direct factors \(\Psi_{i,+}=I\)、\(\Psi_{i,-}=Y_i\)。其 operators 精确成为 \(A_{+-}=V\)、\(A_{-+}=\operatorname{diag}Q_i\)，因此它的 tau determinant 恰为 (5.2)，没有额外平方。

**不能直接套该文 §3.3 的 generic pants 例子。** 本题每个完整 cut 的总 monodromy 为 I，违反其 intermediate eigenvalues distinct modulo integers 的额外假设。这里改用一般 contour Theorem3.4，并直接计算两个 endpoint residues。

设全局左-jump 解为 Y。CGL dual 在圆外是 Y、圆内是 \(Y_i^{-1}Y\)。先在 x 足够小时使用：cross product 的 trace norm 趋零，Neumann series 保证 global dual 可解；不以 local inverse 偷换 global solvability。Theorem3.4 给
\[
\partial\log\mathcal D=-\sum_i\frac1{2\pi i}\oint_{\gamma_i}
\operatorname{tr}[(\partial Y_iY_i^{-1})(Y'Y^{-1})]dz.
\]
对 \(\partial_{a_i}\)，有 \(\partial_{a_i}Y_iY_i^{-1}=-\mathsf B_i/(z-a_i)\)。\(Y'Y^{-1}\) 自身并非 rational connection，但乘 \(\mathsf B_i\) 取 trace 后，因 \([\mathsf B_i,J_i]=0\) 而跨该 cut 单值。

JMU connection 独立定义为 \(\mathcal A=Y^{-1}Y'\)。明确 convention map：\(Z=Y^T\) 给右 jump \(Z_+=Z_-J_i^T\)，且 \(Z'Z^{-1}=(Y^{-1}Y')^T\)。在端点写 \(Y=(z-a_i)^{\mathsf B_i}G_a(z)\)，得到
\(H_{a_i}=\operatorname{tr}(\mathsf B_iG_a'G_a^{-1})(a_i)\)。同一 contour 内另一个 endpoint 的 residue 恰减去 local Hamiltonian。因此
\[
d\log\mathcal D=d\log\tau_{\rm global}-d\log\tau_1-d\log\tau_2.
\tag{5.4}
\]
局部 \(\operatorname{tr}\mathsf B_i^2=2/9\)、\(\tau_i\propto(b_i-a_i)^{-2/9}\)。mixed/same 的 \(Y_i\) 只作常数共轭，所以 local factors 相同；不能在单个 D 的公式中把它们丢掉。

### 5.3 指定 spin、theta 因子及常数校准

cover 为 \(\Sigma:w^3=(z-a)(z-c)/[(z-b)(z-d)]\)，genus2。无 sign 的参考 spin 为
\[
\kappa_0=\pi^*O_{\mathbb{CP}^1}(-1)\otimes O(p_a+p_b+p_c+p_d),
\quad\kappa_0^2=K_\Sigma.
\]
mixed spin 为 \(\kappa_0\otimes\eta\)，其中 η 是上述 signed seams 给出的 flat 2-torsion line。它在全部 vanishing a-cycles 上 trivial，在 bridge cycles 上非平凡，所以属于 \([0;\delta\ne0]\) 三元轨道，吻合 (1.2)。

非零 theta 邻域中，推前 Szegő kernel 给同一个 normalized quasi-permutation RHP。这里没有额外 Abel charges：局部三阶 branch exponents 正是 \(0,\pm1/3\)，signed correction 是 flat 2-torsion。因此可使用 [Korotkin, math-ph/0106009v2](<https://arxiv.org/abs/math-ph/0106009v2>) Theorem5.11、p20 (5.60) 的 r=0 特化：
\[
\tau_\kappa=F(\Sigma,\pi)\Theta[\kappa](0|\Omega),
\]
F 与 spin 无关。三阶 ramification 使用 Remark4.10、Remark5.13 的扩展；不把 simple-branch 的 projective-connection derivative 原封不动套过来。Theorem5.15 只是 Malgrange divisor，不是这里的 factorization 定理。

于是 (5.4) 给 \(\mathcal D_{-+}/\mathcal D_{++}=C\Theta[\kappa]/\Theta[\kappa_0]\)。x→0 时两个 Fredholm 都趋1，两个 a-NS theta 常数也同以1起始，所以 C=1。固定区间 rescaling 后 Fredholm family 在0<x<1局部解析，故先在小x得到的恒等式可解析延拓；下面的显式 theta ratio 在实区间严格正，排除中途零点。

### 5.4 Thomae 的代数化与 lattice 结论

归一端点为0,x,1,∞，令 \(\theta=\arcsin\sqrt x\)。曲线可写成
\[
v^2=w^6+2(1-2x)w^3+1,
\quad A_k=r\omega^k,\quad B_k=s\omega^k,
\]
其中 \(r=e^{i(\pi+2\theta)/3}\)、\(s=e^{i(\pi-2\theta)/3}\)、\(\omega=e^{2\pi i/3}\)。参考 spin 对应 Thomae partition \(\{A_0,A_1,A_2\}|\{B_0,B_1,B_2\}\)，mixed 是交换一个 paired A_k,B_k 的三种之一。Thomae 给
\[
\left(\frac{\Theta[\kappa]}{\Theta[\kappa_0]}\right)^4
=\frac{(r^2+rs+s^2)^2}{9r^2s^2}
=\left[\frac{1+2\cos(4\theta/3)}3\right]^2.
\]
x→0 的归一化固定 (5.1) 的正支。由 (4.2)，最终得到真正的 lattice-to-CFT 子定理
\[
\boxed{\frac{b_N}{a_N}\to\mathcal B(x),\qquad
\frac{c_N}{a_N}\to\mathcal B(1-x).}
\tag{5.5}
\]
不是从有限数据拟合出来的表达式。独立 operator 小x检查给 \(\mathcal D_{-+}=1-2x/27+O(x^2)\)，与 (5.1) 一致；x→1 的 \(\mathcal B\sim2\,3^{-3/4}(1-x)^{1/4}\) 也符合中间 fusion monodromy，但不声称 lattice collision limit 一致。

## 6. 证据与接下来的最小问题

- [独立 finite/Fredholm 证明](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/reviews/ising-n3-fredholm-independent.md>)及[可复现 Wolfram 程序](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/verification/ising_n3_fredholm_checks.wl>)：29项检查全部通过（24 exact、5有限Ising），明确核对 covariance sign 转换及 finite determinant polynomial。
- [独立互补与反例报告](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/reviews/ising-n3-complement-independent.md>)及[Sage 程序](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/verification/ising_n3_complement_checks.sage>)：QQbar exact，包括 e_A=e_D 而非共轭的 complex even-state 区分测试。
- [canonical transport 文献核查](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/reviews/ising-spin-structure-transport.md>)：actual v1 PDF、指定页视觉检查、16项精确枚举；明确区分论文的 finite identity、sewing target 与 numerical extrapolation。

下一步不是重复 a,b,c 的 cutoff 收敛或 (5.1) 的识别，而是研究 d/a 的 nontrivial even limit 与 e/a→0。对临界真空尚无反例，但纯态／Gaussian 条件不足以自动完成这两步。

一个可检验的新方向是把[标量 jump-localization](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/ising-multi-interval-fredholm.md>)推广到 matrix-valued unitary sewing symbols：各 endpoint 的 local jump spectra 相同，可先以局部常数 unitary 对齐 \(\Delta g_j^*\Delta g_j\)，再证明只留下统一 trace-class remainder。若此步骤及 exact finite replica determinant map 成立，odd spin structure 的 holomorphic spinor可能提供可采样的近零向量。**这仍是待证路线**，尤其 matrix rotations 与 occupied projection 的不对易、finite Pfaffian orientation、endpoint exponents 对近零模的影响均须单独控制；不把 n=2 scalar winding theorem 直接当作 n=3 odd suppression。
