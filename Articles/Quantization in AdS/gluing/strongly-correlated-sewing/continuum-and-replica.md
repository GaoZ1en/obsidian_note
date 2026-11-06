# 临界 Ising、三态 Potts、连续 sewing 与 replica entropy

## 结论

**已能严格证明的是：正 collar 的适当谱 sewing；临界 Ising 在固定圆周、正温度下的重整化热谱极限；有限 cutoff 的 replica 恒等式与 Schmidt-rank 障碍。** 三态 Potts 的完整 lattice-to-continuum spatial-replica sewing，本研究尚未证明。小链拟合、形式 BV–BFV descent 和单区间的 universal logarithm 都不能补上这个缺口。

本文承接 [有限系统构造](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/quantum-sewing.md>)，不把 continuum state 定义成待比较的 lattice limit。先独立指定 continuum Hilbert/CFT 对象，再比较哪些矩阵、谱、相关函数或熵真的收敛。

## 1. Positive collar 的严格谱定理

设 full nonchiral unitary CFT 在圆周 \(L>0\) 上，速度 \(v>0\)，\(c_L=c_R=c\)。这里 Ising 的 \(c=1/2\)、Potts 的 \(c=4/5\) 是**每个 chiral copy 的 central charge**，不再额外乘二。规定

\[
H=\frac{2\pi v}{L}\left(L_0+\bar L_0-\frac c{12}\right),\quad
E_0=-\frac{\pi vc}{6L},\quad K=H-E_0\ge0.
\tag{1.1}
\]

**定理 6（谱 contraction）。** 假设 \(K\) self-adjoint 且 \(Z_K(t)=\operatorname{Tr}e^{-tK}<\infty\) 对所有 \(t>0\)。若 \(A_i\) bounded、\(t_i>0\)，则

\[
\operatorname{Tr}(A_1e^{-t_1K}\cdots A_me^{-t_mK})
\]

的完整能级展开绝对收敛，所有有限重排具有结合性。证明：在正交能量基中，每一矩阵元 \(|(A_i)_{jk}|\le\|A_i\|\)，故绝对和不超过

\[
\prod_i\|A_i\|\prod_i Z_K(t_i)<\infty.
\tag{1.2}
\]

无插入时另有 spectral-calculus identity \(e^{-tH}e^{-uH}=e^{-(t+u)H}\)。□

这不是任意 pants decomposition 的 crossing theorem：后者还需要独立定义的 surface amplitudes、OPE、sector pairing 和它们的 compatibility。点场通常 unbounded，也不自动满足本定理。一个可检查的扩大条件是有限能量基上的 polynomial energy bound，\(|A_{ij}|\le C(1+E_i+E_j)^p\)；用较短 collar 的指数可吸收 polynomial，但这个 bound 必须另证。

仅 compact resolvent 不够：在 \(\ell^2\) 上令 \(K|j\rangle=\log(j+1)|j\rangle\)，则 \(Z_K(t)=\sum(j+1)^{-t}\) 在 \(t\le1\) 发散。

### 1.1 为什么 Ising／Potts 的指定 CFT 满足 heat-trace 条件

单位ary minimal-model irreducible module 是 Verma module 的 quotient，其第 \(n\) 层维数不超过 partition number。因此 \(0<q=e^{-2\pi vt/L}<1\) 时

\[
0\le\chi_h(q)\le q^{h-c/24}\prod_{n\ge1}(1-q^n)^{-1}<\infty.
\tag{1.3}
\]

有限个左右 module pairs 及有限 multiplicities 给 heat-trace 收敛。有限 sector 数不等于 finite-dimensional Hilbert space：每个 sector 包含无限 descendants。

### 1.2 Sharp limit 的严格反例与保留部分

若 \(\mathcal H\) 无限维、\(K\ge0\) unbounded，则

\[
e^{-tK}\xrightarrow[t\downarrow0]{\rm strong}I,
\qquad\|e^{-tK}-I\|=1,
\qquad\operatorname{Tr}e^{-tK}\uparrow\infty.
\tag{1.4}
\]

固定 normalizable \(\psi,\phi\) 的 matrix element 仍趋向 \(\langle\psi,\phi\rangle\)。但 formal coevaluation

