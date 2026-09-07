# 1+1 Yang–Mills covariant multitime networks

工作包 E。**Temporal dressing 是 time-dependent cut covariance 的必要数据。** 对固定有限 spatial marks 与有限有序网络，本文给出实际 common-domain operators、到独立 global contour prescription 的比较及完整 matrix-element kernel。$U(1)$ 的全部这类 dynamical words 还能给出显式 algebraic kernel，并证明其 physical image 等于原 global dynamical envelope。第 6 节以实际 charged propagator 的有限矩阵分解，证明所有紧群的 physical network image 等于旧 global dynamical envelope，并给出 section 与完整、一般为无限的 kernel 生成族。

## 1. Action、charged intermediate states 与 covariance

使用 [YM classical note](<1+1 Yang-Mills classical observable algebra gluing.md>) 的 action
$$
S=\int dt\,dx\,[\langle E,\dot A_x-D_xA_t\rangle-e^2\langle E,E\rangle/2],
\qquad A^k=kAk^{-1}-dk\,k^{-1}.
$$
两侧外端 framing 固定，$A_t=0$；cut history 为 $q(t)$。Holonomies 的变换是
$$
U_1(t)\mapsto k(t)U_1(t),\qquad
U_2(t)\mapsto U_2(t)k(t)^{-1}.
$$
所以 $U_2(t_2)U_1(t_1)$ 留下 $k(t_2)^{-1}k(t_1)$，一般不是物理 history observable。若 $T$ 解
$$
\partial_{t_2}T(t_2,t_1)=-q(t_2)T(t_2,t_1),\qquad T(t_1,t_1)=1,
$$
则 $T\mapsto k(t_2)T k(t_1)^{-1}$，于是
$$
\boxed{U_2(t_2)T(t_2,t_1)U_1(t_1)}
$$
具有正确 covariance。$T$ 是实际 spacetime contour 在 cut 上的 temporal segment，不能删去后用 constant-group fixed points 代替证明。

更一般地，在每个 temporal vertex 把所有 incident auxiliary representations 以 invariant tensor 收缩；每条 temporal edge 插入相应 $D_\rho(T)$。对任意 smooth $k(t)$，每个 vertex 的 factors 局部抵消，证明整个 network 的 covariance。未闭合的外端 indices 属于声明的 physical frames；内部未收缩 charge 则不是该 physical algebra 的元素。

Quantum charged insertion 会把 states 暂时送出零 cut-moment sector。Temporal Wilson edge 正好在这段时间携带相应辅助 charge；其 Gauss condition 是 quantum cut moment 加辅助 representation generator 的 singlet condition。它是 Wilson-source prescription，不是凭空添加一个 dynamical point oscillator。不能在每个 charged factor 后强行投影回 singlets，否则网络被错误消去。

## 2. 实际 operator construction

取紧连通 $G$（SU(2) 沿用原 pairing），固定有限个 spatial marks，先写两段情形。独立区域 Hilbert spaces、common domain 与 Hamiltonian 是
$$
\mathcal H_{12}=L^2(G^2),\quad\mathcal D_{12}=\mathscr R(G^2),\quad
H_{12}=-\frac{e^2\hbar^2}{2}(\ell_1\Delta_1+\ell_2\Delta_2).
$$
每个 $\mathscr R$ vector 只有有限个 irreducibles。Finite representation multiplication 只产生有限 tensor-product summands，electric derivatives 保持这些 finite blocks，Casimir evolution 只乘 phases。因此全部 finite ordered charged words、它们的 adjoints 和 finite invariant contractions 均保持 $\mathcal D_{12}$。每个 word 是 dense common domain 上的实际 operator；因 formal adjoint 也在同一 domain，有 closability，但不宣称 arbitrary words essentially self-adjoint。

取与旧 dynamical note 相同的全部 $t\in\mathbb R$，每个 word 只含有限个时刻。记 $\mathfrak E_{12}$ 为所有 regional core operators 的实际 finite-time Heisenberg conjugates 所生成的 $*$-algebra，再取
$$
\mathfrak N_{12}=\mathfrak E_{12}^{G_\Gamma}.
$$
这是 temporal gauge $q=0$ 的 reference-time presentation。它不是省略 dressing 的物理定义：对任意 $q$，沿 temporal tree 把各事件的 auxiliary indices 运输到同一 reference time，使用上一节的 invariant tensors，得到 covariant completion。

