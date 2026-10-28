# AdS3 解析谱与深层结构独立审查

## 审查对象与结论层级

本报告审查 ADS3_Analytic_spectrum_research.md、ADS3_Deep_structure_research.md、两套研究包、验证文件和证明附录。Analytic 的附录 A–N 与 Deep 的附录 A–I 均纳入。此前两轮 Einstein scalar/Fock 研究的审查作为明确标注的已审输入，不将其自动扩张成对新定理的认可。

原报告、原研究包和程序不修改。所有补证、独立计算与核查记录另存于本审查材料。

本次区分三种不同工作：阅读原证明并攻击逻辑接口；用不同构造独立推导或检验；以新增参数运行原交付实现。第三种不能冒充第二种，有限计算也不能替代全指标证明。原包内标题含“independent audit”的附录仍是审查对象，不是认证其余内容的外部权威。

以下所有谱结论仍以原指定理论、Brown–Henneaux/fast-falloff 边界条件、量子减除与 physical-gap 处方、Δ>1、没有独立自由引力子占据的 scalar branch 为范围，讨论固定阶 O(G) 的能移系数。任何对这些系数的大 N 或高激发定理，均不额外证明固定非零 G 下微扰理论的一致有效性。

## 核心判断

在各定理实际声明的输入与极限顺序下，本轮没有找到推翻这两份报告新谱结论的反例。这个判断不只是复述交付包的验证状态：下面各附录对最强证明接口重新推导，并另写了不调用原谱算法的 CG 多项式、完整 Bose 空间、根导数、有效算子和 Haar 几何检查。

也没有为了充当苛刻审稿人而将原文主动保留的限制冒充新发现的错误。例如“没有证明全模型可积”“没有完成 N≥5 的 HVZ 上界”“软正谱的下一尺度未知”“大 N 展开未对 P 一致控制”，原报告已经明确说明。它们是结论边界，不是作者隐瞒后被本次揭穿的漏洞。

真正需要展开的是若干关键证明接口。原文大多已有正确机制，但把它们写成几句说明，仍不够让一个独立读者不借猜测地重建论证。本报告将其补全；补证写在这里，未写回原稿。

## 关键补证

### 质量变化与物理 Bose 投影

不同 Δ 的 Bargmann Gram 不能假设一致有界等价。可行的证明是先在辅助 Δ=1/2 的范数比较固定长度的 Casimir 多项式 word，再分别在各质量自己的正定度量下逼近 min 函数。先固定逼近精度和次数，再取高激发极限，最后去掉逼近误差。这样不会暗中交换一个随激发增长的多项式次数与极限。

Bose 投影也不能仅靠无插入 character 的渐近来证明。需要对插入 generator words 的 twisted traces 作同样估计，确认非中心群元素消失，四个中心元素在分子分母中正确抵消。附录给出完整的 tensor-slot 计数与支配收敛论证。

### 软正谱不等于漏掉零模

在每个有限块，正谱经验测度的零点质量恰为零；其弱极限仍可有零原子。因此应先用全谱测度的精确恒等式减去精确 kernel 比例，再取弱极限，而不能直接交换“在零点取质量”与极限。新的推导说明严格正而 o(P²) 的宏观谱可以存在，但没有凭此指定其统一下一尺度。

谱边缘同样不能仅从经验分布推出来。报告使用的正性与独立算子范数上界必须保留，再利用极限分布的完整支撑，才可同时夹住端点。

### 四体没有隐藏趋零正根

正性与范数收敛本身不够。例如一个 1/P 的正特征值就可以收敛到比较算子的零根。这里的决定性输入是精确辅助 nullity 恒等式：在给定阈值之后，有限块中已经存在的严格零根，恰好耗尽极限零簇的重数。结合零点周围的谱投影稳定性，才能排除额外正根悄悄落入零点。

本次从置换 cycle types 独立重建相应 Molien 有理恒等式，并另给全大 t 的有理尾界，重新确认 Δ=2、Q=0 最低正 residual 的极限数值及其全指标排除步骤。这里必须使用右定向 baseline；辅助零空间与物理零空间不能互换。

### Fredholm 函数的复零点与重数

原稿先处理 s>0，再简述复延拓。要从函数推出孤立谱和重数，需补上复域局部一致收敛。写成 det[I+(s+D)⁻¹E] 后，在避开原子极点的任意紧集上，resolvent 一致有界；trace-class 尾界以及保留 pair 标签的 polar 嵌入给出局部一致收敛。再用 Rouché 定理控制零点重数。这个证明不依赖随意选择矩阵平方根或 Gamma 根的复分支。

原子极点本身不在该结论域中；不能声称 Fredholm 比值在那里以普通孤立零点编码无限 bulk 重数。Gamma 公式中的根应作为对称多重集处理，根碰撞通过原有解析函数延拓，而不是各自选主值后拼接。

### 重耦合路径与物理 Gram

Analytic 中“F 正交所以路径无关”的前半句不够准确，但同段已经指出完备基插入及实际基变换这一正确机制。因此应理顺并展开，而不是指控它完全缺少理由。

独立 CG 多项式实现把相位与真实变量交换锚定后，完备基的过渡矩阵连乘可以逐次插入恒等算符，路径无关才成立。正像压缩中还需明确 spectator 投影的完备性、PSD 零 pivot 可跳过的理由，以及物理 Gram 和矩阵乘法方向；附录逐项给出。

### 稳定粒子数与降阶有效算子

有限 N 的自伴性不能自动保证非正交坐标中极限 leading matrix 可对角化。物理 Gram 以不同阶数退化，必须先构造 t=N⁻¹ᐟ² 下不退化的解析正交 frame，才能使用 Hermitian 解析摄动定理。实际 Jordan 共振与有限 N 的 Hermiticity 并不矛盾。

Gegenbauer 低簇与下一阶有效算子的论证不能简化成“检查几个小矩阵”。应先证明低代数 retraction 的乘法性、reduced inverse 的低代数 module 性质，以及最高微分阶的抵消；只有这些结构成立后，有限 determining jets 才足以决定所有次数的系数。下面独立重建实际两体作用并核对这些接口。

## 必须保留的未完成部分

本轮不新增对完整 finite-G 引力理论、统一高能微扰有效性、强酉无限 Fock dressing、全部母稿 loop 减除、全模型可积性或一般 N≥5 完整 cluster 上界的认证。新数学结论以已经指定的物理两体核为输入；共享同一核的两个程序互相符合，不能反向替代从 Einstein action 推导该核。

本轮也不做穷尽文献优先权判定。已有 Rellich、CG/Racah、coherent-state、root-power 理想等数学输入在专项附录中明确区分于本模型的特化证明。

## 实际新增的独立证据

- 直接生成 CG 多项式并执行真实变量置换，360 个交换检查与对应物理 Gram 精确一致；再从完整 labelled 空间直接求 Bose 不变子空间，八个新的完整谱块与压缩后端符合，含空块和真实 kernel。
- 从 root-direction 导数共同核与全部置换角色直接计算 36 个有限块；另有 21 个三体物理 overlap、11 个有限 N 投影态端点检查。
- Kohno generic 与 exceptional 两分支从微分 Casimir 和字面置换全符号重建；检查了解算系数及基变换在物理质量区间无遗漏零点。
- 稳定算子从新的 rank-two projectors 和 occupation lift 重建；(4,1)/(3,1) Jordan/保护态矩阵按一般质量符号核对。P=6、8、9 的 determining blocks 在有理函数域 QQ(Δ) 中完整核对，四个下一阶有效系数均独立通过。另有六个新有理质量块及大质量符号变化检验。
- 重新从置换 cycle types 构造三体/四体 nullity 有理恒等式；六个不等权重 CG overlap、双 parity Fredholm 有理式、所有 t≤128 以及另写的 t≥129 尾界通过。
- Grassmann 部分独立核对球谐变换、质量差和 Poisson/Jacobian 的精确恒等式，重新实现维数与 kernel 计数，并以独立 Haar-frame 采样及条件密度积分作数值交叉检查。数值积分并非严格误差界。
- 对交付径向求解器的工作副本增加未列于其原验证清单的 Δ=4 共振外腿，得到 contact/G=320/4572711、virtual boundary/G=−320/4572711，精确相消。明确这是原算法的新参数复算，不是另写了一个独立径向求解器。

每项的准确输入、程序依赖和失败判据见专项附录与 JSON。先前通读时运行的 smoke/入口检查不计入本轮独立证明，也不把这些项目合并成一个没有意义的“总通过次数”。

## 审查分工覆盖

- 两侧高激发、Grassmannian 谱律、精确核与软正谱、全局解析守恒量障碍：Deep A/B/G/I。
- 固定右激发原子谱、四体完整 cluster 极限、Fredholm/Gamma determinant、全 N singleton 继承与紧性障碍：Analytic A/D/M，Deep C。
- 半整数 Hermitian pencil、Jordan 共振、全指标泛型线性化、Gegenbauer 低簇与下一有效算子：Analytic F/K，Deep E/H。
- 低通道本征态、根幂理想完整重数、谱上缘与 gap、Markov 正性和指定 Kohno ansatz：Analytic A/B/C/H/I/J/L/N。
- all-N Racah/Bose 编译器、物理内积与相位、原始约束和 Ward 输入接口：Analytic E/G，Deep D/F。

重叠章节的重复核查不重复计数为独立物理证据。下面专项附录提供实际推导、源位置、脚本和结果。


## 附录 A 两侧高激发与软正谱

### Independent adversarial audit: balanced Grassmann spectrum, soft positive spectrum, analytic charges

#### Verdict and scope

I read the complete Deep report appendices A, B, G and I and the corresponding standalone proof files. In the statements as actually qualified, I found **no counterexample and no false theorem** in this portion. In particular, the mass-transfer argument does not require uniformly equivalent Hilbert norms, the finite-group projection really preserves the limiting distribution, and subtracting the exact kernel really leaves a positive-spectrum zero atom. These are substantive results, not numerical pattern fitting.

This is a mathematical audit conditional on the previously established physical pair kernel and complete logarithmic-kernel Hilbert series. It does not independently rederive the Einstein Hamiltonian, loop prescription or old kernel theorem. It is not a proof of uniform finite-G perturbation theory, uniform convergence in N or r, numerical conditioning of arbitrarily large blocks, finite-block integrability/nonintegrability, or a continuum thermodynamic limit.

No original file was edited. All calculations here are new and import no original package modules.

Source line numbers below refer to `ADS3_Deep_structure_research.md` in the supplied Deep package.

#### 1. Dependency map: what actually proves what

1. Exact two-body eigenvalues, Bose-even channels and fixed Δ>1 imply the O(P) operator error in replacing the physical interaction by the sum of pairwise minimum Casimirs (A §2, lines 804–829).
2. Bargmann representation plus simultaneous primary and Bose conditions, not the gravitational field equations, imply the Grassmann phase-space trace law for these Casimirs (A §§3–5, lines 831–919).
3. Combining 1 and 2 gives the physical empirical spectral law at order G.
4. The complete old logarithmic-kernel series is an additional input needed for the exact-kernel fraction and the *positive-only* atom. It is not needed to prove the full empirical law.
5. Haar geometry proves the all-N lower-edge atom and its comparison with the kernel fraction (G/I).
6. The separate analytic-charge theorem is about the explicitly supplied nonsmooth N=3 symbol and an explicitly restricted regularity class. It is not a corollary saying “the quantum model is not integrable.”

This separation matters: a future error in the old kernel classification would affect the positive-only subtraction, not automatically invalidate the full Grassmann trace law or analytic-charge theorem.

#### 2. Exact operator reduction: a careful uniform estimate

For fixed Δ>1 and pair channels k,l with k+l even, put h=Δ+min(k,l). The reported exact pair formula is

w(k,l)=4Δ(Δ−2)−8 min(C_k,C_l)+R(k,l), C_k=(Δ+k)(Δ+k−1).

R vanishes unless |k−l|=0 or 2. On either exceptional sequence it is a rational function of n=min(k,l) of degree at most one after polynomial division. For n≥1 every denominator is bounded away from zero and grows with the displayed degree; finitely many remaining n are absorbed into a constant. The sole apparent n=0, Δ=3/2 singularity must be canceled using the separate ground-channel expression. Thus |R|≤K_Δ(1+n), not merely an asymptotic statement along a subsequence. Pair self-adjointness gives the operator estimate by spectral calculus. Summing the fixed number binom(N,2) of pairs gives O_{N,Δ}(P+Q+1).

There is an extension detail worth making explicit. The pair-even subspace is sufficient for the physical Bose space. For the intermediate labelled trace calculations one can extend the remainder by zero on odd pair channels; the minimum-Casimir operator itself is already well-defined on the whole labelled tensor space. One never needs an unphysical odd-spin Einstein coupling. This is a harmless proof completion, not a defect in the final claim.

At Q/P→r>0 this norm error divided by P² vanishes. The estimate is not uniform as Δ approaches a singular endpoint or N grows, and it makes no assertion about eigenvalues whose actual scale is O(P), O(1), or smaller.

#### 3. Mass transfer: a full epsilon argument, not an illicit similarity claim

The original polynomial primary space V_P is independent of d=Δ. In the d0=1/2 norm,

C_ij(d)−C_ij(1/2)=(d−1/2)(z_i−z_j)(∂_i−∂_j)+(d−1/2)².

Multiplication and differentiation bounds give O_d(P+1), so the normalized difference is O(P^{-1}). Both normalized operators are uniformly bounded in this reference norm. For a fixed word W of length m, replacing one factor at a time gives an O_W(P^{-1}+Q^{-1}) bound. Its trace on the Bose space is controlled either directly by its compressed norm, or by the labelled dimension divided by the physical dimension, which tends to N!.

The difficult point is that min of the physical Casimirs is not obviously close in the auxiliary norm. The proof correctly avoids claiming this. Here is the complete limiting order:

* Fix ε>0 and select a real polynomial p(x,y) uniformly approximating min(x,y) on a common compact spectral rectangle within ε.
* For each d separately, the two same-pair chiral Casimirs are commuting and self-adjoint in the d-Hilbert norm. Hence the operator error in that norm is ≤ε, and the error for the fixed finite sum is ≤binom(N,2) ε.
* For any fixed scalar polynomial q, norms of the sums are uniformly bounded in the relevant d-norm. A telescoping estimate bounds the difference between q(sum min) and q(sum p) by K_q ε.
* The normalized trace of q(sum p) is a finite sum of Casimir-word traces. These can be transferred to d0 by the reference-norm estimate above.
* Take P,Q→∞ first, then ε→0. Finally approximate a continuous test function by q.