\[
|\Omega_t\rangle=\sum_j e^{-tE_j}|j\rangle\otimes|\bar j\rangle,
\quad\|\Omega_t\|^2=Z_K(2t)
\]

在 \(t=0\) 不是 Hilbert tensor-product vector。故“去掉 collar 后仍存在有限 identity trace／normalizable entangled unit”不成立。若另有 trace-class test \(B\)，则 \(Be^{-tK}\to B\) in trace norm；保留一条 positive collar 也能控制其他 collar 的零极限。不能将反例夸张成“所有 zero-collar sewing 都失败”。

Temporal collar 的这个论证不建立 sharp **spatial** factorization；在常用 continuum QFT/net 表述中 local algebras 通常不是 type I。这里不靠这个背景事实作证明，(1.4) 本身已经是所声称 Hilbert coevaluation 的决定性反例。

## 2. Ising：一个真正可证的 lattice-to-continuum 热谱 sewing

### 2.1 定义与 parity sectors

偶数 \(N\ge4\)，PBC critical Ising

\[
H_N=-\sum_{j=0}^{N-1}Z_jZ_{j+1}-\sum_{j=0}^{N-1}X_j,
\quad a=L/N,\qquad
\widetilde H_N=\frac{v}{2a}\left(H_N+\frac{4N}{\pi}I\right).
\tag{2.1}
\]

只减去 bulk vacuum energy，不把 Casimir energy 减掉。\(v/(2a)\) 将 lattice velocity \(2\) 转成指定物理 \(v\)。这是固定 \(L,v,\beta>0\) 的 \(a\to0\)，不是固定 lattice temperature 的 thermodynamic limit。

旋转 Pauli axes 后取标准 Jordan–Wigner fermions。总 parity \(P=\prod_jX_j\) 给 \(c_{j+N}=-P c_j\)。每个 paired momentum 的 BdG 矩阵可写成

\[
2[(1-\cos k)\sigma_z+\sin k\,\sigma_y],
\]

其 positive energy 为 \(4|\sin(k/2)|\)。NS sector 有 half-integer momenta，并投影到 even total fermion occupation；R sector 有 integer momenta，且 physical parity constraint 必须保留。

写 physical one-particle energies 与 sector vacuum energies 为

\[
\varepsilon_N(r)=\frac{2vN}{L}\sin\frac{\pi r}{N},\qquad 0\le r\le N/2,
\]
\[
E_{\rm NS}^{(N)}=\frac{vN}{2L}\left[-2\csc\frac{\pi}{2N}+\frac{4N}{\pi}\right],\quad
E_{\rm R}^{(N)}=\frac{vN}{2L}\left[-2\cot\frac{\pi}{2N}+\frac{4N}{\pi}\right].
\tag{2.2}
\]

它们来自 \(-\frac12\sum_k\epsilon_k\)，再作 (2.1) 的 bulk subtraction。NS 中 \(r=1/2,3/2,\ldots,N/2-1/2\) 各有左右两模。R 中 \(r=1,\ldots,N/2-1\) 各有两模，\(r=N/2\) 是单模，\(r=0\) 是零能单模。

有限 spin partition function 精确为

\[
Z_N^{\rm NS}=\frac{e^{-\beta E_{\rm NS}^{(N)}}}{2}
\left\{\prod_{r=1/2}^{N/2-1/2}(1+e^{-\beta\varepsilon_N(r)})^2
+\prod_{r=1/2}^{N/2-1/2}(1-e^{-\beta\varepsilon_N(r)})^2\right\},
\tag{2.3}
\]

\[
Z_N^{\rm R}=e^{-\beta E_{\rm R}^{(N)}}
(1+e^{-\beta\varepsilon_N(N/2)})
\prod_{r=1}^{N/2-1}(1+e^{-\beta\varepsilon_N(r)})^2,
\qquad Z_N=Z_N^{\rm NS}+Z_N^{\rm R}.
\tag{2.4}
\]

(2.3) 的 products 以步长一增加。R zero mode 使 parity-signed trace 为零；ordinary trace 中的 factor \(2\) 被 parity projection 的 \(1/2\) 抵消，留下 (2.4)，**不能再附加一个 Ramond factor two**。

