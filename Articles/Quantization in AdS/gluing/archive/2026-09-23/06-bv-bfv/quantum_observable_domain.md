# 连续量子 observables：定义域、Wick 产品与 CS sewing

**QD1。** O3 的 classical Hamiltonian polynomial 类不能全部在标准 chiral Fock vacuum domain 上量子化。下面给一个真空范数发散的 quadratic witness；加强为具有完整 C∞ classical flow 的例子后，发散仍存在。

**QD2。** 用明确的 Fourier-kernel 条件，可以构造包含 smooth currents、局域复合场和能量的非 cylindrical *-algebra。它有共同 invariant dense domain、实际 operator products 和收敛控制。

**QD3。** 在 O3 的完整 Abelian regional source 与独立 disk target 上，分别从各自的 current/CPS/transport data 使用同一已声明 quantum prescription，得到这份 algebra 的 sewing isomorphism。**这条路线是先完成 classical observable reconstruction，再实施量子乘积。** 它还没有证明另一条 quantum BV pushforward 路线与之相同。

本页推进 G5 的 continuum observable/product/domain 部分。Bulk/corner quantum BFV operator、residual integration、mQME 与 anomaly 的完整比较仍是必需任务，不因下面的 theorem 成立而删除。

## 1. 正确的 mode normalization 与 quantum input

模型为 [O3](continuous_observables.md) 的 U(1) disk：j 为实 smooth 零平均 current，κ>0、k=2πκ、v>0。定义
$$
J_n=\kappa\oint e^{ins}j(s)\,ds,\qquad
j(s)=\frac1k\sum_{n\ne0}J_ne^{-ins},\qquad J_0=0.
\tag{1.1}
$$
由自身 CPS bracket，
$$
\{J_m,J_n\}=-ikm\,\delta_{m+n,0},\qquad
[\widehat J_m,\widehat J_n]=\hbar k m\,\delta_{m+n,0}.
\tag{1.2}
$$
因此 n>0 是 annihilation mode。取共同 quantum input：真实 exterior circle 的这个正频分解、标准 bosonic Fock representation、vacuum normal ordering 与零 vacuum energy。这个 prescription 不是 classical BFV 数据唯一决定的结论。

在 ℱ_s(ℓ²(ℕ)) 中，
$$
\widehat J_n=\sqrt{\hbar kn}\,a_n,\quad
\widehat J_{-n}=\sqrt{\hbar kn}\,a_n^\dagger,\quad n>0,
$$
$$
L_0=\sum_{n>0}n\,a_n^\dagger a_n,\qquad
N=1+L_0,\qquad
\mathcal D_\infty=\bigcap_{r\ge0}\operatorname{Dom}N^r.
\tag{1.3}
$$
ℏ>0 时这是实际 operator domain；形式 ℏ-series 另按 coefficient 解释，不宣称任意 formal series 都收敛成 operator。

## 2. 两个不能忽略的反例

### 2.1 Smooth Hamiltonian gradient 不保证 vacuum domain

取
$$
F_R(j)=\frac{\kappa}{2}\oint j(s)j(-s)\,ds
=\frac1{2k}\sum_{n>0}(J_n^2+J_{-n}^2).
\tag{2.1}
$$
它的 gradient 是 κj(−s)，是 C∞→C∞ 的 continuous linear map，故 F_R∈P_H(J)。其 normal-ordered candidate 为
$$
\widehat F_{R,M}
=\frac{\hbar}{2}\sum_{n=1}^M n(a_n^2+(a_n^\dagger)^2),
$$
$$
\|\widehat F_{R,M}\Omega\|^2
=\frac{\hbar^2}{2}\sum_{n=1}^M n^2
=\frac{\hbar^2M(M+1)(2M+1)}{12}\longrightarrow\infty.
\tag{2.2}
$$
这些 two-particle vectors 彼此正交。改变 scalar normal-ordering constant 只增加 vacuum component，不能抵消发散的 two-particle component。

