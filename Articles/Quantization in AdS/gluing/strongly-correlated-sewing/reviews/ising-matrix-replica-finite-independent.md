# 有限 Ising replica words 的矩阵酉计数恒等式：独立推导

## 核心判定

**成立，但下面的单个 n-component counting determinant 精确等于 \(W_{r,s}^{\,2}\)，不是 \(W_{r,s}\)。** 在题设 bipartite covariance 下词为实数，所以也等于 \(|W_{r,s}|^2\)。全局 scalar prefactor 为 **1**；full-chain 单粒子空间维数为 \(2Nn\)，occupied compression 维数为 **\(Nn\)**。

这包括 \(n=3\) 的 \(a=\operatorname{Tr}G^3\)、\(d=\operatorname{Tr}PGPS^2\)、\(e=\operatorname{Tr}GSP SP\)。每个词对应四弧上的常值 signed cyclic permutation / diagonal-sign symbol。所有允许的词在四个端点都有相同局部 jump spectrum；对 n=3 是 \(\{1,e^{2\pi i/3},e^{-2\pi i/3}\}\)。sector 差异没有消失，而在全局、不对易的矩阵符号中。

精确有限例子中 e 可以为负，故不能从 determinant 取 principal square root 恢复 W。本报告不证明任何其他形式的 unsquared determinant 不可能，也不研究渐近、theta functions 或 localization estimates。

## 1. 对象、矩阵尺寸与最终公式

N 个 physical sites，每个 site 有 \(\alpha_i,\beta_i\) 两个 Majoranas，\(P_i=i\alpha_i\beta_i\)。采用
\[
\Gamma_{ab}=\frac i2\langle[\gamma_a,\gamma_b]\rangle,
\qquad \langle\gamma_a\gamma_b\rangle=\delta_{ab}-i\Gamma_{ab}.
\]
按 species 分组时
\[
\Gamma=\begin{pmatrix}0&C\\-C^T&0\end{pmatrix},\quad C\in O(N,\mathbb R),\quad\Gamma^2=-I.
\]
临界 Ising 取题设 \(C_{ij}=\{N\sin[\pi(j-i+1/2)/N]\}^{-1}\)。除 §5 的精确 XX gauge 外，证明不要求 C 是该特殊矩阵。

四弧为 \(A_1,B,A_2,C_{\rm gap}\)，\(A=A_1\cup A_2\)，\(P=P_{A_1}\)。G、未归一化 S 严格采用 CAR 定义
\[
\operatorname{Tr}GO=\langle O(\gamma_A)\rangle,
\qquad\operatorname{Tr}SO=\langle P_B O(\gamma_A)\rangle.
\]
令 \(F_0=G,F_1=S\)，\(r,s\in\{0,1\}^n\)，\(\sum_jr_j\) 偶、\(s_n=0\)，
\[
W_{r,s}=\operatorname{Tr}\prod_{j=1}^n(P^{s_j}F_{r_j}P^{s_j}).
\]
下文乘积始终保持这个次序。

定义 n 维正交 signed cycle
\[
Te_j=e_{j-1}\quad(j=2,\ldots,n),\qquad
Te_1=(-1)^{n-1}e_n,
\tag{1}
\]
以及 \(D_s=\operatorname{diag}((-1)^{s_j})\)、\(R_r=\operatorname{diag}((-1)^{r_j})\)。四段符号为
\[
\boxed{g_{A_1}=D_sTD_s,\quad g_B=R_r,\quad g_{A_2}=T,\quad g_{C_{\rm gap}}=I_n.}
\tag{2}
\]
全部在 \(SO(n)\)：\(\det T=1\)，\(\det R_r=(-1)^{\sum r_j}=1\)。