### 2.2 定理与 domination，而非仅逐能级比较

**定理 7（critical Ising 正温度热谱极限）。** 对固定 \(L,v,\beta>0\)，

\[
\lim_{N\to\infty,\;N\,\mathrm{even}}\operatorname{Tr}e^{-\beta\widetilde H_N}
=Z_{\rm Ising}(q)
=|\chi_0(q)|^2+|\chi_{1/2}(q)|^2+|\chi_{1/16}(q)|^2,
\quad q=e^{-2\pi v\beta/L}.
\tag{2.5}
\]

**证明。** 由三角函数 Taylor 展开，

\[
E_{\rm NS}^{(N)}\to-\frac{\pi v}{12L},\qquad
E_{\rm R}^{(N)}-E_{\rm NS}^{(N)}
=\frac{vN}{L}\tan\frac{\pi}{4N}\to\frac{\pi v}{4L},
\]

\(\varepsilon_N(r)\to2\pi vr/L\) 对每个固定 \(r\) 成立。单靠这一步不能交换 trace 和 limit。决定性 uniform bound 来自

\[
\sin x\ge\frac{2x}{\pi}\quad(0\le x\le\pi/2)
\quad\Longrightarrow\quad
\varepsilon_N(r)\ge\frac{4vr}{L}.
\tag{2.6}
\]

因此所有 excitation products 的尾部由
\(\prod_{r>R}(1+e^{-4\beta vr/L})^2\) 控制，并在 \(R\to\infty\) 时 uniformly 趋向一；signed product 亦由同一绝对和控制。Ground energies 在 \(N\) 上有界，Nyquist 单模因子趋向一，故可逐有限模取极限再控制尾部。得到

\[
Z_{\infty}(q)=\frac{q^{-1/24}}2
\left[\prod_{j\ge0}(1+q^{j+1/2})^2+
\prod_{j\ge0}(1-q^{j+1/2})^2\right]
+q^{1/12}\prod_{j\ge1}(1+q^j)^2.
\tag{2.7}
\]

利用 Majorana character products，第一项是 \(\chi_0^2+\chi_{1/2}^2\)，第二项是 \(\chi_{1/16}^2\)，证明 (2.5)。□

这是 spectrum/thermal trace 的定理，不是从 bare gluing 假设推出来的。其 Casimir 项独立给 \(c=1/2\)，R–NS gap 对应 total scaling dimension \(1/8\)，与 \(h=\bar h=1/16\) 相符。

**推论 7a（全系统 thermal replicas）。** 对 \(\rho_N=e^{-\beta\widetilde H_N}/Z_N(\beta)\)，任意固定 \(n>1\)，

\[
\operatorname{Tr}\rho_N^n=\frac{Z_N(n\beta)}{Z_N(\beta)^n}
\longrightarrow\frac{Z_{\rm Ising}(n\beta)}{Z_{\rm Ising}(\beta)^n}.
\tag{2.8}
\]

全系统 thermal \(S_1\) 也收敛：在 \(\beta\) 的紧正区间内使用 (2.6) 及 \(x e^{-\beta x}\le[2/(e\beta)]e^{-\beta x/2}\) 控制一次 energy insertion，可交换一次 \(\beta\) derivative，进而用 \(S=(1-\beta\partial_\beta)\log Z\)。这不是空间子区间 entropy 的证明；Jordan–Wigner transformation 与 spin 子区间／多区间 tensor factorization 之间还有额外资料。

[复算程序](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/verification/ising_continuum_checks.wl>) 把 (2.3)–(2.4) 与 \(N=4,6,8\) 完整 spin Hamiltonian 的独立 dense spectrum 比较，50-digit precision 下残差为数值零。\(v=L=1,\beta=0.35\) 时 [结果](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/verification/ising_continuum_results.json>) 为

| \(N\) | \(Z_N-Z_{\rm Ising}\) |
|---:|---:|
| 8 | 0.06937083255 |
| 16 | 0.01409888993 |
| 32 | 0.00325452977 |
| 64 | 0.00080082712 |
| 128 | 0.00019944683 |