O3 只要求 Hamiltonian vector field，未保证每个向量场在全 C∞ 空间上有完整 flow。即使补上 flow 条件，也不能救回“全部 P_H 可在此 vacuum domain 实现”的猜想。

### 2.2 完整 classical flow 仍然失败

令
$$
F_S=\frac{i}{2k}\sum_{n>0}\frac{J_{-n}^2-J_n^2}{n}.
\tag{2.3}
$$
它是实 continuous quadratic functional；投影到正/负 frequencies、reflection 与 1/n multiplier 都保持 rapidly decreasing sequences，所以它也有 smooth gradient。其 classical equations 是
$$
\dot J_n=J_{-n},\qquad \dot J_{-n}=J_n,\qquad
\binom{J_n(\tau)}{J_{-n}(\tau)}
=\begin{pmatrix}\cosh\tau&\sinh\tau\\
\sinh\tau&\cosh\tau\end{pmatrix}
\binom{J_n(0)}{J_{-n}(0)}.
\tag{2.4}
$$
同一个有界 2×2 matrix 作用于每个 n，故对每个实 τ 都连续保持 C∞ currents，形成完整 flow。然而
$$
\widehat F_{S,M}=\frac{i\hbar}{2}\sum_{n=1}^M
((a_n^\dagger)^2-a_n^2),\qquad
\|\widehat F_{S,M}\Omega\|^2=\frac{\hbar^2M}{2}\to\infty.
\tag{2.5}
$$
所以 failure 不是仅由 classical flow 不存在造成。这里反驳的是指定 Fock/ordering/domain 上的实现；没有宣称这些 classical functions 在任何 representation 或 generalized domain 中都不能讨论。

## 3. 量子 kernel 条件与包含的物理 observables

把一个 continuous finite-degree polynomial F 按正/负 modes 分成有限个 separately symmetric kernels K_{p,q}，写成 p 个 creation variables、q 个 annihilation variables 的单项式之和。有限阶 ħ、k 的 normalization 和 factorials 可吸收入 K；判据可在 ħ=1 检查，不依赖这个常数选择。

对 multi-indices m∈ℕ^p、n∈ℕ^q，记 E_m=∑m_a、E_n=∑n_b，空 multi-index 的 energy 为零。要求对每个 r≥0 存在有限 s≥0，使
$$
\sum_{\mathbf m,\mathbf n}
\frac{(1+E_{\mathbf m})^{2r}}
{(1+E_{\mathbf n})^{2s}}
|K_{p,q}(\mathbf m;\mathbf n)|^2<\infty,
\tag{3.1}
$$
且对 adjoint kernel K_{p,q}^*(n;m)=overline{K_{p,q}(m;n)} 有同样条件。将满足这些条件的 finite-degree symbols 记为 P_Q。

(3.1) 是 weighted Hilbert–Schmidt 条件，也可读成：任意输出 energy weight 均可由有限输入 energy weight 控制。它不是最大可量子化类的定义，也不要求 degree 在所有可能的 F 上有统一界。

两个方向都必要。比如只含 annihilation pairs 的 ∑a_n² 满足单向输入-weight bound，作用在 𝒟∞ 上有意义；其 adjoint 在 vacuum 上已经发散。只写单向条件不能构造 *-algebra。

**P_Q⊂P_H。** (3.1) 在 r=0 时给 coefficients 的 polynomial bound，所以定义 continuous polynomial。对一个 derivative 留下 creation index，其余 indices 用 Schwartz current sequences 收缩；任取 r 的 weighted Cauchy–Schwarz estimate 给这个 remaining index 的 rapid decay。留下 annihilation index 时使用 adjoint 条件。因此 functional gradient 是 smooth loop，且对输入连续 polynomial 地依赖。这个证明也说明为何不能忽略 adjoint 条件。