This proves the claimed weak convergence without interchanging degree of approximation and excitation, and without estimating the condition number between two Bargmann metrics. The auxiliary d0 is not a physical mass at which the Einstein kernel is evaluated. Its pole there is irrelevant.

**Adversarial verdict:** this interface survives. An attack based only on ill-conditioned mass-dependent norms would be invalid.

#### 4. Harmonics, coherent states and Bose projection

##### 4.1 Exact identities

The map T(z^α)=∏ y_i^{2α_i}/(1/2)_{α_i} sends total lowering to Δ_y/4 and pair Casimir to J_ij²/4−1/4. The image of the primary space is the coordinate-sign-even part of degree 2P spherical harmonics, not the entire harmonic representation. The Fischer norm differs by the scalar 4^P. I independently verified these identities on every labelled N=3 monomial through degree 5, and derived the one-coordinate factorial identities underlying the general statement.

##### 4.2 Fixed-word moments

Let l=2P and c=(u+iv)/sqrt(2), so c†c=1 and c·c=0. The tensor c^⊗l is traceless and normalized. Averaging its projector over the orbit gives I/dim H_l. A normalized angular-momentum generator J/l is a sum of one-slot generators divided by l. In a word of fixed length m, ordered tuples of distinct tensor slots have count (l)_m and contribute the product of one-slot expectations; all repeated-slot tuples have O_m(l^{m−1}) count and bounded factors. Therefore the error is O_m(1/l), uniformly on the compact orbit. Squaring the angular momentum and using l=2P gives precisely the symbol X_ij=(u_i v_j−u_j v_i)², with no missing factor 4.

##### 4.3 Twisted traces with insertions

The correct projection group is (Z₂^N×Z₂^N)⋊S_N with the same permutation in both factors. Its four central sign elements all act identically on even-degree harmonics. A noncentral signed permutation g has |c†gc|<1 except on a proper analytic subset. To see properness, equality everywhere would make every isotropic complex line invariant; this would force every real two-plane to be invariant and then g to be scalar.

Insert a fixed generator word in Tr(U_g W). Expanding its occupied tensor slots leaves at least l−m untouched slots, each supplying c†gc. Each term is bounded by a constant times |c†gc|^{l−j}, 0≤j≤m. This converges almost everywhere to zero; normalized generator norms give a uniform dominator. On the two-factor product at least one factor is noncentral and both P,Q diverge. Dominated convergence kills every noncentral group contribution, including with the insertion. The same argument without insertion computes the dimension. The factor four cancels between moment numerator and denominator.

Thus d_N(P,Q)~P^{N−2}Q^{N−2}/[N!((N−2)!)²], and the normalized physical trace is the independent two-plane Haar average. One cannot replace this argument by a character calculation without insertions, but the source already includes the needed strengthening.

#### 5. Support, absence of nonzero atoms, extrema and determinants

The oriented Grassmannian is connected for N≥3. Choosing identical planes gives a=0 for r≤1; choosing coordinate planes (12) and (13) gives a=8r². Continuity and full support of Haar measure imply the entire interval is in the support of the pushforward.

On a strict comparison chamber with active set S, the symbol is 8Σ_{e∈S}(r²Y_e−X_e). S cannot be all edges if r≤1, by summing inequalities. If S is nonempty proper, Σ_{e∈S} X_e is not constant on the Grassmannian: a coordinate plane on an edge in S gives 1 and a coordinate plane outside S gives 0. Analytic continuation forbids constancy on an open chamber. The critical set of a nonconstant analytic function has measure zero. On coordinate charts the coarea theorem then gives an absolutely continuous pushforward; the comparison walls themselves have Haar measure zero. For r<1 the empty active set is open and has positive measure (take identical generic planes with every minor nonzero), giving the only atom. For r=1 it has no interior and requires X=Y, a measure-zero event.

The upper eigenvalue edge does **not** follow from weak convergence alone. Here it is justified independently by positivity of min(C_L,C_R) at the physical mass and the O(P) remainder, giving A/P²≤8r²+o(1). Positivity supplies the lower bound. Full support of the limit then puts actual eigenvalues arbitrarily close to both edges. This completes the otherwise dangerous “bulk law implies edge law” step.

For s>0, log(s+x) is continuous and bounded on the uniform spectral interval, so the regularized determinant limit is immediate. No conclusion follows for s=0, for unregularized log determinants of positive eigenvalues, or for inverse moments. Soft eigenvalues are precisely why that extension is dangerous.

#### 6. Exact-kernel ratio and soft positive levels

The old Hilbert series is x^{2N(N−1)}/[∏_{j=2}^N(1−x^j) ∏_{a=1}^{N−1}(1−yx^a)]. For a fixed vector ν of nonnegative logarithmic-generator occupations summing to Q, the remaining weighted partition degree is M=P−2N(N−1)−Σaν_a. Its count is M_+^{N−2}/[N!(N−2)!]+O((M+1)^{N−3}) for N≥3 (bounded periodic remainder for N=3). Summing over the Q-simplex and dividing by the dimension leading term produces the uniform-simplex integral. The integrand is continuous at the truncation thresholds, so its Riemann-sum limit remains valid there. The fixed Vandermonde shift is subleading, not zero at finite P.

One can derive the spline coefficients by applying divided differences to (1−ra)_+^{2N−4}, keeping the derivative sign and factorials. This gives exactly the source's formula. Independent character/Molien counting and a separately implemented bivariate Hilbert-series dynamic program reproduce the asymptotic ratios; finite ratios can be visibly far from their limit, especially for N≥4. Example N=4, (P,Q)=(400,40): actual exact-kernel fraction 0.5617604931, limit 0.6416666667. This is not a contradiction; it is a practical warning against using the limiting fraction as a finite dimension estimate.

Let μ_t be full empirical spectral measures, k_t exact kernel fractions and ν_t positive-only measures. Since μ_t=k_t δ0+(1−k_t)ν_t holds exactly, weak convergence of μ_t and numerical convergence of k_t<1 yield weak convergence of ν_t by testing continuous functions. Thus the positive limiting atom is (p_N−k_N)/(1−k_N), although **the atom mass of each finite ν_t is zero**. There is no illicit exchange of point masses and weak limits here.

A diagonal sequence of windows ε_t↓0 can capture the limiting atom fraction, but the theorem does not provide ε_t=P^{-1}, an O(P) scale, a constant gap, or a rate. This distinction must stay explicit in any summary.

#### 7. N=3 soft atom and endpoint audit

The two squared-normal vectors are independent Dirichlet(1/2,1/2,1/2). Each violation has probability r/2. Three simultaneous strict violations are impossible for r≤1. Hence p_3=1−3r/2+3p_2. Expanding the quarter-disc density on the violation rectangle uses a positive binomial series, so monotone convergence justifies termwise integration; the resulting single-index positive series and stated geometric tail bound are valid. At r=1 the equality case has measure zero, giving p_2(1)=1/6.

For r≤1/2 the kernel fraction is 1−3r/2, so the first positive series term already proves the extra atom. For r>1/2, defining d=p_3−(1−r)²/(2r) gives d''=r^{-3}(24 C(r)/π²−1), where C is strictly increasing and diverges. Therefore d'' switches sign at most once, is positive close to 1, and d(1)=d'(1)=0. Backward integration gives d>0 on the final convex interval; on any preceding concave interval the positive endpoint values imply positivity. This closes positivity for all fixed 0<r<1.

Near 1, C(r)=(1/8)log²(1/(1−r))+O(log(1/(1−r))). Consequently p_3''~3π^{-2}log²; integrating twice from its zero endpoint data yields p_3~3(1−r)² log²/(2π²). The coefficient is correct. This is an iterated limiting-law endpoint, not a result for Q=P−1.

#### 8. All-N soft theorem: the logarithm is real, not an inclusion-exclusion truncation

The star of a Haar bivector obeys (B_12,…,B_1N)=R W, with R²~Beta(1,(N−2)/2) and W uniform on S^{N−2}, independent. Independence follows from the stabilizer of e1 acting transitively on directions conditional on the radius. For N≥4 the two-coordinate absolute density of W is 2(N−3)(1−s²−t²)^{(N−5)/2}/π. Its value at the origin is positive, including N=4.

Condition on the second plane's A=|B'_12|, D=|B'_13|. For R≥2r the rectangle has sides rA/R,rD/R and stays a fixed distance from the unit-circle singularity. The density expansion has a uniform O_N(r⁴/R⁴) remainder. The small-radius region contributes at most O_N(r²). Integrating R^{-2} against the radial density produces (N−2)log(1/r)+O(1); integrating the error gives only O_N(r²). Since E(AD)=4/[πN(N−1)], the coefficient is 8(N−2)(N−3)/[π²N(N−1)], as stated.

The crucial probability estimate is a valid upper union bound after merging two events: Pr(∪E_e)≤M Pr(E_12)−Pr(E_12∩E_13). It does not truncate alternating inclusion-exclusion and needs no estimate of triple intersections. The one-event approximation and exact-kernel fraction agree through linear order; their discrepancy is O(r²), while the positive shared-event correction is r² log(1/r). Division by 1−k_N~N(N−2)r/2 proves the exact displayed liminf and existence of a small interval.

For N=4 the supplied joint logarithmic density, radial moments and angular integral reproduce the constant 37/12−π²/8. The deliberately tiny explicit interval r≤e^{-23} is sufficient but not remotely an optimal estimate. The statement for every r<1 when N≥4 remains unproved; Monte Carlo support at larger r must not be advertised as that theorem.

Independent quasi-Monte-Carlo quadrature of the N=4 conditional rectangle agrees with the analytic bounds to approximately 1.5×10^{-6}. At very small r that numerical error exceeds the extremely narrow rigorous upper/lower interval, so the computed value is not a certified bound and is not a counterexample. This limitation is recorded rather than hidden.

#### 9. Analytic-charge obstruction: correct theorem, narrow consequence

In x∈S², z∈rS² use the product Lie-Poisson bracket with standard normalization for both x and z. The factor z=r y correctly absorbs the ratio of the left/right semiclassical scales. In each nonempty chamber with exactly d_i=x_i²−z_i² negative, H=−8(r²+d_i). If global real-analytic F commutes with H on all chambers, the analytic identity theorem forces {F,d_i}=0 globally. Jacobi forces it to commute with c={d_1,d_2} and e={d_1,c}.

I recomputed c and e directly from the bracket, then computed their augmented six-variable Jacobian without importing source code. At z_1=0 it is exactly −2048 x_1³ x_2 x_3 z_2² z_3². The explicit point in the report has nonzero determinant for every r>0. The two radial gradients are normal to the symplectic leaf; hence the remaining four Hamiltonian fields span the leaf tangent space on an open neighborhood. F is constant there and then everywhere by analytic continuation. Swapping and uniformly rescaling both sphere variables reduces r>1 to r<1 without changing a zero Poisson bracket condition.

This excludes global analytic charges, including polynomial ones, **only for this nonsmooth symbol**. It does not exclude energy itself, which is not globally analytic; piecewise charges; singular charges; quantum commuting matrices with nonanalytic/no principal symbol; a Bethe-type solution; Liouville integrability in a broader function class; or lack of chaos. The source correctly keeps these exclusions. A rewrite that drops these qualifiers would be materially wrong.

#### 10. What is caused by quartic interaction?

The structural separation is sharp:

* A number-conserving effective quartic bosonic Hamiltonian gives a sum of identical two-particle operators in fixed N. This explains pairwise recoupling, overlapping-pair combinatorics and certain finite-band constructions.
* The harmonic/Grassmann geometry comes from the positive-discrete-series primary representation and its high-degree limit. It is kinematical and survives for many different invariant pair kernels.
* The explicit function −8Σ min(X_e,r²Y_e), mass-independent leading coefficient, comparison chambers, zero atom and analytic-charge obstruction require the particular large-channel Einstein pair spectrum. Quartic degree alone supplies none of these formulas.
* The exact logarithmic-kernel fraction requires the particular forbidden/allowed pair channels, not merely pairwise interaction.

An exact counterexample to “quartic forces these structures” is a number-conserving quartic interaction with two-body kernel h_ij=C^L_ij+C^R_ij. For either chirality,

Σ_{i<j} C_ij=C_total+(N−2)Σ_i C_i.

On a fixed global-primary (P,Q) sector the right side is scalar. Its full spectral measure is one atom and every operator commutes with it in that block. It has no nontrivial continuous empirical spectrum and no analogous analytic-charge obstruction. The identity follows directly by expanding the quadratic Casimir of Σ_i J_i. Such a kernel is a legitimate invariant two-body operator on finite blocks; no assertion that it comes from a local renormalizable bulk Lagrangian is needed for the logical counterexample. Even the constant pair kernel gives the elementary same conclusion.

Thus “quartic gives the many-body framework; the Einstein pair kernel gives the striking content” is accurate, while neither attributing everything to quarticity nor attributing all the representation geometry uniquely to gravity is accurate.

#### 11. New computations and reproducibility

Run `python independent_checks.py` in this directory. Dependencies: Python, SymPy, NumPy, SciPy. The program imports no source package modules and reads/writes no original files.

Results are in `independent_results.json`:

* Exact symbolic Poisson-bracket and Jacobian certificate for all r.
* 56 labelled monomials, 168 pair conjugation identities, 56 lowering identities, 168 mass-difference identities, all exact zero residuals.
* Independent cycle-index/Molien dimensions and bivariate-kernel coefficient counting for five N=3,4,5 blocks. These test exact counting and approach to the asymptotic ratio; they do not independently establish the input kernel theorem.
* Independent QR-generated Haar frames, 200,000 pairs each for N=3,4,5,8, r=1/4,1/2,1. Means are consistent with exact formulas at ordinary sampling fluctuations (largest deviation about 2.6 standard errors across twelve correlated comparisons). All Plücker sums agree with 1 to about 2.3×10^{-15}.
* Independent N=4 conditional-density quasi-Monte-Carlo integration, 2^19 samples, four r values. This checks the logarithmic coefficient mechanism and constants, not a rigorous quadrature bound.

I did not rerun all original finite-matrix spectral benchmarks. The proof audit above, exact algebra checks and independent geometric/counting tests are the evidence actually supplied. No numerical test is being substituted for the general moment, finite-group, or probability arguments.

#### 12. Final hostile-review recommendation

Accept A/B/G/I as supported mathematical statements **under their stated input theorems and order of limits**. Preserve those conditions when summarizing. Demand explicit additions of the parity-extension step and the epsilon-order argument above if presenting the proof to a hostile reader. Do not describe these additions as discovered counterexamples; the source arguments already contain the essential valid mechanisms.