\(Z_{\rm Ising}=2.3367918450567609439\)。这些数值只是检查 parity、normalization 与 limiting formula；一般收敛由 (2.6) 证明。另有未读取主文的 [Ising continuum 独立复核](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/reviews/ising-continuum-independent.md>)，分别核对 NS/R spin parity projections，并给出显式 occupation-tail bound；其数值检查采用不同 \(\beta,v,L\)。

## 3. Potts：不能把相同 central charge 当作同一 sewing

标准 ferromagnetic 三态 Potts continuum 是 \(c=4/5\) 的 non-diagonal Virasoro invariant：

\[
Z_{\rm Potts}=|\chi_0+\chi_3|^2
+|\chi_{2/5}+\chi_{7/5}|^2
+2|\chi_{1/15}|^2+2|\chi_{2/3}|^2.
\tag{3.1}
\]

W\(_3\) 表述中有六个 sectors；两个 charged spin sectors、两个 parafermion sectors 虽分别具有相同 Virasoro characters，却不能作为同一个 sector 删除。这里采用

\[
h_{r,s}=\frac{(6r-5s)^2-1}{120},\quad
1\le r\le4,\quad1\le s\le5,\quad(r,s)\sim(5-r,6-s).
\]

与文献中交换 \(r,s\) 的约定比较时，按 \(h\) 运输而非照抄下标。

**严格区分同 \(c\) 的两个 theories。** \(M(5,6)\) 另有 diagonal A-series partition function \(Z_A=\sum_{10\,\mathrm{irreps}}|\chi_{r,s}|^2\)。它包含 Potts 所没有的 \(h=\bar h=1/40\) primary，故其低温 expansion 与 (3.1) 不同。因 spectrum 不同，两者的 cylinder/torus sewing 不可能只由 \(c\) 决定；单区间 vacuum logarithm 却可以相同。

[Character 检查](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/verification/cft_character_checks.wl>) 在十维 minimal-model character representation 中精确验证 Potts multiplicity matrix \(M_D\) 与 \(S,T\) 对易，且 \(M_D\ne I\)。在 \(\tau=i\) 的 [数值结果](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/verification/cft_character_results.json>)：

\[
Z_A(i)=3.6247437691517041127,\qquad
Z_{\rm Potts}(i)=2.8515227924662601250.
\]

两个 character 截断均给相同所列位数；这不是严格误差区间。上述**谱中存在／缺失 \(1/40\) primary**已独立给出不相等的解析理由。Modular commutation 也不是完整 full-CFT existence/crossing 的证明；这里只检查已指定两种模型的必要结构。

