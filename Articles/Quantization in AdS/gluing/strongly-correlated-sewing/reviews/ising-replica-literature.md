# Critical Ising replica sewing：严格文献边界与可证的相对行列式子问题

审查日期：2026-11-07。对象是偶数周期链
\[
H_N=-\sum_{j\in\mathbb Z/N\mathbb Z}Z_jZ_{j+1}-\sum_jX_j,
\qquad a=L/N,
\]
的有限体积唯一基态；先在该态上取 spin tensor-factor partial trace，再令固定互不接触的空间区间按格点逼近，固定整数 replica 阶数 \(n\ge2\)。不以只保留一个 Jordan–Wigner Gaussian sector 的量替代 spin Rényi moment。

## 判定

**阶段说明。** 本报告记录文献适用范围核查，不声称不存在其他证明。此后本研究通过 relative Fredholm／RH 与离散 Hardy 近零模，已自行证明双区间 n=2 的完整归一化收敛；当前状态以[主文](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/ising-spatial-replica.md>)为准。下面对现有文献不能直接套用的判断保持不变，早期列出的 n=2 缺口不应再读成当前未证状态。

**本次找到并核实的定理尚不能推出这一 quantum-chain 多区间量到 full nonchiral Ising CFT branched-cover sewing 的严格收敛；两区间 \(n=2\) 也不能靠“genus one + 标量 Laplacian determinant 渐近”直接结案。** 这是定理适用范围的判定，不是数学上不可能收敛的断言，也不是声称穷尽所有文献。

最有用的正面输入有三类：

1. 有限格点保留 strings 的精确 Gaussian/Pfaffian 分解；
2. 固定非退化二维 mesh 的 torus 有限尺寸配分函数渐近，以及锥面上**标量/平坦向量丛 Laplacian** determinant 渐近；
3. 直接量子链上的 covariance 强收敛与跨区间 Hilbert–Schmidt 收敛，有望绕开完整 Fisher–Hartwig 渐近，严格证明若干 **UV-finite Gaussian-sector 相对 determinant** 的极限。

仍需补的不是普通基态二点函数收敛，而是各 sector 的 determinant 归一化及 odd sector 的消失/相对 suppression，或一个真正适用的 spin-Dirac/Kac–Ward 锥面 determinant 定理。

## 1. 已核实的来源、位置、适用范围

### 1.1 精确有限链 strings：有；sewing 渐近证明：没有