The serious remaining questions are genuinely beyond these statements: the next scale of soft positive levels; rates or joint limits with r→0,1 or N→∞; finite-G uniformity; and broader integrability. None has been solved merely by obtaining this leading empirical law.

##### Explicit classification of findings

* **Already in the original, not newly found errors:** fixed N, Δ>1 and fixed r; order-G coefficient only; strict positivity versus limiting zero atoms; N≥4 all-r positivity left open; no full nonintegrability claim; s>0 determinant regularization; absence of a finite-degree Monte Carlo error bound. My review preserves and explains these existing qualifications.
* **Valid but compressed proof interfaces:** extending exceptional-spin remainders off the pair-even space; the nested polynomial-approximation limiting order; uniform treatment of weighted-partition truncation thresholds; and the independent operator bound needed alongside weak convergence for edge convergence. The report above supplies the details. For a linear exposition, establish the auxiliary d0 dimension estimate before using it in mass transfer; dimensions are mass-independent, so this removes any appearance of circularity.
* **Genuinely unsupported stronger statements:** none of the specifically audited A/B/G/I theorem statements was found unsupported. Claims such as universal r-dependent soft scales, every-r positivity for N≥4, fixed-G high-energy accuracy, or broad quantum nonintegrability would be unsupported, but the original explicitly does not claim them.
* **Fresh observations rather than corrections:** the explicit quartic Casimir counterexample in §10 and the finite-count convergence examples in §6 provide useful interpretive controls. They do not overturn the supplied theorems.


## 附录 B 固定右度与四体谱极限

### Independent adversarial audit: fixed-right atomic limits, four-body cluster/Fredholm structure, and higher-particle inheritance

Date: 2026-10-19. Scope: Analytic report Appendix A §5, D in full, M §§1–5, and Deep report Appendix C in full. Original reports and code were not edited. All programs in this review are newly written and import no delivered research-package module.

#### Verdict and evidence boundary

I found no counterexample to the assigned spectral theorems, conditional on the previously established Einstein pair operator, positive pair residuals, physical inner product, and oriented full-kernel formula. In particular, the complete four-body statement is not merely an extrapolation from plotted eigenvalues: it has the necessary changing-space norm approximation and an exact nullity identity. The latter is essential, not cosmetic.

Three compressed interfaces warrant a fuller written argument:

1. The Fredholm proof given first for real s>0 must be upgraded to locally uniform holomorphic convergence off the atomic poles before zeros and their multiplicities can be read from it. This is repairable with the same estimates; a complete argument is supplied below.
2. Exact auxiliary nullity is what excludes spurious positive levels converging to zero. Positivity and norm convergence alone cannot do so. I independently reconstructed the needed rational identities.
3. The all-N inheritance result is only a lower spectral inclusion, uniform for a fixed finite source family. Its iteration proves divergence of multiplicity without a growth rate. Nothing in this proof supplies a general N≥5 upper cluster bound or an HVZ classification.

No claim is made here about a new independent derivation from the Einstein action, renormalization choices, or the uniform validity of the O(G) approximation at high excitation. These results concern the O(G) coefficient with N, Q and Δ fixed as stated. They also do not imply integrability.

#### Source positions

Line references are to the supplied consolidated Markdown reports, not to their embedded local equation numbers.

- Analytic 1494–1689: fixed-Q atomic measure, Gram bounds, multiplicity and descendants.
- Analytic 2857–2988: four-body physical/auxiliary operator and normalized recoupling.
- Analytic 2989–3107: changing-space decomposition and polar embedding.
- Analytic 3108–3195: complete cluster limit and auxiliary-nullity identities.
- Analytic 3226–3274: Fredholm determinant and complex extension.
- Analytic 3275–3360: integer-Δ Gamma reduction and explicit chiral example.
- Analytic 3361–3385: minimum positive residual at Δ=2,Q=0.
- Analytic 5835–6063: prior internal audit of atomic law; checked rather than treated as authority.
- Deep 1233–1356: oriented residual and fixed-endpoint Racah lemma.
- Deep 1357–1502: simultaneous singleton isometries and multiplicity.
- Deep 1503–1586: proliferating cluster levels and compactness obstruction.

#### 1. What follows from finite bad pair channels, and what does not

For fixed Q the distinguished bad-channel set B_Q is finite, with pair coefficients a_α>0. The physical residual is the Bose restriction of a sum of positive low-channel pair projectors. Its auxiliary Gram operator is

B = D^(1/2)(I+K)D^(1/2),

with D diagonal on the distinguished pair labels and K a sum of overlapping/disjoint exchange compressions. Positive spectra of B and the physical residual agree, but their zero multiplicities do not.

This decomposition already depends on more than the word “quartic.” A generic number-conserving quartic interaction gives a two-body sum, but need not have a finite low-channel residual after subtracting a global Casimir baseline, positive coefficients, Racah endpoint decay, or this full kernel. The atomic theorem uses all those ingredients, not quarticity alone. The Gram double-coset bookkeeping itself is much more general.

#### 2. Atomic law: an independent proof audit

Let F be an isometric distinguished-pair/spectator embedding, P_F=FF*, and Q_12 the bad-channel projector on the complete labelled primary space. Then P_F≤Q_12. For an involutive permutation U,

||F*UF||_HS² = tr(P_F U P_F U*) ≤ tr(Q_12 U Q_12 U*).