**局域函数确实属于 P_Q。** 对
$$
F(j)=\oint f(s)\prod_{\ell=1}^d\partial_s^{r_\ell}j(s)\,ds,
\qquad f\in C^\infty(S^1),
\tag{3.2}
$$
K 系数是 frequencies 的固定 polynomial（含 current normalization 的平方根）乘以 f 的 Fourier coefficient，后者的参数是 E_n−E_m。于是对任意 L 有
$$
|K(\mathbf m;\mathbf n)|
\le C_L(1+E_m)^A(1+E_n)^B
(1+|E_n-E_m|)^{-L}.
\tag{3.3}
$$
固定 p、q 时，给定 total energy 的 multi-indices 数目至多 polynomial 增长。再用
1+E_m≤(1+E_n)(1+|E_m−E_n|)，先选足够大 L，再选足够大 s，即证明 (3.1)；adjoint 同理。因此包含任意固定有限阶的 smooth local composite、derivative composite、smooth currents 与实际能量，也包含更一般的非局域 kernels。它显著大于 finite cylindrical current core。

F_R、F_S 的 pure-creation kernel 不满足 q=0 的 (3.1)，准确落在域外；它们没有被误写成不属于原 classical P_H。

## 4. 实际 operator、共同域与乘积闭包

对有限 kernel truncation 作 normal ordering，随后在 𝒟∞ topology 中取极限。这个极限存在且不由 cutoff 定义理论：在 ℓ-particle sector 上，W(K_{p,q}) 的 combinatorial factor 为
$$
\frac{\sqrt{\ell!\,(\ell-q+p)!}}{(\ell-q)!}
\le C_{p,q}(1+\ell)^{(p+q)/2}.
\tag{4.1}
$$
其余作用为 symmetrized K⊗1_spectators。Spectator energy E_z 满足
$$
1+E_m+E_z\le(1+E_m)(1+E_z),\qquad
(1+E_n)^s(1+E_z)^r
\le(1+E_n+E_z)^{s+r}.
$$
结合 (3.1)、ℓ≤input energy 和 Hilbert–Schmidt bound 得
$$
\|N^rW(K)\psi\|
\le C_{K,r}\|N^{s+r+\lceil(p+q)/2\rceil}\psi\|.
\tag{4.2}
$$
对不同 ℓ 的相应 outputs 正交；对有限个 kernels 求和即可。故每个 operator 连续映射 𝒟∞→𝒟∞；finite-mode tails 的 weighted Hilbert–Schmidt norm 趋于零，给相同 topology 的收敛。Adjoint 条件给共同 *-domain 与 closability。这里不声称每个实高次 polynomial 都已有唯一 self-adjoint extension；H_v 的 positive self-adjoint realization 则由 (1.3) 明确给出。

**乘积闭包的证明。** 两个这样的 operators 可在 𝒟∞ 连续复合。Finite truncations 的 Wick rule 只有有限个 contraction types。对每个固定外部 multi-index，内部 contraction sum 绝对收敛：一侧 row 具有某个 polynomially weighted ℓ² bound，另一侧 column 对任意相反 weight 都在 ℓ²，故 Cauchy–Schwarz 可用。

还需证明得到的新 kernels 仍满足 (3.1)，不能只检查每个 matrix entry 有限。设 T 为这个 operator product，P_p 为 p-particle projection。从 P_pTP_q 减去已确定的 lower-degree Wick kernels 的 spectator contributions，再除以 √(p!q!)，逐 p+q 递增地确定 K_{p,q}。所有有限 particle blocks 都连续映射各自的 energy-Schwartz spaces；(4.2) 给这些 maps 的 weighted operator bound。再在输入上增加一个 energy power，使该 inverse weight Hilbert–Schmidt，即得 (3.1)：q-particle energy multiplicity 只有 polynomial 增长。Adjoint product 同理。

该过程只产生有限 degree。有限 degree Wick operators 的足够长的 nested commutators with individual a_n、a_n† 为零；这一性质由 (4.2) 在 truncation limit 中保持，Leibniz rule 又使 product 的 degree 至多两者 degrees 之和。这些 commutator identities 正是上述 finite-particle reconstruction 在更高 degrees 给零的条件。于是所有 contraction kernels 确实属于 P_Q。