令 \(U=\bigoplus_{i=0}^{N-1}g_i\) 作用于 \(\mathbb C^N\otimes\mathbb C^n\)。species-grouped 顺序下令
\[
\mathcal U=U\oplus U,\quad
\mathcal Q=\frac{I-i\Gamma}{2}\otimes I_n,\qquad
\operatorname{rank}\mathcal Q=Nn.
\]
精确恒等式是
\[
\boxed{
W_{r,s}^2
=\det_{\mathbb C^{2Nn}}(I-\mathcal Q+\mathcal Q\mathcal U)
=\det_{\operatorname{ran}\mathcal Q}
 (\mathcal Q\mathcal U\mathcal Q).
}
\tag{3}
\]
最后一个 determinant 只在 occupied range 取；不能对全空间的 \(\mathcal Q\mathcal U\mathcal Q\) 取 determinant。

一个方便精确验算的等价式是
\[
\boxed{
W_{r,s}^2=
\det_{Nn}\!\left[\frac{U+(C^T\otimes I_n)U(C\otimes I_n)}2\right].}
\tag{4}
\]
这是用 occupied isometry
\(V=2^{-1/2}(C\otimes I_n,\ iI_{Nn})^T\)、\(VV^\dagger=\mathcal Q\) 压缩 (3)。式中所有 \(2^{-1}\) 已显式包括；没有遗漏 \(2^{-|A|}\) 或其他 global normalization。

## 2. Replica fermionic permutation signs

先不使用 Gaussian 性。对于 n 个各自为偶算符的 \(X_j\)，有
\[
\operatorname{Tr}(X_1\cdots X_n)
=\operatorname{Tr}_{\mathcal F(A)^{\otimes n}}
[(X_1\otimes\cdots\otimes X_n)\widehat T_A],
\tag{5}
\]
其中 \(\widehat T_A\) 是 (1) 对 A 的 canonical fermionic second quantization。

证明 sign：以每个 replica 的 A-occupation block 排序。若第 j 块有 \(m_j\) 个占据 fermions，bare block cycle 把第一块移到最后，产生
\((-1)^{m_1\sum_{j>1}m_j}\)。wrap sign \((-1)^{n-1}\) 再贡献 \((-1)^{(n-1)m_1}\)。在 (5) 的非零矩阵元中，偶性强制所有 \(m_j\) 有同一 parity p，故总符号为
\[
(-1)^{p[(n-1)p+n-1]}=1.
\]
所得 occupation contraction 正是 \(\operatorname{Tr}X_1\cdots X_n\)，而非 reversed word。对偶数 n，省掉 wrap sign 一般错误；脚本已给 n=2 exact failure。

取 \(c_i=(\alpha_i+i\beta_i)/2\)，则
\[
P_i=2c_i^\dagger c_i-1=-(-1)^{c_i^\dagger c_i}.
\tag{6}
\]
将 \(X_j=P^{s_j}F_{r_j}P^{s_j}\) 代入 (5)，两侧 parity conjugations 把 T 变为 \(D_sTD_s\) 于 \(A_1\)，其 scalar signs 成对抵消。对每份 replica 在补区执行 CAR trace，\(P_B^{r_j}\) 就成为 B 上的 diagonal signs \(R_r\)。由 (6) 剩余 scalar 为
\[
(-1)^{|B|\sum_jr_j}=1.
\]
所以在全链 n-replica Gaussian product state 中，
\[
\boxed{W_{r,s}=\langle\widehat U\rangle,}
\tag{7}
\]
\(\widehat U\) 是 U 对原来 Nn 个 complex modes 的 canonical second quantization。S 无须正、无须 \(\operatorname{Tr}S\ne0\)。

这里始终是 CAR reduction，不是将 S 偷换成 spin partial trace；graded tensor product 中的 even operators 使上述重分组无额外符号。

## 3. Majorana-to-Dirac doubling 与 occupied projector

取两个独立、相互反对易的 identical Majorana systems，标签 \(t=1,2\)，包括全部 n replicas。其 even product state 给
\[
\langle\widehat U^{(1)}\widehat U^{(2)}\rangle=W_{r,s}^2.
\]
先定义 \(d_a=(\gamma_a^{(1)}+i\gamma_a^{(2)})/2\)。这些 Dirac modes 的 anomalous correlator 为零，并且
\[
\langle d_b^\dagger d_a\rangle=\frac{\delta_{ab}+i\Gamma_{ab}}2.
\tag{8}
\]
**注意这里是 \(+i\Gamma\)**：occupied projector 的矩阵元是 \(\langle d_b^\dagger d_a\rangle\)，不是其转置 \(\langle d_a^\dagger d_b\rangle\)。