每个 charged word 属于一个有限维 cut-group representation：Casimir evolution 与 cut action 对易，finite multiplication/derivative labels 都 locally finite。故任意 invariant finite sum 可由有限个 representation-theoretic contractions 表示；这里若使用 compact Haar averaging，也只是在这个有限维 label space 上取 invariant tensor，不是对 history gauge group 作 Haar integration。

设 $\mathcal K\psi(U_1,U_2)=\psi(U_2U_1)$。对完整 $N\in\mathfrak N_{12}$，$N$ 与 compact cut projector 对易，故
$$
\mathcal Q(N)=\mathcal K^*N\mathcal K
$$
在 $\mathcal D_M=\mathscr R(G)$ 上是 $*$-homomorphism。这个结论只用于完整 invariant networks。对两个 raw charged factors，$\mathcal K^*AB\mathcal K$ 一般不等于 $(\mathcal K^*A\mathcal K)(\mathcal K^*B\mathcal K)$。

## 3. 独立 global contour prescription 与完整 kernel criterion

先在未切分 continuum interval 中指定一张有限 rectilinear spacetime graph：horizontal edges 是给定 marked subinterval 上的 Wilson matrices，vertical edges 是指定 frames 间的 temporal Wilson transports，vertices 给 invariant tensors，electric insertions 与 operator order 明确固定。它定义外部 Wilson probes，不是增加可自由变化的 matter action。

独立 canonical quantization prescription 如下：由 global continuum Gauss law，在两相邻 marks 之间取 Peter–Weyl labels；穿过 Wilson vertex 时以 finite tensor-product Clebsch–Gordan maps 改变这些 labels；在两次事件之间按原 action 长度的 Casimir energy 传播；所有内部 auxiliary indices 按图的 tensors 收缩。输入、输出都是 unmarked global Peter–Weyl states。这个 recipe 在下面的 regional restriction 之前定义 target operators。