因此量子乘积可直接写成有限 contraction series
$$
F\star_\hbar G
=\mu\exp\left(\hbar k\sum_{n>0}
n\,\partial_{J_n}\otimes\partial_{J_{-n}}\right)(F\otimes G).
\tag{4.3}
$$
“有限”指 contraction order；每一项中的 infinite mode sums 由上述证明控制。Operator composition 等于 W_ħ(F⋆_ħG)，adjoint 对应 F→overline F。

**Faithfulness。** 有限 mode 支撑的 coherent vectors 属于 𝒟∞；normal-ordered expectation 等于 F 在相应 classical trigonometric current 上的值。若 W_ħ(F)=0，则 F 在所有这些 currents 上为零；它们在 J 中稠密，F 连续，故 F=0。由实际 composition 与 faithfulness 得 associativity、* identity。First-order antisymmetric part 为 iħ times O3 的 Poisson bracket，符号由 (1.2) 固定。

## 5. 能量与 local quadratic product 的中心项

定义 classical stress modes
$$
T_m=\frac{\kappa}{2}\oint e^{ims}j(s)^2\,ds,\qquad
\widehat T_m=\frac1{2k}\sum_{r\in\mathbb Z}
:\widehat J_{m-r}\widehat J_r:
=\hbar L_m.
\tag{5.1}
$$
J₀=0。Direct Wick commutation 给
$$
[\widehat T_m,\widehat J_n]=-\hbar n\widehat J_{m+n},
$$
$$
[\widehat T_m,\widehat T_n]
=\hbar(m-n)\widehat T_{m+n}
+\frac{\hbar^2}{12}(m^3-m)\delta_{m+n,0}.
\tag{5.2}
$$
例如 m≥2 的 vacuum matrix element 是
$$
\|L_{-m}\Omega\|^2
=\frac12\sum_{r=1}^{m-1}r(m-r)
=\frac{m^3-m}{12}.
\tag{5.3}
$$
Noncentral term 由 action on currents 决定；其余 commutator 与所有 currents 交换，在 irreducible Fock representation 中为 scalar，(5.3) 固定它。m=0、±1 的 vacuum 条件给 displayed linear term。Sage 的计算没有截断 occupation numbers；对每个有限-energy input 使用其 exact support bound 验证 (5.2)。

物理 Hamiltonian 是
$$
\widehat H_v=v\widehat T_0=\hbar vL_0,\qquad
\frac{i}{\hbar}[\widehat H_v,\widehat J_n]=-ivn\widehat J_n,
\tag{5.4}
$$
对应 j(t,s)=j(0,s+vt)。所有 smooth stress smearings 属于 §3 的域。这里实际处理了一个 local composite/contact product；中心项不是由 formal classical bracket 自动给出的，也不能直接称为 bulk BV gauge anomaly。

## 6. 从独立区域资料构造 source quantum algebra

Source 首先是 O3 的实际 matched full fields 与自己的 Ω_C；seam history 已 release，所有 proper directions 和 arrows 仍存在。其 exterior circle、orientation、坐标与 v 是 action/cut data。由区域 currents 定义
$$
J_{C,n}=\sum_i\kappa\int_{O_i}e^{ins}(a_i)_s\,ds.
\tag{6.1}
$$
在 ambient current 表示中，可先把 e^{ins} 延拓到各 regional full boundary，并取共同 seam label。Seam contributions 相消，给 (6.1)，不同 extensions 的差是相同的 cut constraint class。Ω_C 自身给 (1.2) 的 source mode bracket；source Hamiltonian 自身给同一 chiral transport。

在 source cohomology classes 上，以 J_C 的 Fourier coefficients、自己的 exterior energy 和同一 positive-frequency prescription，独立施加 (3.1)，定义 P_{Q,C} 与 (4.3) 的 source product。这里的 joint kernels 保留跨越真实 exterior 接点的完整 smooth/distributional information；不能把 local composite 任意拆成开弧端点互不相容的 products。