(3.1) 的来源已核对 [Castro et al., arXiv:1111.1987v1](<https://arxiv.org/abs/1111.1987v1>)，PDF 第 33 页、正文第 32 页、(A.22)–(A.25)；本地 [PDF](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/sources/1111.1987v1.pdf#page=33>) 已实际渲染核对。只使用其 CFT partition-function 资料，不使用该文 gravity-duality conjecture 作为定理。

### 3.1 相同 bulk CFT 仍不指定 interface

最简单的有限模型反例：区域内部 couplings 不变，把 crossing bond 取零或取原来的 \(J\)，global spectrum/state 不同。因此必须说明所谓 sewing 是恢复 transparent bulk bond，还是引入 physical defect。

在 Ising CFT 的 topological symmetry-defect 表述中，\(\mathbb Z_2\) defect 对 \(\sigma\) sector 为负、对 identity 与 energy sectors 为正，twisted trace 为 \(|\chi_0|^2+|\chi_{1/2}|^2-|\chi_{1/16}|^2\)，不同于 identity trace。这是附带已知 defect action 的例子，不声称从 \(c\) 或 bare Virasoro algebra 推出了所有 defects。

## 4. Spatial replicas：已证恒等式与条件性 CFT 预言

### 4.1 单区间整数 replicas

在无限直线 vacuum、单区间 \([u,v]\)、无额外 defect 穿过端点时，\(n\ge2\) 份复制的 uniformizing coordinate 是

\[
z=\left(\frac{w-u}{w-v}\right)^{1/n},\quad
\{z,w\}=\frac{1-1/n^2}{2}\frac{(u-v)^2}{(w-u)^2(w-v)^2}.
\]

由 \(T_{\rm tot}=\sum_{a=1}^nT_a\)、Schwarzian Ward identity 得

\[
h_n=\bar h_n=\frac c{24}\left(n-\frac1n\right),\quad
\Delta_n=\frac c{12}\left(n-\frac1n\right).
\tag{4.1}
\]

因此对符合该 CFT 及相同 endpoint normalization 的 regulated state family，

\[
\operatorname{Tr}\rho_A^n
=c_n\left(\frac\ell a\right)^{-\frac c6(n-1/n)}[1+o(1)],
\quad
S_n=\frac c6\left(1+\frac1n\right)\log\frac\ell a+k_n+o(1).
\tag{4.2}
\]

这里 \(k_n=\log c_n/(1-n)\) 非 universal。Ward derivation 固定的是 continuum exponent；它**没有证明 lattice branch-point observable 的 renormalization 与收敛**。\(n\to1\) 的导数还需要额外控制，见 §6。

圆周 vacuum 把 \(\ell\) 换成 \((L/\pi)\sin(\pi\ell/L)\)。OBC 中接触一个 physical endpoint 的区间系数减半，为 \(c(1+1/n)/12\)，并有 boundary constant；OBC 内部区间不能直接使用该单端点式。

### 4.2 两区间是更强的判别器

两区间 replica observable 是 twist four-point function，Ward identities 留下 cross-ratio function，不能仅由 \(c\) 固定。Riemann–Hurwitz 给 \(n\)-sheeted cover 的 genus 为 \(n-1\)；\(n=2\) 已是 torus，因此 §3 中相同 \(c\)、不同 torus spectra 会给不同双区间 second-replica 数据（几何 Weyl 因子按同一处方比较）。

[Calabrese–Cardy 2004 v3](<https://arxiv.org/abs/hep-th/0405152v3>) 的作者说明明确承认早期多区间结论一般不正确，不能据其旧 universal formula 省去 spectrum/OPE。后续 [Calabrese–Cardy–Tonni 2010](<https://arxiv.org/abs/1011.5482>) 对 Ising 整数 replicas 给 theta-function 表达和 small-cross-ratio expansion；本研究只核实其摘要范围，没有重新认证全部高 genus formulas。

### 4.3 Critical vacuum 本来就不应精确 Markov

若在相同 regulator family 中 single-interval \(S_1\) 具有 CFT 渐近式且各误差趋零，对直线上连续的三段正长度 \(a_1,b,a_2\)，发散及常数相消，得到有限 limit

\[
I(A:C\mid B)\longrightarrow
\frac c3\log\frac{(a_1+b)(b+a_2)}{b(a_1+b+a_2)}>0.
\tag{4.3}
\]

因此即使 \(B\) 隔开 \(A,C\)，vacuum critical correlations 一般不是 exact short quantum Markov chain。这是 **CFT entropy asymptotic 的条件性推论**，不是从形式 continuum density matrix 直接取四个无限熵相减。

圆周且补区非空时将各长度替换为 sine，

\[
I\to\frac c3\log\frac{
\sin[\pi(a_1+b)/L]\sin[\pi(b+a_2)/L]}{
\sin(\pi b/L)\sin[\pi(a_1+b+a_2)/L]}.
\tag{4.4}
\]

## 5. 实际 finite-size 检验：支持与偏差同时报告

[独立稀疏程序](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/verification/spin_chain_checks.py>) 直接从 spin Hamiltonian 求基态，不以 sewing 或 CFT 生成数据。共七个 PBC 尺寸：Ising \(N=8,10,12,14\)，Potts \(N=6,8,10\)；34 组区间 \(S_1,S_2\)，最大维数 \(3^{10}=59049\)。完整 [结果](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/verification/spin_chain_results.json>)、[数值报告](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/reviews/lattice-numerics.md>) 保留了误差、拟合窗口、环境和代码 hash。

| 模型 | 最大 \(N\) 半链 \(S_1\) | 半链 \(S_2\) | 跨尺寸 \(c_{\rm eff}(S_1)\) | \(c_{\rm eff}(S_2)\) |
|---|---:|---:|---:|---:|
| Ising | 0.7278576538 | 0.5559533787 | 0.4972731011 | 0.5304583958 |
| Potts | 1.0720747527 | 0.7992250557 | 0.7927047358 | 0.8719800573 |

最大 eigenvector residual 为 \(4.94\times10^{-12}\)。稀疏／稠密 Hamiltonian、SVD／直接 partial trace、Ising exact finite \(E_0=-2\csc(\pi/2N)\) 均有独立交叉检查。

\(S_1\) 有效系数接近 \(1/2,4/5\)，但 \(S_2\) 仍有明显有限尺寸偏差。小拟合残差不是 continuum error bar；**本表不证明 CFT identification 或 replica limit**。

补区 \(D\ne\varnothing\) 的相邻 \(A,B,C\) 检验：

| 模型 | \((|A|,|B|,|C|,|D|)\) | lattice \(I(A:C\mid B)\) | (4.4) 的 CFT 值 |
|---|---|---:|---:|
| Ising \(N=14\) | (3,3,3,5) | 0.0878463163 | 0.0876539919 |
| Potts \(N=10\) | (2,2,2,4) | 0.1292591491 | 0.1283231533 |

其非零性是有限浮点例证，不替代 [三自旋严格反例](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/quantum-sewing.md>)。若取整个圆周分成 \(A,B,C\)，\(A,C\) 还经 PBC bond 直接相邻，不能误读成仅由 \(B\) 隔离；本表刻意保留 \(D\)。

## 6. 两个严格的 entropy／cutoff 障碍

### 6.1 Trace convergence 和所有整数 replicas 都不控制 \(n\to1\)

在共同空间 \(\ell^2\) 上，令 \(d\to\infty\)，

\[
\rho_d=(1-\epsilon_d)|0\rangle\langle0|
+\frac{\epsilon_d}{d-1}\sum_{j=1}^{d-1}|j\rangle\langle j|,
\qquad\epsilon_d=(\log d)^{-1/2}.
\tag{6.1}
\]

则 \(\|\rho_d-|0\rangle\langle0|\|_1=2\epsilon_d\to0\)。对每个固定 real \(n>1\)，

\[
\operatorname{Tr}\rho_d^n=(1-\epsilon_d)^n+
\epsilon_d^n(d-1)^{1-n}\to1,
\quad S_n(\rho_d)\to0,
\]

但

\[
S_1(\rho_d)=h_2(\epsilon_d)+\epsilon_d\log(d-1)
\sim\sqrt{\log d}\to\infty.
\tag{6.2}
\]

所以即便所有固定整数 replicas 都有正确极限，也不能把 \(a\to0\) 与 \(-\partial_n|_{n=1}\) 交换。缺少的是 \(\lambda|\log\lambda|\) 的 uniform integrability 或等价能量／谱尾控制。

不要过度解读为“同一个真实 density matrix 的所有 moments 也不能决定 entropy”。对单一 trace-class state，\(\mu=\sum_i\lambda_i\delta_{\lambda_i}\) 是 \([0,1]\) 上概率测度，整数 replicas 给其全部 moments；Hausdorff moment uniqueness 决定 \(\mu\)，从而决定有限或无限的 entropy。失败在**sequence 的非均匀极限**，不是这个 moment problem 的非唯一性。任意给整数值续插一个 \(\sin\pi n\) 项，也未必仍是 density spectrum 的合法 continuation。

### 6.2 固定有限 Schmidt seam 无法高 fidelity 保持 critical \(S_2\)

**定理 8（Schmidt-rank lower bound）。** 若 normalized pure target \(\psi\) 的 reduced density eigenvalues 为 \(\lambda_i\)，normalized approximant \(\phi\) 的 Schmidt rank \(\le\chi\)，则任意 real \(n>1\) 有

\[
F:=|\langle\phi|\psi\rangle|^2
\le\sum_{i=1}^{\chi}\lambda_i
\le\chi^{(n-1)/n}\left(\operatorname{Tr}\rho_A^n\right)^{1/n}.
\]

第一步用 \(\phi\) 的 Schmidt-support projector、Cauchy–Schwarz 和 Ky Fan bound；第二步是 Hölder。故

\[
F\ge1-\varepsilon\quad\Longrightarrow\quad
\chi\ge(1-\varepsilon)^{n/(n-1)}e^{S_n(\rho_A)}.
\tag{6.3}
\]

若**同一个 cutoff bipartition** 满足 \(S_2\ge(c/4)\log(\ell/a)-C\)，则固定 fidelity 要求

\[
\chi=\Omega((\ell/a)^{c/4});\qquad
\text{Ising: }\chi=\Omega((\ell/a)^{1/8}),\quad
\text{Potts: }\chi=\Omega((\ell/a)^{1/5}).
\tag{6.4}
\]

fixed \(\chi\) 更给 \(F\le\sqrt\chi e^{-S_2/2}\to0\)。两个 endpoint bonds 各维数 \(D\) 时只有 rank \(\le D^2\)，因此必要增长是 \(D=\Omega((\ell/a)^{c/8})\)。不能将它误用于有限 RCFT sector labels，因为每个 sector 仍无限维；也不排除 weak/local-observable convergence。

**仅 \(S_1\to\infty\) 不够：**将 (6.1) 的 \(\epsilon_d\) 换成固定 \(0<\epsilon<1\)，\(S_1\to\infty\) 而 rank-one approximation 始终有 \(F=1-\epsilon\)，\(S_2\) 有限。故 (6.4) 必须使用 \(n>1\) 的 entropy 控制，不得仅凭 von Neumann entropy 发散宣称 fixed-bond no-go。

## 7. 严格边界与可继续的论证

### 7.1 Ising 的已知空间相关函数结果不能越级使用

[Chelkak–Hongler–Izyurov, arXiv:2103.10263v2](<https://arxiv.org/abs/2103.10263v2>)证明 critical planar Ising 的 spin/disorder/fermion/energy correlations 在指定 finitely connected domains 和 mixed fixed/free boundary conditions 下的 renormalized limits、conformal covariance 及 OPE。已核对该文摘要范围。它不是本文 spatial branch-point replica ratios 或 Hilbert trace-norm convergence 的现成证明；有限点 correlator convergence 不能替代 determinant/partition normalization 的 uniform 控制。

### 7.2 Potts 的连续极限仍有实质缺口

[The fuzzy Potts model in the plane](<https://link.springer.com/article/10.1007/s00440-024-01319-8>) 的正文 Introduction 与 Theorem 1.1–1.3 将一般 \(q\) 的结果条件化于 FK conformal-invariance conjecture，并明确 \(q=2\) 的已证特例。本文实际核对了这些段落。该文讨论 fuzzy Potts 的几何极限，不能据此宣称 \(q=3\) quantum-chain entropy theorem 已存在；也不能由它断言所有不同形式的 Potts scaling 结果均不存在。

本研究未获得可覆盖所需 \(q=3\) spin-chain replicated density matrices／endpoint renormalization 的严格 theorem。对 Potts 现有的是：有限链 exact sewing、有限数值证据、独立指定的 Potts CFT 内部 positive-collar theorem；其完整相互 identification 留作未证。

### 7.3 真正有内容的下一步

1. **Ising spatial replica bridge：**在固定 UV prescription 下，将 spin partial trace/permutation 与 fermionic parity/spin-structure sum 精确比较，再证明 branch-point determinant 的 uniform asymptotic。两区间必须保留 Jordan–Wigner strings；不能用 Gaussian fermion covariance entropy直接替代所有 spin 多区间熵。
2. **Potts positive-collar bridge：**从 lattice transfer family 建立低能谱、所有相关 multiplicities 与 thermal tail 的 uniform bounds，至少先证明 \(Z_N(\beta)\to Z_{\rm Potts}(\beta)\) 的 analogue of 定理 7。仅拟合 \(c\) 无法区分 §3 的两种 invariant。
3. **可检验的有限 collar 假说：**适当局部归一化后，保留 positive physical collar 与完整 sector data 的 replica amplitudes 存在共同 scaling limit，并与指定 CFT sewing 一致。它需要 bulk、interface 与 branch-point counterterms 和 uniform spectral bounds；目前是猜想，不是已经证明的总体框架。

独立 [continuum 复核](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/reviews/continuum-independent.md>) 给出 collar、Schwarzian 与 Schmidt-rank 论证和有限 CAS 检查。本文没有声称 arbitrary genus、任意 unbounded fields、general interacting QFT 或 quantum-gravity sewing 已由这些结果解决。