**Fagotti–Calabrese, “Entanglement entropy of two disjoint blocks in XY chains”**，arXiv:1003.1110v1，J. Stat. Mech. (2010) P04016。[原文](https://arxiv.org/abs/1003.1110)

- PDF/正文 pp. 6–11，尤其 (25)、(32)、(49)–(57)：spin reduced density matrix 可由四个 Gaussian operators 组织，保留区间间 Jordan–Wigner string。
- PDF/正文 p. 11，(55)：string-modified covariance 是相应 Schur complement；(57) 给二阶 moment 的四项表达。该页已视觉核对。
- PDF/正文 pp. 15–19，§5：critical Ising 的 continuum 函数是数值有限尺寸外推及 CFT 比较，不是带误差界的 determinant 渐近证明；p. 18 明说 “strong support”。
- (55) 涉及逆矩阵时须使用文中 singular-case 处理，而不是默认任意有限块可逆。

**Coser–Tonni–Calabrese, “Spin structures and entanglement of two disjoint intervals in conformal field theories”**，arXiv:1511.08328v1，J. Stat. Mech. (2016) 053109。[原文](https://arxiv.org/abs/1511.08328)

- §2 是有限格点 Gaussian words，§3 是 CFT，§4 将 words 与 spin structures 匹配，§5 是 numerical checks。
- 本文适合识别每一项应收敛到哪一个 spin structure，但没有找到将格点极限与相应 CFT determinant 连接起来的严格统一误差估计。不能将其 “in the scaling limit” 的 CFT matching 读成已经证明所问极限。
- 介绍的主要 scaling setup 是 infinite line 两区间；有限圆周固定比例需要另外跟踪。

### 1.2 Kac–Ward 到标量 Laplacian：存在精确桥，但适用条件决定性地受限

**Cimasoni, “The critical Ising model via Kac-Ward matrices”**，arXiv:1101.5559v3，CMP 316 (2012) 99–126。[arXiv](https://arxiv.org/abs/1101.5559)；[出版页](https://doi.org/10.1007/s00220-012-1575-z)

- **Proposition 3.2，arXiv PDF/正文 pp. 11–12**：将 flat-metric discrete spin structures 与拓扑 spin structures 自然对应，要求**所有 cone angles 是 \(2\pi\) 的奇数倍**。
- **Theorem 3.3，p. 13**：同一要求下，Ising even-subgraph partition polynomial 是所有 \(2^{2g}\) spin structures 的 Arf-weighted Kac–Ward square-root sum。平方根规定 constant coefficient 为 +1，不能任意取数值主支。
- **Theorem 4.6，pp. 24–25**：isoradial critical weights \(\nu_e=\tan(\theta_e/2)\)，critical Laplacian weights \(c_e=\tan\theta_e\)。若位于 primal vertices 的 cone angles 为 \(2\pi\) 的奇数倍，则 **\(g=0,1\)** 时 geometric Kac–Ward determinant 与 flat-unitary-twisted scalar Laplacian determinant 成正比（显式局域因子）；**\(g\ge2\)** 时两者作为 twist character 的函数从不成比例。p. 24 定理已视觉核对。
- **§4.4，p. 27**：高 genus 与 analytic torsion 的联系作者明确称为 informal statement，不给证明，甚至未给精确 conjecture。

两个不能省略的细节：

1. \(n=2\) replica branch point 的 pullback metric cone angle 是 \(4\pi\)，不是奇数倍 \(2\pi\)。若将 cone 放在 dual face，可以避开 Theorem 4.6 中“primal vertices”的那一条件，但仍避不开 Proposition 3.2/Theorem 3.3 的**所有 cones** 条件；所需局部 spin holonomy 要补入，不能仍当作定义在整个闭曲面上的 flat character。
2. 零温 cylinder 经 conformal compactification 后，两区间 double cover 是 genus one；这不意味着原 branched lattice 就是 homogeneous flat torus lattice。锥面 Weyl 因子、无穷端的 vacuum caps 与局部 counterterms 尚未被任何 torus theorem 处理。若先取 finite-temperature base torus，两个区间的 double cover 反而是 genus three。

Theorem 4.6 否定的是特定“普通 flat scalar Laplacian 直接替代 KW”的高 genus 桥；它不否定正确 spin-connection Laplace-type operator 或其他变形桥的可能性。

### 1.3 高 genus 离散 Dirac：不是 determinant 收敛定理

**Cimasoni, “Discrete Dirac operators on Riemann surfaces and Kasteleyn matrices”**，JEMS 14 (2012) 1209–1244，出版版。[PDF](https://www.unige.ch/math/folks/cimasoni/Dirac.pdf)；[出版页](https://ems.press/journals/jems/articles/4234)

- **Theorem 3.12，PDF p. 22 / 正文 p. 1230**：fixed flat surface，cones 为 \(2\pi\) 的奇数倍，isoradial radii 趋零，rhombus angles 统一远离退化端；**若**离散 holomorphic spinors 已按指定意义收敛，则极限是 holomorphic spinor。
- 这是 kernel/consistency 类型结论；没有提供全部特征值乘积、trace-ideal、热核积分或 zeta determinant 收敛。
- **Theorems 4.8/4.9/4.11**：给出离散 Dirac 成为 Kasteleyn matrices 的几何条件及有限 dimer partition sum。
- **Theorem 4.14，PDF p. 33 / 正文 p. 1241**：每个 positive-genus Riemann surface 存在满足相应条件的任意细 isoradial bipartite discretizations。它是存在性，不是给定 replica lattice 的 determinant 渐近；而且其中使用的适配 graphs 未必是原 quantum-chain Trotter graphs。

### 1.4 真正的 torus 配分函数有限尺寸定理

**Cimasoni, “Kac-Ward operators, Kasteleyn operators, and s-holomorphicity on arbitrary surface graphs”**，arXiv:1307.2494v4。[原文](https://arxiv.org/abs/1307.2494)

- **Theorem 3.1/Corollary 3.2**：KW 与 associated bipartite Kasteleyn operators 的精确关系。
- **Corollary 3.5，arXiv PDF/正文 pp. 19–20**：fixed weighted biperiodic planar graph，正且固定的 couplings，在 critical inverse temperature，把 period lattice 放大为 \(n\Lambda\)。Ising \(\log Z\) 等于 bulk \(n^2f\) 加普适 modular finite-size correction 加 \(o(1)\)。模参数从 characteristic polynomial 在 node 的 Hessian 得出。
- 证明明确保留四个 torus Kac–Ward sectors，调用 Kenyon–Sun–Wilson “On the asymptotics of dimers on tori” 的结果。矩形 anisotropic square lattice 是文中 p. 20 的例子。
- 这是**固定二维 anisotropy、无 branch points、固定非退化基础 graph** 的强子结论；不能作为 anisotropy 趋零、Trotter step 趋零时的 uniform theorem。

### 1.5 Conical Laplacian determinants：很强，但算子不是自动的 Ising Majorana

**Izyurov–Khristoforov, “Asymptotics of the Determinant of Discrete Laplacians on Triangulated and Quadrangulated Surfaces”**，CMP 394 (2022) 531–572，**Theorem 1.1**。[出版全文](https://link.springer.com/article/10.1007/s00220-022-04437-3)

- fixed compact surface，由有限个相等 triangles/squares 拼成；可有 cone/corner，Dirichlet/Neumann/mixed boundary conditions；flat unitary vector bundle。
- 每个 tile 由 fixed weighted biperiodic lattice 缩放，具有足够的旋转/反射对称性使拼接一致；edge weights/Brownian normalization 固定。
- 给 \(\log\det^*\Delta_\delta\) 的 bulk、boundary、\(\log\delta\)、局部 cone constants 以及 continuum Friedrichs \(\log\det^*_\zeta\Delta\)，余项 \(o(1)\)。不是仅 leading free energy。
- flat-connection punctures 在其 setup 中与 cone points 分离。replica spin monodromy 若位于 cone 同一点，不能把两条输入分别套上后合并。
- 要用于 Ising，必须证明离散 spin/KW 算子与这种 Laplacian 的精确关系，或给相应 spin Laplace-type operator 的 determinant 定理；还须确定 cone self-adjoint extension、zero modes、square-root/Pfaffian phase。**直接取 scalar determinant 的某个分数幂无效。**

### 1.6 直接 quantum/连续时间的局域场：有；replica determinant：未覆盖

**Li–Mahfouf, “Conformal invariance in the quantum Ising model”**，arXiv:2112.04811v1。[原文](https://arxiv.org/abs/2112.04811)

- space-time semi-discrete mesh \(2\delta\mathbb Z\times\mathbb R\)，不是固定二维 anisotropy 的极限替代。
- **Theorems 3.1/3.2，PDF pp. 11–12**：simply connected domains 中 energy correlations。
- **Theorem 3.7，PDF p. 13**：simply connected domain 中 rescaled spin correlations，fixed distinct marked points；统一远离彼此及边界。
- **Theorem 3.9，PDF p. 13**：full-plane two-point asymptotic。
- 本次使用的版本不提供 periodic finite-circle ground-state replica branched-cover partition determinant，亦不提供任意 genus sewing。不能把辅助 spinor double covers 的存在误作 full Ising partition function on cover 的收敛。

### 1.7 截至审查日期的新进展仍明确留下 Euclidean cones

**Chelkak–Izyurov–Kytölä, “Critical Ising model as the M(4,3) minimal model of conformal field theory”**，arXiv:2610.13705v1，2026-10-09。[原文](https://arxiv.org/abs/2610.13705)

- **Theorem 2.4(4)，PDF/正文 p. 10；Corollary 2.7，p. 11**：fixed microscopic local-field polynomials，在 finitely connected planar isoradial approximations 上的 rescaled correlations，完整 two-chiral diagonal minimal-model 状态空间，包含 descendants。
- **Remark 2.5，pp. 10–11**：torus 情况仍有 pure fermionic correlations 的一部分未在文献明确完成；作者认为可沿已有方法补齐，但不是这里写下的 theorem。
- 同一 Remark 明确写：**“The case of isoradial approximations to arbitrary Euclidean surface with a boundary and conical singularities is a work in progress.”** p. 11 已视觉核对。
- 宏观区间 swap 是包含 \(O(a^{-1})\) sites 的 replica operator，既非这里的 fixed local polynomial，也非单份 Ising 的局域场；没有 uniform-in-support theorem 时不能套此结果。

## 2. Fisher–Hartwig / sine-kernel：精确识别可用与不可用部分

### 2.1 Ordinary scalar/block Toeplitz 不自动涵盖有限密度的离散圆周 FCS

**Deift–Its–Krasovsky, “Asymptotics of Toeplitz, Hankel, and Toeplitz+Hankel determinants with Fisher-Hartwig singularities”**，Annals of Mathematics 174 (2011) 1243–1299。[出版 PDF](https://annals.math.princeton.edu/wp-content/uploads/annals-v174-n2-p12-p.pdf)

普通 scalar FH 的输入是 continuous Fourier coefficients 的 fixed symbol Toeplitz matrices；generalized FH 处理同一 setting 中多个 minimal representations。它可用于适当已化为该对象的单块/无限链量。把宏观分离 blocks 的 restricted covariance、或 finite-circle fixed-density 的 discrete Fourier coefficients，直接改称 ordinary Toeplitz 不成立。需要另证精确转换及 uniform double-scaling error。

**Basor–Ehrhardt–Virtanen, “Asymptotics of block Toeplitz determinants with piecewise continuous symbols”**。[出版全文](https://onlinelibrary.wiley.com/doi/10.1002/cpa.22223)

文章确有 rigorous fixed-matrix-symbol jump asymptotics；其引言明确说明 generalized multiple-minimal-representation 的 block analogue 更难，尚不在结论内。其 quantum-chain applications 不能被泛化为 arbitrary growing multiple principal blocks 或 finite-density discrete-symbol theorem。

### 2.2 最接近的 discrete FH：Webb，仍不足

**Webb, “A discrete log gas, discrete Toeplitz determinants with Fisher-Hartwig singularities, and Gaussian Multiplicative Chaos”**，arXiv:1509.03446v1；下载 PDF 首页内部日期为 2021-05-31。[原文](https://arxiv.org/abs/1509.03446)

- **Proposition 18，PDF/正文 pp. 9–10**：symbol 是 \(e^V\prod_j|z-w_j|^{\beta_j}\)，\(\beta_j>0\)，即 root singularities；\(V\) 是 fixed Laurent polynomial。
- 它比较 \(N\times N\) discrete Toeplitz determinant 与 \(M\) 个均匀圆周 mesh points，误差为相对 \(O(N/M)\)。因此只有 \(N/M\to0\) 才得到所需 \(1+o(1)\)。
- **Remark 19，p. 10** 明确讨论 \(N/M\to q>0\) 可能改变公式。本题 half-filled discrete circle 是固定正密度，且需要 complex jump phases，不满足这两个关键范围。

### 2.3 连续 multi-interval sine kernel：Charlier，仍不足

**Charlier, “Large gap asymptotics for the generating function of the sine point process”**，arXiv:1906.11079，Proc. London Math. Soc. 123 (2021) 103–152。[开放全文](https://pmc.ncbi.nlm.nih.gov/articles/PMC8494285/)

- **Theorem 1.1 / (1.6)**：任意 fixed finite number of consecutive intervals，continuous kernel \(\sin(x-y)/(\pi(x-y))\)，\(r\to\infty\) 时给全部 \(O(1)\) 常数及 \(O(\log r/r)\) error。
- 该 theorem 的 \(s_j\) 是 positive real parameters，compact subsets of \((0,\infty)\) 上一致；不是本题所需的 complex unit phases。
- **Theorem 1.2** 允许一个 \(s_j=0\)，仍不是 parity phase \(-1\)。
- 需要额外复参数 analytic-continuation uniform bounds，以及 discrete finite-density circular-to-continuous comparison；本次未找到覆盖全部这些条件的现成定理。

## 3. 可直接推进的严格子命题：分离 blocks 的相对 Fredholm determinant

这是一般算子论命题，不依赖 Ising CFT identification。

令 \(\mathcal H=\mathcal H_1\oplus\mathcal H_2\)，格点空间用等距的 cell embeddings 放进固定 \(L^2\) 空间；对角块在格点子空间的正交补上延拓为恒等，cross blocks 延拓为零，使以下强收敛都在同一个 Hilbert space 上有意义。写
\[
M_a=\begin{pmatrix}D_{1,a}&C_{12,a}\\C_{21,a}&D_{2,a}\end{pmatrix}.
\]
假设：

1. \(D_{i,a}\) 及 adjoints 强收敛到 \(D_i\) 及 adjoints，所有 \(D_{i,a}^{-1}\) uniformly bounded，极限 \(D_i\) 可逆；
2. \(C_{ij,a}\to C_{ij}\) 于 Schatten \(\mathcal S_2\)。

则由 resolvent identity，逆及 adjoint inverses 强收敛。bounded strong convergence 乘以 \(\mathcal S_2\)-convergent operators 给 \(\mathcal S_2\) 收敛，两个 \(\mathcal S_2\) 因子的乘积给 \(\mathcal S_1\) 收敛。有限维 Schur complement 与 Fredholm determinant 的 trace-norm continuity 因而给
\[
\frac{\det M_a}{\det D_{1,a}\det D_{2,a}}
\longrightarrow
\det_F\!\left(1-D_2^{-1}C_{21}D_1^{-1}C_{12}\right).
\]
右边是 cross-block relative determinant，不要求每个 continuum diagonal block 单独具有 ordinary determinant。

对 real skew/anti-Hermitian covariance 约定 \(\Gamma^*=-\Gamma\)，\(I\pm\Gamma\) 的 inverse norm 不超过 1。这里的 \(\Gamma\) **不是** Fagotti 论文未乘 \(i\) 的 Hermitian covariance 约定。对标准 number-conserving FCS \(0\le C\le1\)，
\[
M_\theta=I+(e^{i\theta}-1)C,
\qquad
\|M_\theta^{-1}\|\le |\cos(\theta/2)|^{-1}
\quad (\theta\not\equiv\pi\;\mathrm{mod}\;2\pi).
\]
这个界来自标量谱线段离原点的最小距离，不需要猜测特征值分布。

### 如何用于本题，及尚未完成处

- 临界 covariance 的 Fourier multipliers 有 uniform norm；在 smooth test functions 上验证极限后，可用稠密性得到强收敛。
- 固定正间隔使跨区间 Cauchy kernels 没有 diagonal singularity，cell embeddings 下逐点/一致 kernel 极限可提升为 \(\mathcal S_2\) convergence。
- 若先改写成 half-filled XX sine kernel，须去掉 staggered oscillation 或保留两 Fermi-point components；原始快速振荡 kernel 不能直接宣称 \(\mathcal S_2\) 收敛。
- 这给若干 Gaussian words 的 UV-finite 两区间/单区间乘积比值极限。**仍须计算连续 relative determinant**，例如解 finite-Hilbert-transform/Cauchy singular-integral Riemann–Hilbert 问题，才能把它认成 cross-ratio 幂；仅存在极限不是 full Ising CFT sewing identification。
- 对含 parity phase \(\theta=\pi\) 的 word，或 \(\Gamma_B^{-1}\) 的 string Schur complement，以上 uniform inverse estimate 失效。它是 odd-sector suppression 证明的具体缺口，而非可忽略的技术细节。
- 父研究中的四项到 FCS 的精确映射、三个 nondegenerate FH charge vectors，以及第四项 \((1,-3,1,1)/4\) 的 minimal-representation 分析，**本审查未独立复算**。若采用该规约，剩余 lemma 至少须说明第四项相对前三项趋零及其 cutoff/endpoint-rounding uniformity；\(a^{1/2}\) 是待证速率，不在本审查中升级为 theorem。

## 4. 态、mesh、极限的必要区分

- 有限偶数 PBC spin chain 的唯一基态是 parity-even；JW 对角化时必须选择相应 NS sector 并保留 spin partial trace 的 strings，不能把 bare CAR restriction 当原问题。
- 对固定 \(N\)，Trotter/continuous-time approximation 与低温极限可严格成立；这不自动给 \(N\to\infty\) 所需一致估计。用原 dimensionless \(H_N\) 时 finite-size gap 是 \(O(N^{-1})\)，所以 ground-state projection 不能只说 fixed inverse temperature “足够大”。若将 Hamiltonian 乘 \(1/a\) 以固定物理 velocity，则须同步说明 inverse-temperature 的转换。
- 固定非零二维 anisotropy 的 rhombi 有统一角度界；quantum limit 是 anisotropy 退化，不能默许同一 angle-bounded theorem 的 constants 一致。
- 两区间零温 circle replica 的 compactified genus 是 \(n-1\)；有 \(m\) 区间则为 \((n-1)(m-1)\)。finite-temperature torus base 的 cyclic cover genus 是 \(1+m(n-1)\)。两者不是同一个固定 compact surface 的 mesh limit。
- “renormalized moment”应规定 endpoint counterterm/单区间 normalization。对 \(c=1/2\)，twist total dimension \(\Delta_n=\frac{c}{12}(n-1/n)\)；\(m\) 区间 moment 的标准 cutoff power 是 \(a^{2m\Delta_n}\)。两区间 \(n=2\) 为 \(a^{1/4}\)。这处幂的 CFT identification 是目标 normalization，不能反过来作为已证明 lattice asymptotic。

## 审查状态

Verified：核对上述论文的具体适用范围；视觉核对 Cimasoni Theorem 4.6、最新 CIK Remark 2.5/Corollary 2.7、Fagotti (55)/(57)。本笔记的 Schur-complement 相对 determinant 子命题给出了独立的算子论证明。

Assumptions：固定区间数、固定整数 replica、端点互相保持正距离；各文献使用其自身 mesh/边界条件；没有将二维 fixed-anisotropy 与 semi-discrete quantum 极限混同。

Not verified：完整 lattice replica sewing limit；spin-Dirac cone-domain/determinant 桥；four-word→FCS 映射的独立复核；odd-sector suppression；连续 relative determinant 的显式 cross-ratio evaluation；所有极限交换的一致界。本次未修改主文、未向研究目录添加 JSON 或 PDF。