Target 从独立 disk action、j_D、J_D、H_D 和同样已声明的 quantum input 构造 P_{Q,D}。O3 的 restriction 比较给 J_C,n→J_D,n；各自 kernel 条件由同一真实 exterior 的 energy weights 验收，故得到
$$
\operatorname{Sew}_\hbar:
(P_{Q,C},\star_\hbar,*)\xrightarrow{\ \cong\ }
(P_{Q,D},\star_\hbar,*).
\tag{6.2}
$$
Onto 使用 O3 的实际 current/tangent lifts；injectivity 使用 O3 的忠实 classical evaluation 与 §4 的 normal-symbol faithfulness。Source 的同一 kernel 给 target，反向 lift 也保留 (3.1)。因此没有额外 quantum kernel。若从 closed classical BV cochains 表示 source，遗忘到这些 classes 的 kernel 仍是原 Q-boundaries；本页没有把它称作尚未构造的 quantum BV differential 的 kernel。

乘积与 H_v 的 time evolution 由 (4.3)、(5.4) 严格 intertwine。对 FC 的合法 cuts/refinements，若 physical exterior 与这份 quantum prescription 固定，induced observable maps 同样相容，因为全部 J_C,n 与 kernels 的比较相同。

这不是把两份独立 regional vacuum Hilbert spaces 作 tensor product 的定理。Source prescription 是在 full classical matching relation 上由其 own exterior CPS/transport data 实施的；独立 regional quantum BFV states 如何经 pushforward 产生它，是下一条尚待证明的比较箭头。

## 7. Quantum BV–BFV 的剩余箭头

当前已构造的路线是：完整 regional fields/actions → classical matched observable classes → P_Q 的 continuum Wick products → 独立 global operator algebra。另一条必需路线是：区域 quantum BV–BFV complexes/states → interface integration 与 residual BV pushforward → global quantum observables。

[CMR 的 quantum framework，§2.3–2.4](https://arxiv.org/html/1507.01221v2) 还要求实际 boundary operator、residual BV Laplacian、modified master equation 及 gauge-fixing/pushforward 控制。本文的 c=1 stress extension 并未检验这些 bulk/corner equations；也没有从 smooth exterior kernels 自动推出 artificial corner distributions 的乘积合法。

故 G5 更新为“已有明确 continuum quantum observable 子代数与 sewing，完整 quantum BV bridge 未完成”。此处 P_Q 是由反例引出的实际 quantum domain，不能把它重新宣称为全部 P_H，更不能用它删去 non-Abelian quantum 或 propagating-model 验收。

**后续 integration 增量：** [QB](quantum_collar_and_corners.md) 已给 closed product collar 的 normalized axial BV kernel、cylindrical/formal mQME与实际interface/residual pushforward。Open face留下corner curvature及不可由scalar rephasing删除的复合相位；local mixed BV Hessian另给Δ的发散见证。因此这条积分路线已有具体构造和明确缺陷，仍未验收本页P_Q的local composite products与chiral energy。

**真实 wall/caps 的进一步比较：** [WH](physical_wall_and_caps.md) 已从独立 regional physical history phases 执行 normalized source/quartet release，并由真实 wall action 推导 coherent cap Gaussian；其 contractions、continuum operator 与 energy 实际等于本页的声明处方。完整区域 quantum BV cochain states、determinants、local BV insertions 和 full mQME pushforward 仍是不同的未证箭头。

**Verified:** 反例 norms、完整 classical squeeze flow、normalization 与中心项 finite sum 有 Mathematica 检查；Wick associativity/*、非零 double contraction、Virasoro/current action 有 Sage 检查。Infinite-domain、closure 与 faithfulness 的依据是 §3–4 的 weighted estimates 和 reconstruction proof。

**Assumptions:** Abelian J₀=0 sector、κ>0、v>0、声明的 positive-frequency/normal-ordering prescription、P_Q 的双向 kernel 条件、固定 true exterior；actual operators 取 ħ>0。

**Not verified:** 每个实 symbol 的唯一 self-adjoint extension、quantum BV pushforward/mQME、artificial corner renormalization、non-Abelian quantum 与 propagating theory。执行证据见 [本轮验证](checks/global_quantum_verification.md)。