题设 bipartite covariance 允许明确的 sublattice gauge
\[
Z_{\rm sub}=\operatorname{diag}(I_N,-I_N),\qquad
Z_{\rm sub}\Gamma Z_{\rm sub}=-\Gamma.
\]
换成 \(d'=Z_{\rm sub}d\)，则 occupied projector 正是
\(Q=(I-i\Gamma)/2\)。\(Z_{\rm sub}\otimes I_n\) 与 \(\mathcal U=U\oplus U\) 对易，故这个 gauge 不改变 counting symbol。这一步明确处理了 Majorana convention 与 occupied-projection convention，未静默 transpose。

还须确定 doubled lift 的 scalar。每个 \(g_i\in SO(n)\) 可取实反对称 logarithm K。原 c 的 canonical generator 满足
\[
c^\dagger Kc=\tfrac14(\alpha^TK\alpha+\beta^TK\beta).
\]
两份相加恰等于 d 的 number-conserving generator，\(\operatorname{tr}K=0\)，没有常数项。故
\[
\widehat U^{(1)}\widehat U^{(2)}
=\widehat{\mathcal U}_{d'}
\tag{9}
\]
精确成立，global scalar 为 +1。用 Slater determinant expectation 立即得到 (3)。

单个 physical parity 的 doubling 会带一个 minus；本问题总数 \(|B|\sum r_j\) 为偶，恰与上面的 +1 一致。不能将这一 sign 检查省掉后直接援引一个无支路说明的 Gaussian square-root formula。

最后，在局域表示 \(\alpha_j=\mathrm{JW}(X_j)\)、\(\beta_j=\mathrm{JW}(-Y_j)\) 中，实 bipartite covariance 产生实 G、S，P 也为实。因此全部有序词 W 都为实，(3) 同时等于 \(|W|^2\)。这并不保证 W 非负。

## 4. n=3 的 a、d、e 与局部 endpoint spectra

取
\[
T=\begin{pmatrix}0&1&0\\0&0&1\\1&0&0\end{pmatrix},\qquad
R=\operatorname{diag}(1,-1,-1).
\]
保持 \(s_3=0\) 的标签与四段符号为：

| 词 | r | s | \(g_{A_1}\) | \(g_B\) | \(g_{A_2}\) | \(g_C\) |
|---|---|---|---|---|---|---|
| \(a=\operatorname{Tr}G^3\) | 000 | 000 | T | I | T | I |
| \(d=\operatorname{Tr}PGPS^2\) | 011 | 100 | \(D_{100}TD_{100}\) | R | T | I |
| \(e=\operatorname{Tr}GSP SP\) | 011 | 110 | \(D_{110}TD_{110}\) | R | T | I |

对 e，\(\operatorname{Tr}(PGP)(PSP)S=\operatorname{Tr}GSP SP\) 由 cyclicity 精确成立；不用 reverse-word 或数值实性代替这个定位。

具体地，d、e 的 \(A_1\) 矩阵分别是
\[
\begin{pmatrix}0&-1&0\\0&0&1\\-1&0&0\end{pmatrix},\qquad
\begin{pmatrix}0&1&0\\0&0&-1\\-1&0&0\end{pmatrix}.
\]

以沿圆周正向的 jump \(J=g_-^{-1}g_+\) 为约定，四个 jumps 为
\[
J_1=D_sTD_s,\quad
J_2=(D_sTD_s)^{-1}R_r,\quad
J_3=R_r^{-1}T,\quad J_4=T^{-1}.
\tag{10}
\]
它们都是 signed n-cycles，总 edge-sign product 均为 \((-1)^{n-1}\)。因此对任意允许的 r,s，
\[
\boxed{\det(\lambda I-J_k)=\lambda^n-(-1)^{n-1},\quad k=1,2,3,4.}
\tag{11}
\]
可以将 eigenphases 写为
\[
\theta_\ell=\frac{2\pi}{n}\left(\ell-\frac{n-1}{2}\right),
\qquad \ell=0,\ldots,n-1,
\]
全部严格位于 \((-\pi,\pi)\)。对 n=3，各 endpoint 的 phases 为 \((-2\pi/3,0,2\pi/3)\)，相应 \(\theta/(2\pi)=(-1/3,0,1/3)\)。

这只是局部谱相同，不意味着全局 determinants 相同。d/e 中 T 与 R 不对易；它们不存在共同实 invariant line，因此不能像 n=2 那样整体同时化为 scalar symbols。这里不提出更强的不存在性定理。

## 5. 临界 Ising 到同一个有限 Hardy projection 的 exact gauge

本节不取连续极限。先从 species-grouped 顺序换成交错顺序 \(p=2i,2i+1\)，\(p=0,\ldots,2N-1\)。记换序后的 covariance 为 \(\Gamma_{\rm int}\)，有
\[
(\Gamma_{\rm int})_{pq}=
\begin{cases}
\{N\sin[\pi(q-p)/(2N)]\}^{-1},&q-p\text{ 奇},\\
0,&q-p\text{ 偶}.
\end{cases}
\]
定义
\[
H_{pp}=e^{-i\pi p/(2N)},\qquad
v_m(p)=\frac{e^{2\pi i mp/(2N)}}{\sqrt{2N}},
\quad m=0,\ldots,N-1,
\qquad P_N=\sum_{m=0}^{N-1}|v_m\rangle\langle v_m|.
\]
精确 finite identity 为
\[
\boxed{H\frac{I-i\Gamma_{\rm int}}2H^\dagger=P_N.}
\tag{12}
\]
直接验证：对 \(d=q-p\ne0\)，几何级数给
\[
(P_N)_{pq}=e^{-i\pi(N-1)d/(2N)}
\frac{\sin(\pi d/2)}{2N\sin[\pi d/(2N)]}.
\]
偶 d 时为零；奇 d 时使用 \(e^{-i\pi d/2}\sin(\pi d/2)=-i\)，正好等于 (12) 的矩阵元；对角线均为 1/2。

它也与已有的 centered NS XX convention 一致：若 \(K_N\) 是其 occupied projector、\(L_{pp}=e^{i\pi(N-1)p/(2N)}\)、\(Z_{pp}=(-1)^p\)、\(U_{pp}=e^{i\pi p/2}\)，则
\[
\frac{I-i\Gamma_{\rm int}}2=U^\dagger(I-K_N)U,
\quad I-K_N=ZK_NZ,\quad P_N=LK_NL^\dagger,
\quad LZU=H.
\]
这里不把 centered sea 的 filled/empty projection 混为一谈。

将 (2) 的同一个 physical-site symbol 赋给两个相邻 auxiliary sites：
\[
D_g=\bigoplus_{p=0}^{2N-1}g_{\lfloor p/2\rfloor},
\qquad\Pi_N=P_N\otimes I_n.
\]
\(H\otimes I_n\) 与 \(D_g\) 对易；interleaving 也仅把两份 U 改写成这同一个 \(D_g\)。故没有符号变化、scalar 或极限误差：
\[
\boxed{
W_{r,s}^2=
\det_{\operatorname{ran}\Pi_N}(\Pi_ND_g\Pi_N)
=\det_{\mathbb C^{2Nn}}(I-\Pi_N+\Pi_ND_g),
\qquad\dim\operatorname{ran}\Pi_N=Nn.
}
\tag{13}
\]
这是可直接用于后续有限 matrix-symbol 分析的 exact equality，而不只是 Q 与 Hardy kernel 的某种强极限。

## 6. n=2 校准与符号丢失的反例

n=2 的 T 有 eigenvalues \(\pm i\)。偶 r 仅允许 \(R_r=\pm I_2\)，且 \(D_sTD_s=\pm T\)，所以所有四段同时可对角化。(13) 分解为一个 scalar counting determinant 与其复共轭的乘积。取 \(-i\) eigenchannel，scalar symbol 在 A1、B、A2、C 分别为
\[
-i(-1)^{s_1},\quad(-1)^{r_1},\quad-i,\quad1.
\]
它正是已有 single auxiliary XX formula 的符号；其 centered scalar prefactor 必须保留，才能恢复 W 而不只恢复 \(|W|\)。脚本直接核对了全部四个 n=2 centered determinant 与 W 的相等性；没有将该特殊降维错误地推广到 n=3。

一个四-site 实、纯、even Gaussian 反例取
\[
C=\begin{pmatrix}
-12639/27625&4/13&384/1105&20952/27625\\
-19148/27625&3/13&288/1105&-17436/27625\\
-72/221&-12/13&40/221&21/221\\
-192/425&0&-15/17&56/425
\end{pmatrix},\qquad CC^T=I,\quad\det C=1.
\]
四弧各一个 site，精确得到
\[
a=\frac{27105941}{179562500},\qquad
d=\frac{20062026017}{674616312500},\qquad
e=-\frac{15754670623}{674616312500}.
\]
(3)/(4) 对各自词均等于其平方。因此把这个 determinant 叫做 e、或者主平方根叫做 e，都会在该有限例子中失败。该例不是临界 Ising 本身；它反驳的是覆盖一般题设 bipartite pure Gaussian 的无符号恢复断言。

实际临界 Ising N=4、四弧各一 site 的 exact values 为
\[
a=\frac{25}{64},\quad
d=\frac{9+6\sqrt2}{64},\quad
e=\frac{15+12\sqrt2}{128}.
\]
这些非零格点值没有使用任何 continuum theta 猜测。

## 7. 可重跑验证、范围及未做事项

唯一新增的验证程序为 [ising_matrix_replica_finite_checks.sage](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/verification/ising_matrix_replica_finite_checks.sage>)。程序通过 CAR monomial/Wick-Pfaffian coefficients 构造 G、S，再作直接小矩阵 word trace；另一侧独立计算 occupied determinant，不先把 W 定义成 determinant。

最终运行在 SageMath 10.9、exact cyclotomic/rational arithmetic 下全部通过：

- rational generic C：n=2,3,4 的全部 4+16+64 个词；包含上述负 e。
- 另一 rational C 满足 \(\operatorname{Tr}S=0\) 但 \(S\ne0\)：同样全部 84 个词，无 Schur inverse 或 string normalization。
- actual critical Ising N=4：n=2,3 的全部 4+16 个词。
- actual Ising a,d,e：精确检查 (12)、full-chain determinant (13)、occupied 3N-dimensional determinant，以及 gauge 与 symbol 对易。
- n=2 的四个 centered single-XX determinants：精确等于 W 本身。
- n=2,…,6 全部允许 r,s 的四个 jump characteristic polynomials，以及 replica wrap parity；共 4+16+64+256+1024 个 label sectors。
- unsigned replica cycle：n=2 已构成 exact failure。

最终完整 stdout 见 [Sage exact-run result](</Users/koishi/.codex/mcp-results/sage_run-kRR9tN/result.txt>)。开发时先后修正了一处 matrix-list diagnostic 和 Sage cyclotomic sparse tensor-product 的类型问题；以上为修正后的完整重跑，不把失败调用计为通过。

**Verified:** (3)、(4)、(12)、(13) 的解析推导；关键 signs/prefactor/dimensions；上述有限 exact checks。

**Assumptions:** 题设实 bipartite pure Gaussian covariance；CAR G 与未归一化 S；偶 \(\sum r_j\)；每个 physical site 两个 auxiliary sites 使用同一个 replica symbol。临界 gauge (12) 还使用指定 finite Ising C、NS convention。

**Not verified / not claimed:** 一般非 bipartite Gaussian 的同一 \(Q=(I-i\Gamma)/2\) 表示；任意其他 unsquared counting representation 的不存在性；determinant 所丢失符号的通用恢复规则；任何连续极限、FH/RH 渐近、Hardy near-zero-mode 估计或 theta identification。本次作为 fresh delegated finite-algebra 推导进行；受 delegation depth 限制，没有再启动第三方子代理复核。原文、已有报告及其他验证文件均未修改。