记 resulting matrix amplitude 为
$$
\mathcal M_w(\rho',a',b';\rho,a,b)
=\sum_{\text{admissible internal labels/indices}}
\left(\prod_v C_v\right)
\left(\prod_v F_v\right)
\exp\left[\frac{i}{\hbar}\sum_jt_j(E_j^{\rm out}-E_j^{\rm in})\right].
$$
$C_v$ 是 normalized tensor-product coefficients（含 input/output 的 $d_\rho^{-1/2}$ contractions），$F_v$ 是实际 electric-generator matrices，$E_j= e^2\hbar^2\sum_i\ell_iC_2(\rho_{i,j})/2$。每个 fixed input 的求和有限，因为 finite tensor products 只给有限 labels。Define $\mathfrak A_{\rm contour}$ 为这些 independently specified operators 在 $\mathscr R(G)$ 上生成的代数，不以 $\operatorname{im}\mathcal Q$ 定义。

插入完整 Peter–Weyl resolutions 到第 2 节每个 finite word，得到逐项相同的 $C_v,F_v$ 和 Casimir phases。因此
$$
\langle\rho',a',b'|\mathcal Q(N_w)|\rho,a,b\rangle
=\mathcal M_w(\rho',a',b';\rho,a,b).
$$
每个 target graph 可切成这些 regional events；每个 invariant word 的 temporal completion 又给这样一张 graph。这证明
$$
\mathcal Q:\mathfrak N_{12}\twoheadrightarrow\mathfrak A_{\rm contour}.
$$
完整 kernel 的显式判据是
$$
\boxed{\sum_wc_wN_w\in\ker\mathcal Q
\iff\sum_wc_w\mathcal M_w(\rho',a',b';\rho,a,b)=0
\quad\text{对全部外部 Peter–Weyl labels/indices}.}
$$
有限输入的 amplitude 都是具体 finite sums；“对全部 labels”是必要量词，有限 spin check 不能认证一般 kernel。第 6 节另给无需先检验此全标签条件的逐词 reduction 和完整、一般为无限的 ideal 生成族；不声称有限 ideal generators 或可终止的 universal zero-test。

同一 fixed finite marked graph 的 bracketings 对应有限 tensor contractions 的重新括号化，canonical operator order 保持不变时 amplitudes 相同。Changing operator order 不是 associativity；它需实际 commutators。一般弯曲 contours、无限 refinement、独立 continuum Wilson renormalization 不是这个 finite rectilinear prescription 的结论。

## 4. U(1) 的完整 dynamical normal form

此节是新增的 Abelian benchmark；它不满足旧 note 的“单连通群”限制，故明确 quotient 全部 interval endpoint-based components，holonomy model 仍是 $U(1)$。写 $U_i=e^{ix_i}$，在 $|n_1,n_2\rangle$ 上
$$
N_i=-i\partial_{x_i},\qquad
H_i=\frac{e^2\ell_i\hbar^2}{2}N_i^2,\qquad n_i\in\mathbb Z.
$$
Cut singlets 是 $n_1=n_2=n$。设 $S_i=M_{U_i}$；取 $\alpha_t(A)=e^{itH/\hbar}Ae^{-itH/\hbar}$。有
$$
S_i(t)|n_i\rangle
=e^{i e^2\ell_i\hbar(n_i+1/2)t}|n_i+1\rangle.
$$
更一般 charge $r$ 的 phase 为 $e^{ie^2\ell_i\hbar(rn_i+r^2/2)t}$。有限 words 重排后，完整 invariant algebra 恰为
$$
\boxed{\mathfrak N_{12}^{U(1)}
=\left(\mathbb C[N_1,N_2]\otimes\mathbb C[\mathbb T^2_{\rm disc}]\right)\rtimes\mathbb Z,}
$$
其中 $\mathbb T=\mathbb R/(2\pi\mathbb Z)$、$Z(a,b)=e^{i(aN_1+bN_2)}$ 是 **有限求和** group-algebra basis，$\mathbb Z$ 由 $S=S_1S_2$ 生成。式子不是 topological completion。

**证明。** 每个 event 是一个 integer shift 乘 polynomial/exponential coefficient；cut invariance 强制总 shifts $r_1=r_2$。Conversely，$N_i,S$ 已在 source 内；$S_i^*S_i(t)$ 在消去一个 scalar phase 后给任意 $e^{iaN_i}$，故所有 $Z(a,b)$ 都可由 covariantly completed finite networks 生成。即使时间限制在有内点的 finite slab，小时间 phases 的有限乘积也生成任意 $a$。

该 presentation 忠实：不同 shifts 的 matrix entries 分离；不同 characters $e^{i(an_1+bn_2)}$ 上的 polynomial sequences 线性独立。后一结论可反复作用 shift-difference operator $(T-e^{ia})$，依次消去其他 characters 的 polynomial multiplicities，或分两变量作同一证明。必须把频率先模 $2\pi$；否则会人为引入零算符。

## 5. Abelian 完整 kernel 与 global image

独立 global rotor 的 actual dynamical envelope 为
$$
\mathfrak E_M^{U(1)}=
\left(\mathbb C[N]\otimes\mathbb C[\mathbb T_{\rm disc}]\right)\rtimes\mathbb Z,
$$
其中 shift 为 $M_U$，Hamiltonian 长度 $\ell=\ell_1+\ell_2$。证明与上一节相同：evolved global shifts 产生所有 phases，有限词只产生此 normal form。

Restriction 是
$$
N_1,N_2\mapsto N,\qquad Z(a,b)\mapsto Z(a+b),\qquad S\mapsto M_U.
$$
其完整 kernel 为
$$
\boxed{\ker\mathcal Q=
\left\langle N_1-N_2,\ Z(a,-a)-1\ (a\in\mathbb T)\right\rangle,
\qquad\operatorname{im}\mathcal Q=\mathfrak E_M^{U(1)}.}
$$
证明先对 polynomial algebra 作 diagonal quotient，再对 group algebra 作群同态 $\mathbb T^2\to\mathbb T$、$(a,b)\mapsto a+b$ 的 quotient；其 kernel 是由 kernel subgroup elements 减一生成的理想。最后 crossed-product shift 保持该理想，按不同 shifts 的 normal form 得完整结论。Section 可选 $N\mapsto N_2$、$Z(a)\mapsto Z(0,a)$、$M_U\mapsto S$，它与 shift commutations 相容。

**静态 moment ideal 不够。** 对 $a\ne0$，$Z(a,-a)-1$ 不属于只由 $N_1-N_2$ 生成的 ideal：在唯一 exponential-polynomial expansion 中，它的两个 coefficients 是 $1,-1$，不被 $N_1-N_2$ 整除。这是实际 dynamical enlargement 的新 kernel，不能把旧 finite-order PBW kernel 不加修改地搬过来。

对最简单的 dressed zigzag，temporal gauge 后直接得到
$$
\mathcal Q\bigl(S_2(t_2)S_1(t_1)\bigr)
=M_U(t_{\rm eff}),\qquad
t_{\rm eff}=\frac{\ell_1t_1+\ell_2t_2}{\ell_1+\ell_2}.
$$
每个 $|n\rangle$ 的 phase 相同，所以这是全 rotor domain 的算符恒等式，不是有限 charge test。若 $q\ne0$，中间必须插回 temporal $T$；covariance 才使同一个 physical comparison 成立。

因此 Abelian sector 的三个对象已有完整结论：正确 dressing 的 regional networks 经上述 kernel quotient，等于 independently defined global contour operators，也等于旧“evolved joint-invariant core”在 global rotor 上的 envelope。

## 6. 紧群的完整 finite-word reduction

以下取 $\ell_1,\ell_2,e^2,\hbar>0$，$\ell=\ell_1+\ell_2$；$\mathfrak E_M=\mathfrak A_M^{\mathrm{dyn}}$ 独立定义于旧 quantum note §8。本节证明
$$
\boxed{\mathcal Q(\mathfrak N_{12})
=\mathfrak A_{\mathrm{contour}}
=\mathfrak E_M.}
$$
这比较的是 physical images，不声称两个 regional source algebras 相等。关键是保留全部有限 intermediate cut representations，再把每个传播块化成 global finite words。

### 6.1 适配坐标与实际 charged Hamiltonian

作保持 Haar measure 的坐标变换
$$
a=U_2,\qquad U=U_2U_1.
$$
于是 $\mathcal K\psi=1_a\otimes\psi_U$。Representative coefficients 在乘法与逆映射下仍为 finite sums，坐标变换也把 invariant vector fields 变成 representative-coefficient vector fields。因此整个 static core 成为实际 tensor product $\mathscr D_{G_a}\otimes\mathscr D_{G_U}$，不是只在 singlets 上的等价。

写
$$
Y_\xi f(U)=\left.\frac{d}{ds}\right|_0 f(e^{s\xi}U),
\qquad C=-\sum_bY_b^2,\qquad c=\frac{e^2\hbar^2}{2},
\qquad H_M=c\ell C.
$$
这些 $Y_\xi$ 的 bracket 是 $[Y_\xi,Y_\eta]=-Y_{[\xi,\eta]}$。固定 $U_2$ 改变 $U_1$ 给 $\Delta_1=\Delta_U$；同时左乘 $U_2$ 会左乘 $a,U$，给
$$
\Delta_2=\sum_b(Y_b^a+Y_b^U)^2,\qquad
H_{12}=c\left[\ell C+\ell_2C_a-2\ell_2\sum_bY_b^aY_b^U\right].
$$
Cut 是 $a\mapsto ak^{-1}$，所以各 $a$-Peter–Weyl isotypic blocks 在传播下保持。

对一个 unitary irrep $\nu$，展开 $\sum_{r,s}\nu(a)_{rs}f_{rs}(U)$。固定 column $s$ 后，$Y_b^a$ 在 coefficient column 上作用为
$$
R_{\nu,b}=d\nu(T_b)^T,\qquad
M_\nu(U)=\nu(U)^T,\qquad
Y_bM_\nu=M_\nu R_{\nu,b}.
$$
Transpose 不可省略：$R_\nu$ 是 opposite Lie algebra 的表示。$M_\nu$ 是 unitary matrix multiplication，保持 $\mathbb C^{d_\nu}\otimes\mathscr R(G)$。直接 Leibniz expansion 给
$$
C_\nu:=-\sum_b(Y_b+R_{\nu,b})^2=M_\nu^{-1}CM_\nu,\qquad
\boxed{H_\nu=c(\ell_1C+\ell_2C_\nu).}
$$
$C_\nu=C+C_2(\nu)-2\sum_bR_{\nu,b}Y_b$ 保持每个 global Casimir eigenspace，故 $C,C_\nu$ strongly commute。两者是 common Peter–Weyl core 上的 positive symmetric operators，按有限维 representation blocks 的 Hermitian matrices 直和闭包，essential self-adjointness 与此 joint spectral assertion 均成立。

### 6.2 每个传播块都是有限矩阵的 global words

令 $W_M(t)=e^{-itH_M/\hbar}$，$\alpha_t(A)=W_M(t)^*AW_M(t)$。上节的 strong commutation 与 unitary conjugacy 给全 Hilbert-space identity
$$
\begin{aligned}
e^{-itH_\nu/\hbar}
&=e^{-i(\ell_1/\ell)tH_M/\hbar}
M_\nu^{-1}e^{-i(\ell_2/\ell)tH_M/\hbar}M_\nu\\
&=W_M(t)B_\nu(t),\\
B_\nu(t)&=\alpha_{(\ell_2/\ell)t}(M_\nu^{-1})M_\nu
\in\operatorname{Mat}_{d_\nu}(\mathfrak E_M).
\end{aligned}
$$
每个 matrix entry 只是有限个 representative multiplication operators 及其 Heisenberg transforms 的乘积。这里没有对 $C_2$ 取未声明的函数闭包，也没有以 formal exponential series 代替 actual propagator。

### 6.3 任意有限 word 的解析消去算法

给一个 raw regional word $w=\alpha_{12,t_m}(D_m)\cdots\alpha_{12,t_1}(D_1)$，把它写成
$$
W_{12}(-t_m)D_mW_{12}(t_m-t_{m-1})\cdots
D_1W_{12}(t_1).
$$
所有传播时间的和为零。从 $a$ 的 constant input 出发，每个 $D_j\in\mathscr D_{G_a}\otimes\mathscr D_{G_U}$ 只引入有限个 $a$-representation labels：derivatives 不改变其 Fourier support，finite representative multiplication 只给有限 tensor products；传播又保持各 $\nu$。因此整条 word 所需的 intermediate label 集合是有限的，并且**不依赖 global input spin**。

在这些有限 $a$-spaces 间，$D_j$ 是 entries 属于 $\mathscr D_{G_U}$ 的 finite matrix。逐块代入 §6.2，把所有 $W_M(s)$ 移到左端；使用
$$
A W_M(s)=W_M(s)\alpha_s(A),
$$
而 $\alpha_s$ 保持 $\mathfrak E_M$。总时间为零使左端 propagator 为 identity。最后取 $a$-constant output entry，得到明确的 finite word sum
$$
\mathcal R(w)\in\mathfrak E_M,\qquad
\mathcal K^*w\mathcal K=\mathcal R(w).
$$
这个算法只用 finite representation decomposition、matrix multiplications、规定的时间平移，适用于任意 word length 和任意 compact $G$；不是对 global spins 截断。每一步在 common Peter–Weyl domain 上成立，涉及的 propagator factorization 另已在 Hilbert space 上证明。Flux words 只断言该 common-domain equality，不由 bounded-generator 情形推断所有 words 有界。

线性延拓后，不同 raw word presentations 给同一个 $\mathcal R$，因为它们都给同一实际 compression。但它在 raw source 上一般不保持乘法；只对 $\mathfrak N_{12}$ 有 $\mathcal R=\mathcal Q$ 的 $*$-homomorphism。于是 $\mathcal Q(\mathfrak N_{12})\subseteq\mathfrak E_M$。反向 inclusion 来自旧 §8 的 evolved invariant lifts，且第 3 节已独立证明 $\mathcal Q(\mathfrak N_{12})=\mathfrak A_{\mathrm{contour}}$。这完成三个 physical algebras 的 equality。

### 6.4 实际 section 与完整 kernel 生成族

Section 可直接构造，不需选 Hilbert projector。适配坐标中的 static lift 是 $D(U)\mapsto1_a\otimes D(U)$；在原坐标中由 $U_2U_1$ 的 representative coefficients 和第一段 right electric derivatives 构成。由于
$$
H_1=\frac{\ell_1}{\ell}(1_a\otimes H_M),
$$
只对第一段做时间演化，定义
$$
s\bigl(\alpha_{M,t}(D)\bigr)
=\alpha_{H_1,(\ell/\ell_1)t}(1_a\otimes D)
=1_a\otimes\alpha_{M,t}(D).
$$
Partial evolution 的每个 factor 是第一段在相应时刻的 core generator、第二段在零时刻的 core generator，故属于原 $\mathfrak E_{12}$。它与 cut group 对易。上式是实际 tensor-factor embedding，故保持 target 的所有 actual relations，定义忠实的 $*$-homomorphism $s:\mathfrak E_M\hookrightarrow\mathfrak N_{12}$，且 $\mathcal Qs=1$。

令 $\operatorname{Av}_\Gamma w$ 为 raw finite word 的 finite-dimensional cut-label Reynolds average。整个 invariant source 是这些 elements 的线性张成。对每个这样的 word，由 §6.3 计算 $\mathcal R(\operatorname{Av}_\Gamma w)$，再用上述 partial evolution lift，得到源内可明确写出的 element
$$
g_w=\operatorname{Av}_\Gamma w
-s\!\left(\mathcal R(\operatorname{Av}_\Gamma w)\right).
$$
则完整 kernel 为
$$
\boxed{\ker\mathcal Q
=\operatorname{span}_{\mathbb C}\{g_w\}
=\langle g_w:\ w\text{ a finite regional time-core word}\rangle_{*\text{-ideal}}.}
$$
每个 $g_w$ 的 construction 只需上述有限算法，并不要求先判定某个未知 source element 是否 annihilate singlets。证明 $g_w\in\ker\mathcal Q$ 由 $\mathcal Qs=1$；反之写 $N=\sum_wc_w\operatorname{Av}_\Gamma w$，若 $\mathcal QN=0$，则 $\sum_wc_w\mathcal R(\operatorname{Av}_\Gamma w)=0$ 是实际 $\mathfrak E_M$ relation，忠实 section 保持它，所以 $N=\sum_wc_wg_w$。这也证明该 linear span 已是 two-sided $*$-ideal。

这是 constructive infinite generating family；第 3 节的全 matrix-element criterion 仍给与 word presentation 无关的判据。没有断言有限生成、最小生成族或可终止的 universal zero-test。尤其不能把它换回 static moment ideal：第 5 节的 $U(1)$ exponential relation 已反驳该替换。

### 6.5 Single zigzag 与有限多 cuts

对任意 auxiliary representation $R$，
$$
\mathcal Q\left(\sum_cD_R(U_2)_{ac}(t_2)D_R(U_1)_{cb}(t_1)\right)
=\alpha_{M,t_{\rm eff}}\left(M_{D_R(U)_{ab}}\right),
\quad t_{\rm eff}=\frac{\ell_1t_1+\ell_2t_2}{\ell_1+\ell_2}.
$$
证明取任意 input irrep $\rho$、output irrep $\sigma$。Singlet contractions 使两个 input interval labels 都为 $\rho$，两个 output labels 都为 $\sigma$。两段 insertion phases 的乘积为 $e^{ie^2\hbar(\ell_1t_1+\ell_2t_2)(C_2(\sigma)-C_2(\rho))/2}$；其余 contraction 是静态 $D_R(U_2)D_R(U_1)=D_R(U)$。所有 Peter–Weyl matrix entries 因此相等；bounded multiplication 与 unitary conjugation 把等式延拓到 Hilbert space。恢复 $q$ 时必须插入第 1 节的 temporal $T$。

有限多 cuts 可逐对归纳。因为 $H=\sum_iH_i$，raw dynamical algebra 是各段 actual envelopes 的 algebraic tensor product。§6.3 甚至对 raw pair words 给 compression image inclusion，故对其余段加 spectator factors 后仍可使用；完整 network 的 invariance 保证每一步 compression 是 homomorphism，并保持其余 cut symmetries。依次合并所有相邻段，得到同一个 independently defined full-interval envelope。不同次序的最终 map 都是 $\mathcal K_N^*N\mathcal K_N$，其中 $\mathcal K_N\psi=\psi(U_N\cdots U_1)$；这从 actual regional tuple 与 Haar coordinates 证明 associativity，未改变时间 ordering。Section 与 $g_w$ 的生成族也逐阶段合成。

**Verified:** temporal covariance、common invariant domain、finite-graph global comparison；all compact-group finite-word reduction、actual section、完整 constructive kernel 与旧 global envelope equality；$U(1)$ 另有简短 normal form 与额外 exponential kernel。可计算部分见 [验算记录](<../numerics/CS and YM five work packages verification.md>)。

**Assumptions:** finite marked rectilinear graphs、有限 words 但允许全部 real times、明确 ordering/auxiliary tensors、Casimir prescription 的正长度/正 coupling、Peter–Weyl finite domain、Wilson probes 的 temporal dressing；$U(1)$ 节另 quotient 全部 based gauge components。$G$ 紧连通且 pairing positive Ad-invariant；continuum interpretation 沿用原 framed interval Gauss reduction。

**Not verified:** 一般非阿贝尔 kernel 的有限生成或 universal zero-test、限定一个固定时间窗且禁止所需时间平移的更小 algebra、任意 spacetime curves、任意 operator completion、dynamical Rees flatness或 continuum quantize-before-reduction。