The last inequality holds without commutativity: for positive X≤X' and Y≤Y', tr(XY)≤tr(X'Y)≤tr(X'Y'). Restriction to a primary sector is legitimate because the pair Casimir projectors commute with the total global algebra.

For disjoint pairs, two fixed pair modules and N−4 labelled leaves leave N−2 effective factors. Their primary multiplicity has left degree binomial(P−k−r+N−4,N−4), hence O(P^(N−4)). For overlapping pairs, first couple the union of three leaves to degree t. Fixed low-channel Racah coefficients are O(t^(−Δ)); their squared overlap is O(t^(−2Δ)). The remaining multiplicity is bounded by C P^(N−4), and the t-series converges. This yields ||K||_HS² and ||B−D||_HS² = O(P^(N−4)).

The spectator multiplicity is the FULL (N−2)-particle level H_(N−2)(P−k,Q−l), not its primary multiplicity: the outer pair/spectator relative excitations telescope the spectator primary sum to the full level. Its leading term follows from the identity permutation in the Molien cycle-type formula. Every other x-root pole has lower order for N−2≥2. Therefore the auxiliary dimension is c P^(N−3)+O(P^(N−4)), with the reported c and channel weights.

An auxiliary zero of B corresponds bijectively, via invertible D^(1/2), to an eigenvector of K with eigenvalue −1; therefore z_aux≤||K||_HS². Removing these zeros loses only O(1/P) of the normalized mass. Hoffman–Wielandt bounds the mean squared matching displacement by O(1/P). Replacing finite channel multiplicities by their limits has total variation O(1/P), and all eigenvalues stay in a fixed compact interval. Thus W₂=O(P^(−1/2)). Coincident atom values pose no difficulty: combine their measure weights, rather than assume distinctness.

The outlier estimate is immediate from the same matching cost: every eigenvalue farther than ε from every atom contributes at least ε². It gives O(P^(N−4)/ε²), not an absolute bounded number for N≥5. An atomic empirical limit cannot be used to conclude that every eigenvalue converges to an atom.

Descendants require a second normalization. Summing primary degrees p≤P and q≤Q gives the stated full-level baseline mixture over b_N(q). A single atom b_N(Q) would be false for the full free level. Finitely many orientation-reversed p<q sectors do not affect the asymptotic.

#### 3. Four-body changing spaces: why the argument actually works

Write E_T for the finite triple-degree cutoff. In the enlarged distinguished-pair space, H_P=(I+J_P)/2 is the spectator Bose projection. J_P is an involution and cannot approach zero in operator norm. Only its fixed finite matrix elements approach zero. Consequently

V_P=√2 H_P E_T,

has V_P*V_P→I at fixed T. Adding the finite pair-pair inclusion W_P gives Y_P=(V_P,W_P), whose cross Gram entries vanish by the endpoint Racah estimate. Thus U_P=Y_P(Y_P*Y_P)^(−1/2) is an actual isometry for large P.

D commutes with these embeddings in the precise intertwining sense: every matrix entry that can overlap preserves the distinguished pair label. Hence the Gram Y_P*Y_P commutes with source D and so does its inverse square root. This is the fact needed to place the untouched diagonal atomic operator on the orthogonal complement without artificial off-diagonal terms.

The triple exchange correction has uniformly bounded block size at fixed Q, and each block is O(t^(−Δ)). The operator-norm tail is bounded by its largest remaining block, while its trace-norm tail is bounded by the sum of block trace norms. Therefore:

- compact/norm approximation requires Δ>0 at this mathematical step;
- the determinant trace-class estimate needs Δ>1;
- the physical theorem retains its original Δ>1 regime throughout.

After replacing Y_P by U_P, the finite triple correction acquires precisely the factor 2 needed for the three-body auxiliary block D^(1/2)(I+2R)D^(1/2). The pair-pair term is finite rank. This proves the claimed approximation in operator norm and, for determinant comparisons, in trace norm after truncation. Weak convergence by itself would not suffice; the supplied argument does not make that mistake.

#### 4. Auxiliary nullity and exclusion of zero pollution

I rebuilt the primary Molien series from conjugacy partitions:

M_n(x,y)=(1−x)(1−y) Σ_(λ⊢n) [z_λ ∏_(j in λ)(1−x^j)(1−y^j)]^(−1).

Using the stated oriented K_3,K_4 and B(x,y), an independent SymPy calculation yields exactly the claimed z_3(y), and

Z_4=C(y)/(1−x)+E(y)/(1+x)+R(x,y).

The reduced numerator of R has x-degree 15. Its only x-dependent denominator factors are (1−xy),(1−x²y),(1−x³y). Therefore [y^Q]R is a polynomial of x-degree at most 15+3Q, proving the stated cutoff for every Q, not just checked coefficients. The fresh script also verifies the first nine transient degrees, and computes nullities 7/9 for Q=0 and 64/68 for Q=2 (even/odd total parity), agreeing with the report.

The exact count is logically necessary. For example, diag(1/P,1,1,...) is positive and norm-approaches a comparator with one zero eigenvalue, but has a positive eigenvalue tending to zero. Thus a proof based only on positivity plus norm approximation would fail.

Here the direct-sum limit has only finitely many zero blocks at fixed Q, and all other eigenvalues are bounded away from zero: large triple blocks approach the strictly positive atom matrix D, and only finitely many exceptional blocks remain. Choose a small contour around zero excluding their positive eigenvalues. Norm approximation makes the finite-P number of eigenvalues inside the contour equal the finite limit zero multiplicity. The rational identity shows that exactly this many eigenvalues are already EXACT auxiliary zeros for all P>15+3Q. There is no room for additional positive levels converging to zero.

This reasoning is conditional on the oriented physical kernel formula used in Z_3,Z_4. It is not a new proof of that earlier kernel theorem. Replacing the right-oriented baseline by the chirality-optimized baseline for t<u would invalidate this calculation.

#### 5. Repair of the complex Fredholm/zero-count interface

The report proves the determinant limit for s>0, then states a complex extension in one sentence. The extension is valid, but requires more than pointwise convergence on a real line. Here is a branch-free proof.

Let Ω = C minus the finite set {−a_α}, and let E_P=B_P−D_P. Define

F_P(s)=det[I+(s+D_P)^(−1) E_P].

This equals the stated determinant ratio. It is holomorphic on Ω; no square-root choice is required. Fix any compact K⊂Ω and write η=dist(K,{−a_α})>0. Then ||(s+D_P)^(−1)||≤η^(−1) uniformly in P and s∈K.

For the triple tail after cutoff T,

||(s+D_P)^(−1) E_(P,tail)||_1 ≤ C_K Σ_(t>T,u≤Q)||R_(t,u)||_1 = O_K(T^(1−Δ)).

The finite pair-pair term has no tail. For fixed T, the polar embeddings above commute/intertwine with D. The finite normalized perturbations therefore converge in trace norm uniformly for s∈K to the direct sum of the normalized finite triple and pair-pair corrections. Their trace norms have a common bound. Apply the elementary Fredholm determinant continuity inequality

|det(I+A)−det(I+B)| ≤ ||A−B||_1 exp(1+||A||_1+||B||_1).

First P→∞ at fixed T, then T→∞. This gives locally uniform holomorphic convergence F_P→F on Ω and the product formula. It simultaneously proves that the infinite product converges normally on every compact subset of Ω. The limit is not identically zero, since it is nonzero on s>0.

For an isolated zero s_0∈Ω, choose a small circle containing no other limit zero and avoiding atomic poles. Uniform convergence on that circle and Rouché's theorem show that the sum of finite-P zero multiplicities inside equals the limit multiplicity for all sufficiently large P. Finite-P zeros are precisely eigenvalues of B_P reflected through s=−λ, except at the explicitly excluded atomic denominator points. This rigorously recovers isolated cluster eigenvalues WITH total multiplicity, including coincident contributions from several cluster blocks.

At s=0, D is invertible and the same argument is available. The exact auxiliary-nullity formula identifies the zero order and permits dividing by s^z; the normalized analytic nonvanishing factor then converges on a small neighborhood of zero. This justifies the positive pseudodeterminant passage and the absence of hidden small-positive levels.

Limitations: this Fredholm ratio does NOT encode infinite bulk atom multiplicities as isolated zeros at s=−a_α. Those points are excluded from Ω, and cancellations there must not be interpreted by the isolated-zero theorem. Nor does real-s numerical agreement alone certify complex zeros; it is the uniform trace-class proof above that does so.

#### 6. Gamma reduction: balance, collisions, and independent verification

At integer Δ≥2 and fixed u, each parity tail factor is rational in t, approaches one, and differs from one by O(t^(−Δ)). After cancellation, numerator and denominator have equal degree and equal leading coefficient. The absence of a 1/t term forces equality of root sums. For m of the chosen parity, the finite product through n=L is obtained directly from Γ(z+L+1)/Γ(z); the powers of 2 cancel by equal degrees, and the large-L Gamma power cancels by equal root sums. This gives the reported finite Gamma expression.

Roots are MULTISETS, not individually preferred analytic branches. At a collision, the product is symmetric in roots and extends by the original rational-factor/Fredholm formula. One must not independently choose discontinuous square-root branches and regard a numerical phase jump as physical. Possible apparent Γ pole ratios are resolved by limits. At exceptional s where a polynomial degree drops, continue from generic s on Ω. The rational/Fredholm representation supplies the unambiguous analytic function.

I independently derived, at Δ=2,u=0,

w_0=6/[(t+2)(t+3)],
w_2=84(t−1)(t+6)/[(t+1)(t+2)(t+3)(t+4)],
H=1−50/[t(t+5)]+300/[t(t−1)(t+5)(t+6)].

Then R has diagonal entries εw_0, εw_2 H and off-diagonal square w_0 w_2. Inserting this in the 2×2 three-body determinant reproduces the full reported two-variable rational formula (25), symbolically for both parities, not only at chosen t,s values.

I did not independently execute the nonchiral degree-ten Gamma polynomial or all integer-Δ/Q cases. Their general algebraic construction is covered by the argument, but their stored numerical coefficients are not newly certified here.

#### 7. Independent all-t certificate for the Δ=2,Q=0 minimum

For t=2,…,128 I rebuilt traces and determinants from the preceding rational formulas, with no import of original code. Every nonzero eigenvalue except the smaller t=9 eigenvalue is greater than 7/200. For a positive 2×2 block this is checked exactly by tr>2c and det−c tr+c²>0, c=7/200; one-dimensional positive remainders after auxiliary zeros are handled separately. The t=9 polynomial is exactly

825825 λ²−3654200 λ+124032.

For every t≥129, the following NEW, deliberately looser rational bound suffices. Set T=129,

U_0=6/[(T+2)(T+3)],
U_2=84[1+5/(T+1)]/[(T+2)(T+3)],
U_H=1+50/[T(T+5)]+300/[T(T−1)(T+5)(T+6)].

Then w_0≤U_0, w_2≤U_2 and |H|≤U_H. Gershgorin and √(w_0w_2)≤(U_0+U_2)/2 give

||R_t||≤max(U_0,U_2 U_H)+(U_0+U_2)/2
         =18595/2397824 < 1/100.

Thus λ_min(A_t)≥8/35−2(24/5)/100=116/875>7/200. This proves the infinite tail without trusting the supplied tail certificate. The t=0 positive value is 3a_00, t=1 is auxiliary zero, and the atoms and pair-pair positive sums also exceed 7/200. Together with complete cluster convergence and zero exclusion, the limit minimum is the smaller root

(33220−4√66856729)/15015 = 0.034206748172…

for both target parity subsequences. This is a residual coefficient, not an absolute physical energy; b_4(0)=−96 must still be added.

#### 8. Deep singleton theorem and N≥5 obstruction

The endpoint lemma is correct. At fixed u,v the terminating hypergeometric factor is 1+O(M^−2), and the two Gamma-ratio normalization weights give M^(−2h_middle). This is why a cross pair with a single middle leaf gives P^(−Δ), while exchanging a singleton across an (N−2)-leaf remainder gives P^(−(N−2)Δ). Confusing these two exponents would invalidate the Bose normalization estimate.

I constructed six pairs of coupled three-factor vectors directly as Bargmann polynomials, applied the raising operators with their actual weights, and used the diagonal physical monomial norms. Their squared normalized overlaps agree exactly with the claimed Racah formula, including unequal weights and Δ=3/2,7/3. Three large-degree numerical endpoint checks at 1000,10000,100000 approach the derived constants. These are independent finite tests supporting the all-index derivation, not replacements for it.

The finite source-family map T_P is isometric before Bose projection because source Casimir sectors and internal orthonormal states are orthogonal. On each source state, internal pair terms act exactly by the source eigenvalue even after outer CG coupling, since they commute with source global raising operators. Only finitely many new cross-pair channels remain, each with P^(−Δ) norm. Bose cosets give V_P*V_P=I+O(P^(−(N−2)Δ)). Polar normalization is legitimate; its commutator with the diagonal source eigenvalue matrix costs only this latter order. This proves the simultaneous isometry error O(P^(−Δ)).

For repeated equal λ, spectral projection onto an interval around λ is injective on the approximate eigenspace once the error is below the distance to the interval boundary. For different λ inside one interval, use its center c: ||(A−c)U|| is bounded by the largest |λ_i−c| plus the residual. This explicitly proves the generalized finite-family multiplicity claim, rather than falsely assuming each quasimode produces a distinct eigenvalue.

Two insertions: for ANY fixed K first choose K finite, distinct intermediate source degrees whose eigenvalues lie within ε/3 of λ. Only then take the final P sufficiently large for this finite family. This establishes eventual count≥K for every K. It supplies no lower growth rate in P, because the thresholds can depend arbitrarily on those chosen source degrees.

For N≥5,Q=0, λ_*=3a_00>a_00>a_20 is inherited with unbounded multiplicity. If A=D+K+E with spectrum(D)⊂{a_00,a_20}, uniformly compact self-adjoint K and ||E||→0, the subspace near λ_* has growing dimension and uniformly positive quadratic form for K. Min–max forces an unbounded number of singular values of K above a fixed δ, a contradiction. This is a sound obstruction to an atomic comparator plus uniformly compact correction.

It does not rule out a recursive cluster comparator, higher regularized determinant, or integrability. It also does not contradict the atomic empirical law: an unbounded subleading family can have vanishing normalized weight. The report's limitations are appropriately stated here.

#### 9. Reproduction and what was not done

Run the three new scripts in this directory with Python, SymPy, mpmath:

- independent_checks.py: Molien/nullity rational identities, transient degree bounds, pair-pair spectra and tail telescoping identity.
- cg_endpoint_checks.py: six direct polynomial CG comparisons and three asymptotic constant checks.
- fredholm_formula_check.py: full chiral rational determinant identity, 127 finite t comparisons, and independent all-t tail bound.

Each writes its own JSON result. These do not modify or import the original research packages. I did not independently recompute large four-body matrix spectra, all nonchiral Gamma numerators, arbitrary-N exact quasimodes, or original Einstein vertices. The conclusions here come from the displayed analytic derivations plus the specified independent checks, not from rebranding the source's stored verification outputs as new tests.


## 附录 C 稳定粒子数与低簇有效代数

### Stable-N 与低簇有效代数：独立敌意审查及补全证明

日期：2026-10-19。审查对象：Analytic 报告附录 F、K，以及 Deep 报告附录 E、H。原文件、原程序均未修改。下面的结论以已确立的 Einstein 两体谱及其原量子、边界处方为动力学输入；本审查没有重新积分所有 Einstein 约束源。

#### 结论先行

本模块未发现改变被审查谱公式的反例。以下强结论经过逐步重推，而不是因为文内标记“independent audit”就接受：

1. 每个固定有限激发块在 $t=N^{-1/2}$ 中有解析 Hermitian 实现，实际可出现半整数幂；不能普遍改写成整数 $1/N$ 级数。
2. 泛型质量下整个分次代数的首项 $A$ 可多项式线性化，但这个结论不是全质量半单性，也不是完整 $NA+B$ 的可积性。
3. 每个物理质量的手征最低首项簇都具有代数收缩 $q$，其第二渐近算子确实是所给 Gegenbauer 型算子。
4. 下一项 $C_2=-qBRB$ 的微分阶数至多三，而不是形式复合暗示的四。该降阶是一个真实的一般代数命题。
5. 所给全质量 $r_0,…,r_3$ 已由新的全符号 determining-jet 运算独立核实；全部有限 $P$ 的 $η(a,b)$ 公式另有全指标代数推导和有限块检查，二者在下文分开。

必须保留的边界：这里求的是固定处方下的 $O(G)$ 系数。无一处将 $N→∞$ 推成固定非零 $G$ 下的统一弱耦合近似。所有解析收敛半径可依赖有限激发块和质量。

#### 1. 源位置与审查粒度

- Analytic F，正文行 3565–4231：稳定基与 Gram、二阶生成元、Hermitian 化、$(3,1)$/$(4,1)$ 精确块、递推。
- Analytic K，行 5340–5481：原作者的独立检查说明。这里只作核对，不当作证明替代。
- Deep E，约行 2050–3076：全指标 2-adic 证明、最低手征簇、Gegenbauer 算子、第三阶 $C_2$ 与全指标 $η$。
- Deep H，行 3967–4298：原作者的低簇检查说明。
- 检查实现：本目录新增 `independent_stable.py`、`independent_jordan.py`、`check_symbolic_low.py`。这些程序不导入原包的 pair_action、stable_n、Clebsch 或独立检查模块，不读原证书缓存。仅以报告写明的两体本征值作为动力学输入。

#### 2. 四点相互作用究竟解释多少结构？

精确说法应当是“粒子数保持的两体有效算子”，而不是裸作用量中出现四个场就足够。后者还不能排除共振的 $1\leftrightarrow3$ 通道，也不能自动证明标量分支闭合。

在以下条件下，最基础的稳定结构很普遍：唯一零激发模式；非负、守恒的左右激发双次数；固定一体能隙处方；有效作用为两体之和；全局 lowering 使 primary 子空间不变。此时：

- 去掉零模对背景后，稳定矩阵为 $NA+B$。
- $A$ 是一阶微分算子且为导子，$B$ 至多二阶。
- 将粒子数依赖的物理 Gram 正规化，会自然产生 $N^{-1/2}$，而非先验 $N^{-1}$。

但是下列内容不由“四点”推出：Einstein 特殊斜率的 2-adic 留数；$c_2,c_3$ 恰好组成整个最低簇；其谱间隔的严格正性；cusp 商；具体 Gegenbauer 系数；实际 $(4,1)$ Jordan 质量。它们分别使用了两体本征值的特殊数值、Casimir 关系或精确最低态。最简单反例是常数两体核 $w=aI$：四点/两体形式保留，但去背景后 $A=B=0$，这些非平凡分裂当然不存在。

#### 3. 稳定算子从 occupation counting 推出，而非拟合 N

令 $a_0=1$，其他 $a_\alpha$ 为 creation 变量，$R=\sum_{\alpha\ne0}a_\alpha\partial_\alpha$。设 $F_\alpha$ 为 $0+\alpha$ 的两体输出多项式，$F_{\alpha\beta}$ 为两个激发模式的输出，$a=w_{00}^{00}$。对含 $r$ 个激发因子的单项式，未激发粒子数恰是 $N-r$。三类输入对贡献为：

\[
\frac a2(N-R)(N-R-1),\qquad
\left(\sum F_\alpha\partial_\alpha\right)(N-R),\qquad
\frac12\sum F_{\alpha\beta}\partial_\alpha\partial_\beta.
\]

中间乘法顺序不能交换。展开并去掉 $aN(N-1)/2$ 后得到

\[
A=\sum(F_\alpha-aa_\alpha)\partial_\alpha,
\]
\[
B=-AR-\frac a2R(R-1)+\frac12\sum F_{\alpha\beta}\partial_\alpha\partial_\beta.
\]

因此阶数上界是算子恒等式。换成 centered 多项式坐标不提高微分阶数；再限制到 invariant primary 子代数仍不提高阶数。这里不能把 creation 代数乘法误当作有限 $N$ 波函数的逐点乘法。

#### 4. Hermitian 半幂定理：补全奇异 Gram 这一关键接口

##### 4.1 全 occupation 空间

平均对称张量的对角 Gram 为

\[
\Gamma_s(N)=g_s/(N)_{\downarrow r_s},\qquad
 g_s=\prod_\alpha n_\alpha!h_\alpha^{n_\alpha}>0.
\]

取 $t=N^{-1/2}$ 和带符号的解析平方根

\[
U_s(t)=t^{r_s}\sqrt{g_s\prod_{j=0}^{r_s-1}(1-jt^2)^{-1}}.
\]

不能在负 $t$ 使用绝对值。经此归一化，
$H(t)=U(A+t^2B)U^{-1}$。

一个 $A$ 转移来自“零模+激发模”：若仍输出一个激发模，双次数守恒使其只能保持原模式；否则激发计数增加一。一个 $B$ 转移最多使计数改变一。两个非零激发不可能同时变成两个零激发。因此矩阵元素中出现的最小幂分别为 $t^0,t^1,t^1,t^2,t^3$，没有负幂，且 $H(0)$ 对角。

对所有充分大整数 $N$ 的物理自伴恒等式是有理函数恒等式：乘共同分母，得到在无穷多个点为零的多项式，所以它恒为零。这不是“整数点聚在实数域某点”的错误解析延拓。由此在全部足够小正实 $t$ 上 Hermitian，再由解析恒等式延伸至负 $t$。

##### 4.2 Primary 空间不能直接使用奇异原 Gram

令 $C$ 是 centered 单项式嵌入 occupation 基的常数矩阵。第 $\lambda$ 列有唯一最少因子项 $r_\lambda$，其余项因子数严格更大。于是

\[
V(t)=U(t)C\,\operatorname{diag}(t^{-r_\lambda})
\]

解析，且 $V(0)$ 各列有互异非零支撑，因此满秩。$K(t)=V(t)^*V(t)$ 在零点严格正定；局部解析 Cholesky 正交化给出 $E(t)$，再压缩 $E^*HE$。这才是 Rellich 定理需要的非奇异 Hermitian 家族。

满秩保持、正定保持都是固定有限维邻域结论。报告没有据此声称无限维共同半径。Rellich 的标准结论是在实参数附近可选择解析正交本征向量和解析本征值；所指是这个正规化框架，并非奇异原坐标中的向量分量必然正则。[Barbarino–Noferini, arXiv:2211.15539](https://arxiv.org/abs/2211.15539) 明确讨论所用实线 Rellich 定理。

##### 4.3 奇偶性为何不能直接排除半整数幂

$U(-t)=\Pi U(t)$，且 primary 列重标度也带计数奇偶性，因此压缩后
$\widehat H(-t)=\Pi_{\rm prim}\widehat H(t)\Pi_{\rm prim}$。简单首项斜率只能映回自身分支，所以该分支为偶函数。退化簇中则可交换分支，允许奇次幂。

同理，仅看见某个奇阶非零矩阵元也不能断言有半幂能量：若较早的偶阶已经消除该退化，后来的奇耦合可只产生偶阶本征值修正。这是报告对手征 $(6,0)$ 示例的正确处理。

#### 5. 实际 Jordan 例：重新由两体投影构造全质量矩阵

本审查用 $z_1-z_2$ 的幂为两体 primary，以 $L_+^{(1)}+L_+^{(2)}$ 逐次 raising，结合物理对角 Gram 构造每一个 rank-one projector。左右张量积后只保留偶 $k+l$，乘报告的两体谱，最后由 occupation counting 重建 centered 矩阵。没有导入任何原矩阵或读取其证书。

对 $(4,1)$ 得到完全相同的全质量有理矩阵

\[
A=\begin{pmatrix}s+\delta&0&0\\2\delta-v&s&0\\v&0&s\end{pmatrix},
\quad \delta=\frac{d^2(2d^3-37d^2-11d+100)}{2(2d-1)(2d+1)(2d+3)(2d+5)},
\]
\[
v=\frac{3d^2(d+1)(d+4)}{(2d-1)(2d+3)(2d+5)}>0.
\]

独立构造的完整 $B$ 同样核实了左协向量 $(-2,1,1)$、其本征值以及 invariant plane 的两维矩阵。由于三次多项式在 $d>1$ 有两个简单根，而 $v>0$，这些根上 $A-sI\ne0$、平方为零、秩一；Jordan 型确为 $(2,1)$。

二维限制上逆向矩阵元 $k>0$，故在根上

\[
\lambda_\pm=sN+\bar b\pm\sqrt{kvN+6kv/d+(b_{11}-b_{22})^2/4}.
\]

因此半幂分裂是精确代数结果，不是对近简并数值拟合。有限稳定 $N$ 仍有正定物理 Gram，绝非有限粒子数的非 Hermitian 或 Jordan 哈密顿量。

同一独立实现亦全质量核实了 $(3,1)$ 的整个 $NA+B$ 公式。在 $2d^2+d-4=0$ 处其矩阵成为标量，不应与上述非零 Jordan 障碍混淆。

这些检查仍共享已确立的两体动力学输入，不应冒充重新求解所有质量的引力径向方程。

#### 6. 2-adic 非共振证明：全指标命题确实不是有限扫描

记 $f_n={2n\choose n}/4^n$。在非物理参数 $d=1/2$ 检查有理函数的 Laurent 系数，仅为证明该有理函数非恒零，并未改变物理边界条件。

报告两体谱中只有 $\gamma_{00}$ 留下实际极点。$\gamma_{20}$ 分子有 $2d-1$ 因子；$\gamma_{11}$ 的 $C+\mu=d(2d-1)$，平方消去该极点。其他允许通道无此分母零点。两体 projectors 的权重在这里正则。

完备性给出权重和一；交换算符给出交错和在非零激发端点为零。因此 Bose-even 权重和为二分之一。又 $\alpha_{p0}(1/2)=f_p$，所以

\[
\rho_{pq}:=\lim_{d\to1/2}(2d-1)\sigma_{pq}=\frac32(2f_pf_q-1).
\]

令 $e(n)=2n-s_2(n)$、$E(p,q)=e(p)+e(q)$。由二进制阶乘计数 $v_2(f_n)=-e(n)$。当 $p+q\ge2$，$E\ge2$。将 $f_pf_q=v/2^E$ 约成奇数分子后，
$\rho=3(v-2^{E-1})/2^E$，其分子仍奇，故 $v_2(\rho)=-E$。

若 $\alpha=\sum_{i=1}^m\beta_i$，$m\ge2$、每个因子总次数至少二，则二进制进位给出

\[
E(\alpha)\ge\sum_iE(\beta_i)>\max_iE(\beta_i).
\]

所以 $\rho_\alpha$ 是差 $\rho_\alpha-\sum_i\rho_{\beta_i}$ 中唯一最低赋值项，不能抵消。这证明每个 one-generator homological divisor 是非零有理函数。

在每个固定次数，decomposable 子空间上的 $A-\sigma_\alpha$ 为对角无零的三角矩阵，于是唯一解出 unit-leading eigengenerator。每个次数只有有限项，逆变换同样三角有限，不需要假设无限维解析收敛。

例外集为可数个非零有理函数的实代数零点的并。固定 cutoff 是有限集；全次数的并未证明局部有限，可能积聚。报告附录 H 明确保留这一点。这个论证也不证明 $d=2$ 永远无共振，不证明两种 decomposable slope sum 不能恒等，更不证明 $NA+B$ 可同时对角化。

#### 7. 最低手征簇与收缩：补足谱投影为代数映射的原因

减去通过 pair k=0,2 的 affine Casimir 直线后，剩余通道 $k\ge4$ 的差 $r_k>0$。端点的 Casimir 仅三对角；两个端点在次数至少二时没有该矩阵元，因此严格推得

\[
\sigma_3=\frac32\sigma_2,\qquad
\sigma_p-\frac p2\sigma_2=2\sum_{k\ge4,\ k\text{ even}}\alpha_{pk}r_k>0\quad(p\ge4).
\]

这一步用了 Einstein 手征 pair 核仅 k=0,2 非常数的特殊形状，不是任意两体相互作用定理。

令 $K=A-(\sigma_2/2)E$。固定次数下，三角对角元为非负实数；零对角标签恰是 $c_2^{n_2}c_3^{n_3}$。这些标签本身是实际零本征向量，因为 $K$ 为导子且 $Kc_2=Kc_3=0$。因此零本征值的几何重数已达到其代数重数，零处必半单；其他正本征值可以有 Jordan 块。

所以 $q=\lim_{\tau\to\infty}e^{-\tau K}$ 在每个有限次数存在。指数是代数自同构：对每一对有限次多项式，乘积公式在同一个有限次数空间中成立。取极限可交换有限维乘法，得到 $q(fg)=q(f)q(g)$。这补足了“谱投影通常不乘法”的关键差别。不能在别的谱簇未证明相应导子正谱分离时套用。

由 $qKc_p=0$ 递推得到 $q(c_p)$，分母为严格正的单生成元 gap。它在所有 $d>1$ 有效，与泛型非共振例外集无关。

#### 8. 六个 jet 为何真的足以证明全 P

对 $S=\mathbb C[x,y]$、$x=c_2,y=c_3$，因 $q$ 为收缩且 $f\in S$，有 $qM_f=M_fq$。$B$ 的三重乘法交换子为零，所以 $qB|_S$ 的三重交换子也为零，是二阶微分算子。

一般二阶算子可唯一写作 $b_0+b_x\partial_x+b_y\partial_y+b_{xx}\partial_x^2+b_{xy}\partial_x\partial_y+b_{yy}\partial_y^2$。依次在 $1,x,y,x^2,xy,y^2$ 上作用，减去已求项，即唯一确定所有系数。这是一个确定性代数重建论证，不是六个低能量数据的经验拟合。

所得算子为

\[
B_{\rm low}=\frac{\beta_2}{2}E(E-1)+\frac\epsilon2(y^2+4x^3)\partial_y^2,
\quad E=2x\partial_x+3y\partial_y,
\]

且报告给出的 $ε(d)>0$ 在整个物理质量区间分子分母皆正。

$F_b=\sum_j f_{bj}x^{3j}y^{b-2j}$ 的递推直接由系数比较得到。分母差
$b(b-1)-(b-2j)(b-2j-1)=2j(2b-2j-1)>0$，对实际出现的 $1\le j\le\lfloor b/2\rfloor$ 从不为零。

固定加权次数 $P$ 时，$b$ 同奇偶，$b(b-1)$ 无简并；$b=0,1$ 虽值相同但不会同处一个 $P$。因此最低簇的第二算子谱简单。先做该簇 Riesz reduction，再减首项并除 $u=1/N$，零点得到简单谱，才有真正收敛的整数 $1/N$ 分支。仅“首项半单”本身不够。

这里的 Gegenbauer 参数是 $-1/2$。标准 Jacobi/Gegenbauer 正交测度在该参数不能无条件当作正常正权积分使用。报告 E§5.1、H§5 已明确只声称微分方程/多项式识别，物理内积仍由实际 Gram 提供，本审查未发现偷换正交性的错误。

#### 9. 下一有效项：明确写出 graph gauge 与 reduced inverse

将基次序排成 low/high，固定次数下

\[
K=\begin{pmatrix}0&T\\0&D\end{pmatrix},\quad D\text{ 可逆},\quad
q=\begin{pmatrix}I&-TD^{-1}\\0&0\end{pmatrix},
\]
\[
R=\begin{pmatrix}0&TD^{-2}\\0&D^{-1}\end{pmatrix}.
\]

直接相乘核实 $KR=RK=1-q$、$qR=Rq=0$。这也说明为何不能把 $R$ 错换成“高块逆、其他全零”：谱投影 $q$ 一般斜交，省略左上反馈会算错 $C_2$。

在 graph gauge $q\Omega=I$ 中，intertwining 方程最低阶给出 $\Omega=I-uRB+O(u^2)$，故

\[
H_{\rm low}=u(qB)+u^2(-qBRB)+O(u^3).
\]

令 $L=-TD^{-1}$，本审查独立计算所用显式矩阵为

\[
B_\ell=B_{\ell\ell}+LB_{h\ell},
\]
\[
C_2=-B_\ell TD^{-2}B_{h\ell}-(B_{\ell h}+LB_{hh})D^{-1}B_{h\ell}.
\]

它与完整 reduced resolvent 定义一致，未使用报告的 $r_i$ 来构造待验矩阵。

#### 10. 三阶定理、cusp 因子与全部允许项

##### 10.1 四阶主符号消失的全代数证明

对任意低多项式 $f$，$Kf=0$，所以 $R$ 和 $q$ 都与 $M_f$ 交换。取 $qBRB$ 与四个低乘法算子的嵌套交换子，只有左右 $B$ 各接受两个交换子的分配可能非零。每个双交换子是全代数中的乘法 $M_h$。所有项变成 $qM_{h_1}RM_{h_2}$。由于 $q$ 乘法，$qM_{h_1}=M_{q(h_1)}q$，再用 $qR=0$，这些项全部为零。故阶数至多三。此证明确实一般，不依赖有限样本。

##### 10.2 cusp 条件不能仅由漂亮因式分解推断

精确最低左特征泛函从 unit-excitation seed 得到。在 centered $c_p$ 中，$a_1^p$ 系数为 $(-1)^p(1-p)$，因此去掉总次数符号后，定义 $ℒ(c_p)=(1-p)t^p$。由已证明的最低态，对每个次数有

\[
\mathcal L A=(P\sigma_2/2)\mathcal L,
\qquad \mathcal L B=[\beta_2P(P-1)/2]\mathcal L.
\]

于是 $ℒK=0$、$ℒq=ℒ$、$ℒR=0$。直接推出 $ℒC_2=-\mathcal LBRB=0$。这比只援引“精确商保留”更具体。

低代数上 $x\mapsto-t^2,y\mapsto-2t^3$。其核恰为 $(y^2+4x^3)$：多项式模此关系可写为 $f(x)+yg(x)$；代入后偶次与奇次 $t$ 幂不能抵消，故 $f=g=0$。因此 $C_2(S)$ 落在 cusp 理想。

一个至多三阶多项式微分算子若所有输出落在某理想中，则所有系数在该理想内：从作用于1开始，逐一用单项式和已确定低阶系数作三角归纳即可。最后用 weighted degree 零，逐项枚举允许导数：只有

\[
(y^2+4x^3)\{r_0\partial_y^2+r_1\partial_x^3+r_2x\partial_x\partial_y^2+r_3y\partial_y^3\}.
\]

其余导数在除去权重六因子后要求负权重或权重一系数，不存在。不能由此推断任意更高阶有效算子也有同样小阶数。

#### 11. η 公式的独立对角提取

在 $x^ay^b$ 上，$C_2$ 最多把 $b$ 提高二。令 $a_{\underline3}=a(a-1)(a-2)$、$f_{b1}=2b(b-1)/(2b-3)$。先取同单项式的系数，再补入本征多项式第一低项的回流，最后减去输出 $F_{b+2}$ 的第一低项，得到

\[
b(b-1)[r_0+r_2a+r_3(b-2)]
+4r_1a_{\underline3}
+r_1f_{b1}(a+3)_{\underline3}
-r_1a_{\underline3}f_{b+2,1}.
\]

化简即报告式 $10.7$。更深低项不能回到所需对角，因为提升带宽只有二。这个推导解释了为何不必做全维 Gegenbauer similarity。$b=0,1$ 的结果严格零，与精确最低分支相合；但不要误写成整个 $C_2$ 在 $x^a$ 上为零，它一般仍有离对角输出。

#### 12. 新执行的验证与边界

##### 12.1 已完成精确新质量/新块验证

`independent_stable.py` 使用从头 rank-two chiral projectors、完整 centered occupation lift 和完整 reduced resolvent。以下各块对 $B_{\rm low}$、完整 $C_2$ 以及变换到 Gegenbauer 基后的每一个对角 $η$ 均给出零有理残差：

- $d=5/4, P=6,8,9$，primary 维数分别4、7、8。
- $d=7/3, P=10,14$，维数12、34。
- $d=5, P=12$，维数21。

这些质量不同于原文件典型的2与3/2，P=14也超出决定有限 jets 所需次数。所用完整矩阵未从目标 $r_i$ 公式构造，避免自证。

`independent_jordan.py` 全符号质量重建 $(4,1)$、$(3,1)$ 的完整矩阵，核验上述 Jordan/保护双重态公式。结果保存于相应 JSON。

##### 12.2 完成判据

全指标证明依赖已展示的阶数与理想定理，实际系数由有限 determining jets 决定。最终新增 `symbolic_jets_fast.py` 已完成三个 determining blocks 的全符号质量验证：

- $P=6$：完整两维低簇 $C_2$ 与报告有理函数恒等，确定 $r_0,r_1$。
- $P=8$：完整低簇 $C_2$ 恒等，确定 $r_2$。
- $P=9$：完整低簇 $C_2$ 恒等，确定 $r_3$。

最终残差在有理函数域 $\mathbb Q(d)$ 中严格为零，非采样质量；分别耗时约2.21、6.33、6.76秒。结果保存于 `symbolic_jet_results.json`。优化仅改用 DomainMatrix 有理函数求逆和分步消去表达式膨胀；没有导入原计算程序或其证书。结合三阶及 cusp 定理，这足以验证所给四项算子在所有次数及所有 $d>1$ 的系数，不只是几个低度例子。

早先通用表达式化简版本过慢，被中断；`symbolic_low_results.json` 仅保留其当时已完成的 $P=6$ 记录。它不是最终覆盖范围，最终以 `symbolic_jet_results.json` 为准。

本模块未审查所有非手征 protected-family 分类，也未把这些代数验证升级成原始 Einstein 量子闭合的新证明；它们分别由其他审查模块处理。


## 附录 D 精确态族与完整重数及谱隙

### 独立审查：低通道精确族、有限 N 完整重数、全塔上缘 gap 与两类否定结论

#### 结论与覆盖范围

本次把 `ADS3_Analytic_spectrum_research.md` §2–3、§8–9、附录 A 的表示与 gap 部分、B/C/H/I/J/L/N 当作待攻击对象，而非可信的“独立审查”结论。原文件与研究包没有修改。新程序没有导入原包的 pair action、Racah、projector、power-ideal 或验证代码。

**结论：这些明确限定的谱定理经本次审查成立；未发现改变其谱值或重数的反例。** 特别是：

1. 任意协变 Bose 二体核的 Q=1 universal single family，以及第四通道共面时的第二族，确有不依赖全谱对角化的证明。
2. cubic/quartic root-power common kernels 的完整表示分类成立，因而临界质量最低态的完整两梯级重数及 N=2、P=N,N+1 端点成立。
3. 固定 N 的完整 O(G) 系数谱确有报告所给最高值和精确上缘 gap。证明不是把三体 Bose 结论错误地嵌入一般 labelled 空间。
4. 手征核有指定正锥中的 Markov 表示，非手征核在自然 Dirichlet 正锥中的全质量反例成立。
5. 指定 Einstein residues 的 Kohno obstruction，包括任意 odd completion、共同 Casimir/scalar shift 的 exceptional branch，独立符号重建后成立。

这里没有重新推导 Einstein 约束消元或原始量子质量减除；二体系数是本次的物理输入。没有独立认证全部文献优先权，也没有审查其他专项审查处理的 cluster/Fredholm、stable-N 或 balanced-limit 定理。所谓“精确”始终指固定处方、Δ>1、无独立自由 graviton 占据的 scalar branch 中的 O(G) 系数，不是有限 G 的精确能量。

#### 1. 四次相互作用究竟贡献了什么

必须区分四层，而不是把所有结构归因于“quartic”。

- number-preserving 四次本阶有效作用给出 **成对和** W_N=Σ_{i<j}w_ij。它解释二体数据可以升到 N 体，但不能保证可积性、正性、有限投影支撑或谱隙。
- 单粒子 D^+_{Δ/2}⊗D^+_{Δ/2}、全局协变、Bose parity 和 pair decomposition 的 multiplicity-free 性，使 w_ij 成为 pair Casimir 的谱函数。这是 representation input，不是次数四的逻辑后果。
- universal low-support 态依赖这两层，但不依赖 Einstein 高通道值；三个任意低通道值已经足够。这确实是比 Einstein 更普适的结构。
- 临界 Δ*、正 residual、完整最低谱解释、band ordering、特殊精确 gap、非手征 Markov 反例和 Kohno obstruction，依赖 Einstein 核的实际数值。把同样协变的 quartic 核改成常数核，整个 W_N 成为 scalar；或取 γ20>γ00，ground module 就不是原来的上缘。四次本身并不迫使这些现象发生。更早的一道门槛也不能省：real scalar 的一般 quartic 算符还可含1↔3部分；固定N成对和所需的resonant closure是另一个物理/表示论输入，不能单凭“四个腿”宣布。

root-power 模块分类本身甚至不依赖 Δ（只需物理正内积和非退化表示）；把它变成完整最低 eigenspace 分类，才需要 Einstein 的正 residual。

#### 2. 有限支撑精确态：把必要逻辑链写全

来源：主文 §8.1–8.4；附录 C §2.1、§5–6；H §2–6。

令 c_k=(Δ+k)(Δ+k−1)，c_0=Δ(Δ−1)。固定 N、P、Q，global-primary 正交投影 Π 是总 raising/lowering 的有限多项式，因此与每个 pair Casimir 及其谱投影对易。这个命题并不声称不同粒子对的谱投影彼此对易。

若 seed T 对每一对只含 S 中的通道，则 ΠT 保留每一对的此项支撑约束。假定 ΠT≠0，且在 S 上

γ_kl=a+β(c_k−c_0)+η(c_l−c_0)，

则逐对 (w_ij−w^aff_ij)ΠT=0。对它求和，再用真正的 operator identity

Σ(C^L_ij−c_0)=P(NΔ+P−1)I，

右侧同理，得到

g=binom(N,2)a+βP(NΔ+P−1)+ηQ(NΔ+Q−1)。

该论证中没有把已知多体本征值倒塞回二体核。

对 T1=Av(z1w1 z2…zP)，任一 pair 左总次数≤2、右次数≤1；同时交换的 Bose 偶性只容许 00、20、11。其三个点在两个 Casimir 坐标加常数上仿射独立，唯一给出

β=(b−a)/[2(2Δ+1)]，η=(c−a)/(2Δ)−β。

于是 Q=1 能级是

g=binom(N,2)a+N(c−a)/2+(b−a)(P−1)(NΔ+P)/[2(2Δ+1)]。

T2=Av(z1²w1 z2…z_{P−1}) 只新增 31 通道。第四点共面的条件是

(2Δ+3)(a−b)−(2Δ+1)(c−e)=0。

Einstein 值代入后的唯一物理根是 Δ*=(√33−1)/4。此条件是这两个既定 functionals 在整个 stable Q=1 module 上共同给 scalar quotient 的必要充分条件，不是所有偶然简并的分类。

##### 2.1 投影公式与非零性不能省略

固定左度 P 的物理投影为

Π_P=Σ_{j=0}^P [(-1)^j U^jD^j]/[j!(NΔ+2P−j−1)_j]。

由 [D,U]=2H，交换 D 后相邻项递推 a_{j+1}=−a_j/[(j+1)(NΔ+2P−j−2)]，所以 DΠ_P=0；每项 U^jD^j 自伴且 Π 在 ker D 上恒等，故它确为正交投影。所有分母在所用 N≥2、Δ>1 范围非零。

把 seed 与显式 primary F_P=Σ_i(z_i−zbar)^P(w_i−wbar) 作物理内积。物理 monomial metric 是正对角的，且 Bose average 中每个轨道项有相同系数，所以一个非零目标系数足以证明投影非零。直接展开给出

[z1…zP w1]F_P=(-1)^P P!(P−N)/N^P，

[z1²z2…z_{P−1}w1]F_P=(-1)^P P!(N²−3N+P)/(2N^P)。

第一族在 N=P 时另有直接因式分解 T1∝(∏z_i)Σw_i，所以恰被右投影杀掉；它只在 N≥P+1 非零。第二族 P≥3 时在全部 N≥P−1 非零，因为 N²−3N+P>0（最小 N=2,P=3 时仍为1）。不能把 stable Gram 结论外推代替这段边界证明。

在双方存在的 stable 范围，对 c_{P1} 与 c_{11}c_{P−1,0} 的两个目标系数行列式为 binom(P,2)(2−P)，P≥3 时非零。由物理 Gram 的非退化性，这两个 covectors 的投影态独立。

#### 3. 完整最低态重数：独立复核最困难的桥

来源：主文 §8.5.1，附录 B/I 全文，H §8。

##### 3.1 “低 pair label”与 root derivative 的等价不是原坐标中的裸微分

先作单粒子 unitary algebraic map z^p→x^p/(Δ)_p，目标内积 ||x^p||²=p!(Δ)_p。D 变为 B=x∂²+Δ∂，U 变为 x。对固定 pair sum s=x_i+x_j 和 u=x_i/s，pair Casimir 是

−u(1−u)∂_u²+Δ(2u−1)∂_u+Δ(Δ−1)。

pair degree T 下的本征向量是 s^T J_k(u)，J_k 为确切 k 次 Jacobi 多项式。因此 k≤r 的谱支撑精确等价于 (∂_i−∂_j)^{r+1}F=0。必须先做这个带物理 Gram 的表示变换；在原 Bargmann 坐标直接施加同一微分条件不等价。

共同 root kernel K_m 被 S=Σx_i 和 B_N 保持，因为 [D_ij^m,S]=0、[D_ij^m,B_N]=m(∂i+∂j)D_ij^m。又 S†=B_N，所以在每一度

K_{m,P}=(K_{m,P}∩ker B_N) ⊕⊥ S K_{m,P−1}。

这证明 primary slice 就是除去 S 的商，且等价保持 S_N 表示。不是仅比较维数，更不是把全 Gamma L² 内积与 homogeneous Fischer 内积混为一谈。

##### 3.2 cubic/quartic 完整性：上下界恰好相等

在差分算符空间选 u_i=t_i−t_N，n=N−1。cubic 理想由 u_i³、(u_i−u_j)³ 生成。于是 u_i³=0、u_i²u_j=u_iu_j²、u_i²u_j²=0。每个正常式至多有一个平方，而且平方可移动到支撑中任一点。这里只得到了 spanning 上界 (1+t)^N−t。

反向在 S=0 上取所有 squarefree monomial。沿任何 root 方向至多二次，故确实落在 inverse system。其 restriction kernel 只有 degree-one 的 S：若 SG multiaffine，每个变量次数都满足 deg_i(SG)=deg_iG+1≤1，故 G constant。于是下界达到上界，得到全表示：P≠1 是 P-subset permutation module M_P，P=1 是 standard V。

quartic 关系为 u_i⁴=0、2u_i³u_j−3u_i²u_j²+2u_iu_j³=0。乘 u_i 和 u_j 得二维线性系统，行列式5，因此 u_i³u_j²=u_i²u_j³=0。再把双平方化成 cube×linear，可见三个平方也为零。正常式仅 squarefree、单平方、单立方三类，给出上界 (1+(N−1)t²)(1+t)^{N−1}。

反向取 E=M_P⊕R_{P−1}，即 squarefree 与至多一个平方的 monomial 空间。沿每条 root 至多三次。若 SG∈E，最高单变量次数≤2 强迫 G multiaffine；反之 S×multiaffine 确在 E。因此有真实 exact sequence

0→M_{P−1} --×S→ M_P⊕R_{P−1} → D_{3,N,P}→0。

其维数达到上界；字符减法是这个真实商的记账，不是未经证明的虚表示。由此完成所有有限 N,P 的分类。

##### 3.3 从 representation 到物理重数

右 Q=1 primary 是 V。利用 Frobenius reciprocity，V 在 subset module 的重数是 1_{1≤j≤N−1}；在 marked-j-subset module 的重数为 1_{j≥2}+1_{j≤N−1}，理由是其 stabilizer 的非空轨道块为 1,j−1,N−j，固定 standard 向量数等于非空块数减一。

故 Q=1 cubic 与 quartic 的完整 multiplicity generating polynomials 分别为

t(1−t^{N−1})/(1−t)，(t+t³)(1−t^{N−1})/(1−t)。

N=2 的 quartic 只有 P=1,3，绝无 P=2；N≥3 的 P=N,N+1 端点各1；交叠 3≤P≤N−1 各2。chiral cubic 重数是 1+t²(1−t^{N−1})/(1−t)。

##### 3.4 positivity 是“完整最低谱”的最后必要输入

Einstein affine residual 满足 β<0、r00=r20=r11=0，

r40=2Δ(Δ+4)/(2Δ−1)>0，
r31=−24Δ(2Δ²+Δ−4)/[(2Δ−1)(2Δ+1)(2Δ+5)]，
r51=2Δ(4Δ³+4Δ²+53Δ+44)/[(2Δ−1)(2Δ+1)(2Δ+3)]>0。

其余相关 k 在 plateau 上因 −β(c_{k+2}−c_k)>0 递增。Q=1 限制右 pair label≤1，所以上述列举穷尽。Δ<Δ* 时零支撑恰00/20/11，Δ=Δ*时添31。有限维正算符和的核恰是各核交：0=<v,ΣR_ijv>=Σ||R_ij^{1/2}v||²。因而之前的交空间就是完整最低 eigenspace，不只是两个构造态的下界。Δ>Δ*，r31<0，N=2,P=3,Q=1 已否定这个下界，报告恰当地保留 universal eigenstate 而撤去最低性。

#### 4. 完整上缘 gap：原论证成立，补全 Hilbert-domain 解释

来源：主文 §3，A §4，L §1–6。

Einstein band ordering g_{n0}>g_{n2}>u_n>g_{n+1,0} 对全部 Δ>1,n≥0 成立。新代码直接从二体闭式相减，对 n≥1 置 Δ=1+x,n=1+y，以及相邻 band 置 n=y；约分后分子分母的全部系数均严格正。n=0 可去奇点单独先消去，不能在 Δ=3/2 直接代原 0/0 式。

令 c=g00−g02=2Δ(2Δ²+7Δ+2)/[(2Δ−1)(2Δ+3)]。当两 chirality 均非零，最接近上缘的是 γ11，而

g00−γ11−2c=8Δ(14Δ³+9Δ²−12Δ−1)/[(2Δ−1)(2Δ+1)(2Δ+3)]>0。

所以 g00−γkl≥c(1_{k>0}+1_{l>0})，等号恰00/20/02。

定义 labelled K_N=Σ(I−P^ij_0)。在三体 primary 度 J，每个 pair-zero channel 一维，三个生成向量的归一化 Gram 对角1、非对角 r_J=(-1)^J(Δ)_J/(2Δ)_J。其非零特征值转移到 ΣP0；J=0 Gram rank1，J=1 rank2，不能把辅助零特征值算进物理空间。J≥2 时 eigenvalues 为1+2r_J、1−r_J两重，其余 physical complement 给 K3=3。|r_J|递减，故 K3²≥λ3K3，λ3=(3Δ+1)/(2Δ+1)。这在完整 labelled 空间上成立，可张量 spectators。

对 D_e=I−P0^e，逐项展开给

K_N²=Σ_{|T|=3}K_T²−(N−3)K_N+Σ_{ordered disjoint e,f}D_eD_f。

每个 D_e 在 triple 和里出现 N−2 次；每个 ordered overlapping pair 恰一次；不相交项原先没有，最后补齐。最后各项是对易正投影的乘积，故非负，得到

K_N²≥[(N−2)λ3−(N−3)]K_N=λ_NK_N，λ_N=(NΔ+1)/(2Δ+1)。

kernel 仅总 ground-primary module：pair-zero 最小 Casimir 求和固定总 Casimir，而总 lowest weight NΔ/2+P 的 Casimir 在 P≥0 严格递增。F2=Σ(z_i−zbar)² 恰满足 K_NF2=λ_NF2，故界 sharp。

从 pair 比较得 binom(N,2)g00−W_N≥c(K_N^L+K_N^R)。两 chiralities 的 K 对易，完整非 ground 部分≥cλ_N。等号强迫只有一个 chirality 激发，且每对仅0、2；Casimir 求和再强迫激发 primary 度2。故仅(2,0)、(0,2)两个 primary modules 达到 gap；在 full free level(P,Q) 的重数恰 1_{P≥2}+1_{Q≥2}，top重数1。

**补全一个应明确的 domain 细节：** 数学上若把“完整 Fock tower”理解为 Hilbert direct sum，可在固定 N 的有限(P,Q)块上取物理 self-adjoint W_{P,Q}，定义 maximal direct-sum operator，domain={ψ:Σ||W_{P,Q}ψ_{P,Q}||²<∞}。有限块向量是 core，且该 operator self-adjoint。上述上界与 gap 对所有块使用同一常数，故在闭包仍成立，不会因高激发极限填满 gap。这个结论只涉及已定义的系数算符；它不证明完整引力 Hamiltonian 的存在或高激发有限G展开一致性。

#### 5. Markov 断言：两个正锥不可互换

来源：A §2–3、N。

Laguerre map 的 unitarity 由其精确范数和完备性成立，但 unitary 并不保持 pointwise positive cone。chiral discrete Doob/Beta-binomial 表示和 continuous Dirichlet 表示必须各自证明 rate positivity，不能仅凭相同谱推断。

报告给出的 chiral kernel a0+a2q2(a)q2(b) 下界为 a0−a2(2Δ+3)/2=2Δ(Δ+1)/(2Δ−1)>0。这来自 centered square 的两个极值，T<2 时 P2=0 独立处理。row sum zero 与 detailed balance 给合法有限链；连续条件平均核同样有正下界。

全非手征自然正锥则直接失败。取 m=(2Δ+1)^−1、q(X)=X²−m、F=X²Y²≥0。它仅含物理 Bose-even 00/20/02/22。令 L=w−γ00，b22=γ00−γ22，则

(e^{tL}F)(0,0)=m²(1−2e^{−ct}+e^{−b22t})。

新代码独立约分得到其 t=0 导数

−12(10Δ³+29Δ²+8Δ−14)/[(2Δ−1)(2Δ+1)(2Δ+3)(2Δ+5)]<0。

Δ=1+x 后分子全正，Δ=2 时−88/35。由于是有限 Jacobi 多项式和，domain 没有问题；连续性把一个点的严格负值扩大为正测度开集，确实反证 L² positivity preservation。它不排除一个完全不同的非局域 unitary positive-cone 表示，也不能偷换为“不可能有任何 stochastic representation”。

#### 6. Kohno obstruction：独立符号重建关闭 exceptional shift

来源：§9.1 与 J。新 `kohno_symbolic.py` 只用 x=z1−z3,y=z2−z3 的微分 Casimir，在 J+1 维 labelled primary monomial basis 建 C12。逐 k 解 (C12−c_k)B_k=0，再把字面的置换 (x,y)→(x−y,−y)、(−x,y−x) 变到此 basis；由此直接构造 w13+w23，无原 Racah 程序参与。

scalar shift α 不影响 commutator；Casimir shift β 的 offdiagonal 在 w13+w23 中消失，因为 C13+C23 是 Ctotal+ΣCi−C12。若 β≠c/[2(2Δ+1)]，J2/J3 的(0,2)必要条件唯一固定 w1,w3。独立求解正好得到报告两个有理式；在本次 basis 中 J4 的剩余 offdiagonal 是

3Δ(Δ+2)²(Δ+3)(Δ+4)(3Δ+5)/[4(2Δ−1)(2Δ+1)(2Δ+3)²(2Δ+5)]>0。

乘非零 residue difference 即违反 braid relation。它与原文数值系数不同是 pair basis 归一化不同，不是零性或符号结论差异。

在唯一 exceptional β* 上，0/2 residues 相等，但与4的差为−2Δ(Δ+4)/(2Δ−1)≠0。因此必须重算，而不能引用刚才失效的条件。J4(0,4),(2,4)对 w1,w3 的线性系统，在本次 basis 行列式为

−3Δ(Δ+2)(Δ+3)²/[8(2Δ+1)(2Δ+3)²(2Δ+5)]≠0。

唯一解正好重现报告(8)。J5(0,4)固定 w5，也正好重现报告(9)。剩余 J5(2,4)offdiagonal 为

3Δ(Δ+1)(Δ+4)²(3Δ+8)/[2(2Δ−1)(2Δ+3)(2Δ+5)²]>0。

再乘上非零 residue difference 即得到非零 commutator。代码还逐项验证了所选 eigenbasis 的全部 normalization denominators 及其 determinant 在 Δ>1 无零点；J5 固定 w5 的系数为 (Δ+1)(Δ+3)(Δ+4)(3Δ+8)/[32(2Δ+1)(2Δ+3)(2Δ+5)(2Δ+7)]，亦非零。因此这是 all-mass 的符号证明，没有漏掉 generic-symbolic 求解可能忽略的孤立质量。另四个 rational masses 的独立 spectral-projector 构造复核同样通过。

结论仅排除文中精确定义的 globally invariant pair residues、arbitrary odd completion、共同 α/β 和非零共同 rescaling 的标准 Kohno-flat 机制。它不排除所有 Bethe ansatz、spectral parameter、nonlocal charges，不能称 general nonintegrability theorem。

#### 7. 新执行验证清单与可信度边界

所有下列新程序只依赖 SymPy/标准库，不读源包的算法或保存证书：

- `independent_checks.py`：从根方向微分矩阵求共同 kernel，并由字面变量置换算全部 S_N 元素在 kernel 上的迹。N=2,3,4，m=3,4，0≤P≤N+2 共36块；维数、standard multiplicity、cubic trivial multiplicity均通过。不是代入报告 Hilbert polynomial 后再自证。
- 同脚本另外用两体 Casimir Lagrange 插值，在三体 labelled primary 空间构造 Kohno必要条件，四质量 11/10,3/2,2,7/3 的 generic/exceptional 两分支均得非零残差。
- `kohno_symbolic.py`：另一种以微分 Casimir eigenbasis+literal permutation 为基础的全符号 Δ 重建，J2..5 的必要条件与 obstruction 全部完成。
- `projector_gap_checks.py`：21个三体 physical-Gram overlap（J=0..6、三质量）恰等于 r_J；11个 finite-N seed 投影，含 N=P 消失和 T2 的 N=P−1 端点。检验 primarity、投影幂等、正范数、两态独立、转换到 Fischer 后所有 root derivatives 的 cutoff。
- `positive_certificates.py`：从原 pair closed formula 独立生成3个 all-index/all-mass positive-polynomial certificates。临界 residual 与非手征 positive-cone obstruction 在首个脚本也独立符号化简。

结果分别保存在 `results.json`、`kohno_symbolic_results.json`、`projector_gap_results.json`、`positive_certificates.json`。有限检验不是任意 N 的证明；任意 N 的证明已在上面列出。本次没有把原报告自身叫“audit”的附录当成新的独立证据，也没有运行其旧测试后把它们计为自己的测试。

#### 8. 需要避免的错误外推，不是本稿的已发现反例

- “exact upper gap”是 correction coefficient 从最高边向下的间距，不是 free scalar mass gap。
- full-level descendants 与 fixed-primary 最低性比较不同；不能把同一个 g(P,Q) 下界套给来自其他 primary 的 descendants。
- 不同 pair 项不对易；positive residual 的 kernel-intersection 结论不需要对易，但普通 low-cutoff filtration 一般不是 Hamiltonian invariant。
- all Q 的 root-space intersection character 不自动产生 all Q eigenstates。要重新检查 affine plane 覆盖全部实际 pair channels。
- quartic root ideal 有完整答案，不代表第五幂继续是 external space×quadratic。F=(∏z_i)² 的 root-direction degree≤4、totaldegree2N>N+2(N≥3) 是有效反例。
- 符号证明、有限 exact checks 与原物理核的正确性是不同接口。本审查确认这些数学谱推论在给定核下成立，不因此替代原始 Einstein–scalar 量子闭合/处方的审查。


## 附录 E 重耦合编译器与物理接口

### Racah 编译器、Bose 压缩与物理输入接口：独立对抗审查

日期：2026-10-19。原文件只读。范围：Analytic 附录 E、G；Deep 附录 D、F 及 all_n_recoupling.py、相关验证脚本。其他附录的渐近谱定理不在本报告的独立审查范围内。

#### 结论

没有发现会改变所声明有限块 O(G) 谱的错误。任意 N 编译器不是只把一个旧程序包了一层：它确实使用有明确物理度量的 comb 坐标、局部有理 Racah 变换和逐级 Bose 投影，构造正像上的完整有限矩阵。新的独立检查通过，包括真正的零维 primary 块、非零精确核，以及未列于原验证清单的质量。

但必须保留三点：

1. **Analytic 附录 E 的首个理由措辞不精确，但同段已给出正确机制。**单独说“每个 F 都正交，因此路径无关”不充分；任取正交矩阵并不会满足 pentagon。不过原段前面已要求插入完备 coupled basis，后面立即说明两条路径是实际正交基之间的同一个变换。因此这不是缺失的路径无关定理，而是可展开的压缩证明。以下补出物理归一化、完备性与中间基消去细节。
2. **程序的完整性是给定 Einstein 两体谱之后的完整性。**它没有重新求解引力，也不把一般四次相互作用变成这套特殊谱。物理闭合需要非全局 Brown–Henneaux Ward 输入；仅 global symmetry、四次次数及标量宇称不足。
3. **运行时间与可积性均不得夸大。**无 N! 枚举不等于多项式于所有输入的高效程序；组合维数、分数位数、charpoly 和求根另有代价。原 Deep 文稿在这点上已有正确限定，不应再给它制造一个它没有声称的错误。

#### 1. 独立实现的实际 CG 基，而不只检查 Coxeter 关系

对每片叶取 Bargmann 模块，L=∂z，R=z²∂z+dz，h=d/2。单项式范数是 n!/(d)_n。二体最低态

C_m(A,B)=Σ_r (-1)^r binom(m,r) R_A^r A R_B^(m-r)B /[(2a)_r(2b)_(m-r)]

被 L_A+L_B 湮灭。将相邻 r 项配对即可直接验证：下降的 r(2a+r−1) 与 r!(2a)_r 约去后，两项符号相反。其范数由后裔能级正交及有限 Vandermonde 和得到

η(m;a,b)=m!(2a+2b+m−1)_m/[(2a)_m(2b)_m]。

迭代耦合时，内部子树已经是正离散模块的最低态，故同一公式逐层适用。不同 comb 标签在某个最早分叉的 cluster Casimir 上特征值不同；对 a,b>0，相关 k(k+2a+2b−1) 在非负整数 k 上无简并。故标签态正交。总计 binom(P+N−2,N−2) 个标签，也等于 N 叶张量积在度 P 的维数减去总 raising 的像维数。raising 单射由正离散模块正性给出。这证明完备性，而非仅有一组相互正交的向量。

本次 independent_comb.py 从这个微分实现重新生成所有多变量多项式，不调用原 CG/recoupling 波函数实现。随后直接交换变量，与编译器的 raw comb 交换列比较。下列所有系数精确相等，且每组全部 Gram 元素与物理对角度量相等：

| N,P,Δ | comb 基维数 | 直接变量交换检查数 |
|---|---:|---:|
| 3,7,11/10 | 8 | 16 |
| 4,5,8/5 | 21 | 63 |
| 5,3,13/7 | 20 | 80 |
| 6,2,17/6 | 15 | 75 |
| 7,2,1001/1000 | 21 | 126 |

合计 360 次。包含接近 Δ=1 的质量，但没有越过明确排除的 Δ≤1 边界。这比仅检查抽象群关系更强：一个错误的、与真实张量积不等价的群表示也可能满足群关系，本检查直接锚定真实变量交换。

##### 1.1 局部矩阵的相位与规范如何被固定

对三子树权重 a,b,b，在各子树最低态产生的抽象三变量模型中，可直接写出

F_k(x,y,z)=(y−x)^k Σ_{s=0}^{M−k} [(-1)^s binom(M−k,s)/(2a+2b+2k)_s] z^(M−k−s)
× Σ_{t=0}^s binom(s,t)(2a+k)_t(2b+k)_(s−t)x^t y^(s−t)。

这是递归 CG 定义的展开，不是对 Racah 矩阵猜测出的归一化。证明只需注意

(R_x+R_y)[(y−x)^k f]=(y−x)^k [x²∂x+y²∂y+(2a+k)x+(2b+k)y]f。

用单项式对角范数即可有限求和得到实际交换矩阵

T_kr = <F_k(x,y,z),F_r(x,z,y)> / <F_k,F_k>。

它同时固定 row/column 方向及相位。对比原 (3.5) 时必须保留其 t_r/t_k，不能只凭 orthonormal 6j 表抄一个平方根权重。原公式满足 t_k²=ω_k g_k/g_0，因而从正交规范换回 raw 规范的方向正确。局部表的 Racah 三项递推可由对上述多项式作用相邻中间 Casimir，并在 k 基展开得到；非零副对角项及端点归一化唯一决定整张表。原稿所使用的标准 terminating Racah 连接关系正是这一有限张量积计算，不能把“正交”单独当作其证明。

这里提供明确可执行的有限和定义，所有阶段都有限；这避免把复杂相位和 Gram 因子隐含在未声明的‘标准 6j convention’里。360 次系数检查验证了该定义与实际实现的一致性；它们不是对无限多个参数的穷举证明。

##### 1.2 展开路径无关论证，并澄清一句措辞

原段完整相关上下文是：“Insert the intermediate complete coupled basis after every move. The resulting finite sum of products is a higher 3nj coefficient. Orthogonality of each F matrix proves independence from the chosen move path; the pentagon and permutation identities follow because both paths are the same change of an actual orthonormal basis.” 因此不能截取首个分句，就把作者归为只凭正交性主张 pentagon；正确机制实际上已在同段中。下面是把该机制落实到等式的补充。

令 E_T 是树 T 的完整物理正交基列，映到同一 labelled primary 空间。实际过渡矩阵为 F_(T,T')=E_T* E_T'。于是

F_(T0,T1) F_(T1,T2)=E_T0* (E_T1 E_T1*) E_T2=E_T0* E_T2。

中间括号在整个 primary 空间上是恒等算子，这是**完备性**发挥作用的地方。任意路径都因此给出端点过渡，闭路为恒等。对不同叶序，插入实际变量置换 U_π，其乘法法则同样保证 braid/Coxeter 关系。换到非正交 raw 坐标仅共轭变换度量，不改变论证。

#### 2. Bose 投影为什么没有漏掉右手征混合或 spectator 表示

Pi_m=(1/m)Σ_i U_(i,m) Pi_(m−1) 的证明是 S_m 的左陪集分解。不能把单独的平均 T_m=(1/m)Σ_i U_(i,m) 当成整个空间上的投影；它一般不是。但递归乘积严格等于群平均，故最终 Pi_N 自伴、幂等。

每次 U 同时交换左右标签，正是对角 S_N；不是分别做左、右 Bose 化。后者会丢掉来自非平凡且相同置换表示的 invariant contractions。

对 pair 12 固定，D12 与 spectator S_(N−2) 作用对易。若 ψ 完全 Bose，则 D12ψ 自动 spectator invariant；并且在 pair 的交换下是偶的。因此，构造‘pair 偶通道 × spectator Bose’框架没有遗漏非对称 spectator 通道对物理 ψ 的贡献，因为这些贡献严格为零，而不是被忽略。

对每个被选定的 pair (k,l)，comb 的剩余度数遍历所有 N−2 个相对标签，故其 raw 范围完整。H 是 spectator 群平均后，f_i=H e_i 张成所需像。G_ij=<e_i,H e_j>=g_i(H e_j)_i 成立靠的是 H*=H=H²；这正是 coordinate extraction 的充分理由。

#### 3. 正像压缩的完全证明及矩阵方向

记 F 的列为独立 f_i，G=F*F>0；D=diag(a_kl)>0。D 在每个固定 pair 标签块上标量，H 不改变 pair 标签，故 [D,G]=0。

取 B=Pi_N F。物理 Bose 空间中的 pair residual 满足

A = c_N B D G^(-1) B*, c_N=binom(N,2)。

注意 Pi_N F=Pi_N e_i，因此程序可以投影 raw seed，而无需先再次展开 spectator 波函数。因 D G^(-1) 正定，

<ψ,Aψ>=c_N ||D^(1/2)G^(-1/2) B*ψ||²，

故 ker A=ker B*，im A=im B，且 image restriction 严格正。不存在‘某个辅助零特征值其实是漏掉的物理正态’的歧义。

T=c_N B*B≥0。选择最大非奇异 principal block T_II 后，B_I 是独立基。由 B=B_I C 及左乘 B_I* 得

C=T_II^(-1)T_(I,:)。

A B_I = B_I [C D G^(-1)T_(:,I)]。

这正是程序的矩阵，不应反转 G^(-1) 和 T。物理 Gram 是 T_II/c_N；直接代入即得到 T_II M=M^T T_II。PSD LDL 的零 Schur pivot 可被跳过，因为 PSD 剩余块若对角元素为零，则对应整行列为零（Cauchy–Schwarz）。任意非 PSD 矩阵没有这一性质。

Molien primary 维数由对角置换 character 得到两个 (1−t),(1−u) 因子；它们表示剥去两个 global raising descendant，不是作数值差分近似。减去 rank B 的剩余维数就是 baseline multiplicity。

#### 4. 第二套完整有限块测试：不走 bad-frame/Gram 压缩

independent_full_bose.py 在**全 labelled comb 空间**解所有 (U_s−I) 的共同核，得到完整 Bose basis U。随后直接用

H=c_N (U^T g U)^(-1) U^T g D12 U

求整个 residual Hamiltonian。它不用 raw bad-frame、spectator LDL、正像选择或 Molien 公式来决定物理空间。局部 permutation 仍使用已在 §1 独立锚定的 Racah 表，因此本项是对 projection/compression 链的独立测试，不假称完全独立重写了局部 Racah。

| N,P,Q,Δ | labelled 维数 | Bose primary 维数 | 正 rank | baseline 核 |
|---|---:|---:|---:|---:|
| 3,13,1,11/10 | 28 | 5 | 4 | 1 |
| 4,4,2,8/5 | 90 | 6 | 6 | 0 |
| 5,3,1,13/7 | 80 | 2 | 2 | 0 |
| 6,2,1,17/6 | 75 | 1 | 1 | 0 |
| 7,0,0,1001/1000 | 1 | 1 | 1 | 0 |
| 5,1,0,9/4 | 4 | 0 | 0 | 0 |
| 3,0,0,2 | 1 | 1 | 1 | 0 |
| 3,2,2,5/4 | 9 | 2 | 2 | 0 |

八个完整特征多项式在补回 baseline 零因子后全部精确相等。特别是零维块输出常数特征多项式 1，没有 inv(0) 或错误的负重数问题。Δ=1、Δ<1、N<3、P<Q、Q<0 的五类非法入口均被 ValueError 拒绝。CLI 的整数量输入由 argparse 约束；这里没有声称 Python 内部 helper 对任意错误类型都提供友好诊断。

#### 5. 复杂度核查

逐 m 的 transposition word 长度和是 Σ_(i=1)^(m−1)(2(m−i)−1)=(m−1)²，累加得到 O(N³)。两 chirality 分步作用使每列成本 O((P+Q+2)D)，避免错误地乘成 (P+1)(Q+1)D。

在固定 N,Q 下，D=O(P^(N−2))，raw/frame/image ranks 至多 O(P^(N−3))，所以投影 O(P^(2N−4))，dense frame algebra O(P^(3N−9))，原文指数一致。缓存的 local Racah 表和 chiral swap 列在 N≥4 不超过所给 O(P^(2N−5)) arithmetic-entry 空间；N=3 外层完整 Racah 表的 O(P²) 特例已明示。

这没有包含分子分母位数，也没有包含最终 exact charpoly 的实现复杂度。有限维 charpoly 存在不等于有统一闭式根，也不是证明可积。原 benchmark 显示新 backend 在若干小块更慢，文稿没有把这些测量包装成全面加速。‘没有 monomial wavefunction’是实现描述，不是复杂度下界。

#### 6. 新的物理闭合段落是否偷换前提

Deep F 明确区分五步，顺序正确：

1. 完整 cubic normal form 后，用 leading-linear **非全局** Brown–Henneaux charge 的投影 Ward 等式消去 tree quartic 对自由 graviton oscillator 的依赖。
2. 用 global scalar Ward 将 31 部分解释成单标量不可约 module 到三标量 module 的 intertwiner。最低能 Δ<3Δ，故它杀死最低态；两 raising 生成全部源 module，故整项为零。
3. scalar parity 与正频率排除 quantum degree-two 的 mixed/双产生项；纯 graviton number 项在 vacuum 上只剩已减去常数。因此零自由 graviton 分支及 scalar-number sector 的结构闭合并不要求先算出每个 scalar quadratic 系数。
4. 但**纯两体数值谱**需要原共同 regulator 下的一体项确实是已减去的共同质量修正。经典 Ward 不能替代该计算。
5. 最终 pair kernel 是原 minimal Einstein 模型的物理输入，不是所有 quartic theory 的普遍公式。

投影恒等式 R_s[W,Q]=[R_0W,Q] 仅用 [H0,Q]=sQ；对 weight 分解逐项证明即可。它不是要求能量 cutoff 自身保持 raising invariance，也不建立无限 Fock 空间上的强酉收敛 dressing。

Analytic G 给出的 Δ=2 双标量↔左右双 graviton 共振 intertwiner 反例确实遵守 global symmetry、宇称、四次次数与能量，但破坏 non-global Ward。其作用是在提醒哪条假设不可删，不是推翻 Einstein 结果。相同地，多物种或六次项可以提供原 Hom(H1,Sym³H1)=0 不涵盖的跃迁。

本轮没有重跑母稿所有 loop determinant/finite subtraction 计算，因此它们仍是此前审查过的继承输入，不宣称在这里再次独立证明。也没有把有限 coefficientwise 证明提升为无限 Fock 算子的自伴性、全 G 理论或统一高能展开。

##### 6.1 新质量的原始径向检验

复制 raw_nonchiral_resonance.py 到新审查目录，使用未列于交付清单的 Δ=4、角动量2。入态 (n,j)=(6,0)，出态 (0,0),(0,2),(0,−2)。它重新构造六个 signed-leg 配对，求 scalar/momentum 约束，逐个核实 ODE residual、无穷远边界条件及积分原函数。

结果：contact/G=320/4572711，virtual boundary/G=−320/4572711，总和严格为0。约40.3秒。

这次是**对原程序的新参数复算**，不是另写一个独立径向求解器；原程序本身不导入既有 pair spectrum 或 raw solver。它增加实际非零质量、非零虚边界交换的证据，却不能替代全指标 Ward 证明。若遗漏 virtual boundary，这个新例子直接给出非零伪 mixing。

#### 7. 四点相互作用究竟负责哪些结构

以本次审查涉及的对象而言：

- 四次次数加已证明的 number preservation，把算符降成两体 pair sum；这解释为什么 N-body Hamiltonian 由两体数据决定。
- AdS global symmetry 给出 CG、Racah、primary/descendant decomposition；不是四次次数本身。
- Bose statistics 给出对角 S_N、fractional parentage 与 Molien 计数。
- 特定 Einstein pair residual 的正性和有限 bad channels 允许正像压缩及特定精确核。
- ‘Vandermonde 四次方’中的四，来自 Einstein pair 禁止的低通道0和2，而不是直接因为 interaction 是四次。一个同样 number-preserving、global invariant 的正两体算符 ΣP_(k=0) 在手征 sector 给 V² 核；Σ(P0+P2) 才给 V⁴。常数 pair operator 的全谱更是完全退化。这些都是 quartic second-quantized operator，却没有同一谱结构。

因此编译器是高度普遍的 pair-representation 基础设施与高度特殊的 Einstein pair potential 的组合。不能把其正确性解释成‘四点就自动这么神奇’，也不能把所有多体代数都宣称是引力独有。

#### 8. 文件与证据界限

- independent_comb.py / independent_comb_results.json：独立生成物理 CG 多项式、真实变量交换及完整 Gram。
- independent_full_bose.py / independent_full_bose_results.json：完整 labelled invariant-space 压缩与八个精确特征多项式。
- raw_nonchiral_resonance_copy.py / raw_delta4.json / raw_delta4.log：新质量的 shipped 径向算法复算，清楚区别于独立代码。

交付 verification JSON 仅把 packaged smoke 说成 smoke；未声称 standard/full 在最后打包阶段整套重跑。不能把汇总中所有 module certificate 当成此次独立重新运行。本报告只认上述实际执行与上面完整列出的代数推导。


## 附录 F 四点性与动力学边界

### 四腿结构与具体动力学的分界

本节独立核对讨论中的普遍性判断，不把任意抽象二体核误认成一个已经构造出的局域拉格朗日量。

#### 1 有效四腿不等于原始作用量只有四点顶角

本轮谱问题的输入是指定正规形、量子减除与质量处方下的 number-preserving quartic。对标准 bosonic Fock space，它的 N 粒子限制为 W_N=Σ_{i<j}w_ij。这个二体 lift 不产生独立的同阶三体 connected kernel。原 Einstein–scalar 作用量含三次及更高顶角；树级三次交换本身也贡献这个有效四腿核。

实标量的四腿次数本身不排除 b†³b。其共振部分消失要另用 global intertwiner：单粒子最低能量 Δ 小于三粒子最低能量 3Δ，且源最低权模由升算符生成。独立自由引力振子的闭合另依赖非 global Brown–Henneaux Ward identity。量子二次项和 physical-gap subtraction 仍是独立物理输入。

#### 2 一个同样四腿且 global 协变但没有块内分裂的反例

令每个单粒子手征 lowest weight 为 h=Δ/2。对任一手征有精确生成元恒等式

Σ_{i<j} C_ij = C_tot + (N−2) Σ_i C_i。

在 total primary degree P 上减去 pair-ground 数值，得到

Σ_{i<j}[C_ij−Δ(Δ−1)] = P(NΔ+P−1)。

因此取任意实数 a,b,c，并令

w_ij=a+b[C^L_ij−Δ(Δ−1)]+c[C^R_ij−Δ(Δ−1)]，

所得 W_N 在每个 (N,P,Q) primary 块上恰等于

binom(N,2)a+bP(NΔ+P−1)+cQ(NΔ+Q−1)

乘恒等算符。它是合法的抽象 Bose 二体有效算符，也有相同 global covariance，却没有块内非平凡分裂。这已反证“四腿加 global 对称性强迫本报告全部特殊谱结构”的命题。这里没有主张这种任意核一定来自用户指定的局域微分作用量。

#### 3 Vandermonde 的四次方不是顶角腿数

在 Q=0 Bose 多项式表示中，Einstein pair 核剥去 plateau 后为 a₀P₀+a₂P₂，两个系数严格正。共同核须同时避开相对偶通道 0、2。利用物理 pair-Casimir 过滤与碰撞理想的已证对应，每对至少有四阶零点；在多项式环中，不同 z_i−z_j 为非伴随不可约因子，故共同核含有并且按该对应具有 Vandermonde⁴ 因子。

若另一正二体核只含 P₀，相同机制的最低允许 Bose 相对通道为 2，得到 Vandermonde²。若所有允许通道都有严格正权重，则不再有这样的共同零空间。因此逐对条件来自二体性，指数来自被排除通道及 Bose parity，而不是四条腿的字面数字。非手征完整核还需右物理 Gram 和 logarithmic flag；不能只靠此手征直觉证明全部重数。

#### 4 三种极限不能互换

- 固定 N、Q、Δ，P→∞：bad-pair 标签有限，重叠在归一化 Hilbert–Schmidt 尺度变小，得到有限原子经验谱；四体进一步有细 cluster/Fredholm 极限。
- 固定 N、Δ，P,Q→∞ 且 Q/P→r>0：bad-pair 标签增长，前一小重叠证明失效；新的 Grassmannian 主符号描述 P² 缩放后的完整经验谱。
- 固定 P、Q、Δ，N→∞：稳定 primary 维数固定，occupation counting 与退化物理 Gram 给出 affine pencil 和半整数参数下的 Hermitian 解析结构。

后者的收敛半径和系数可依赖 P,Q，不能由“每个固定块有收敛展开”推出 N 与 P 同阶时的统一准确性。Grassmann 零原子包含严格正但 o(P²) 的谱，不是新的精确 kernel。全塔 top correction 的 gap 位于另一个谱边缘，不可与低 Casimir residual 的软谱混称。

所有极限首先研究 O(G) 系数。即使某个系数定理完全严格，也不自行控制固定非零 G 下的微扰余项。高阶有效理论还可出现三体及更高体 connected 项，不能只因最低阶四腿而将本结构全阶外推。

#### 5 共享物理输入的证据边界

Racah 编译器与 differential-Casimir 后端的独立实现若共享 γ_kl，精确 charpoly 相同检验的是 representation lift、Bose 投影和实现，而不是再次从 Einstein action 推出 γ_kl。新的 raw-constraint 检验重新解了指定外腿的约束及交换积分，具有不同意义，但有限外腿也不能替代全指标 Ward theorem。

本轮对原报告自带“independent audit”逐一读取并攻击，不因它自称独立而提高可信等级。下面各专项审查分别给出重推、补证、有限测试与尚未重新证明的输入；不得把所有通过项目相加后称作同等独立的物理证据。
