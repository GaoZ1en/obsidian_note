# Standalone observable-algebra sewing 的对称性、Ward 数据与二元相容性

## 0. 结论和范围

**适合本构造的基本 symmetry notion 不是裸代数的全部 automorphisms，而是能够作用于局域场标签、完整变分问题及其 sourced boundary relations 的可逆协变变换；它的无穷小版本是带完整边界项的局域 Ward 变换。** 在一个指定 closed theory 上，真正的 symmetry 是保持该 theory 的背景、物理边界实现和耦合的 stabilizer。只保持 equation locus 的双射，或由任意非局域 canonical transformation 产生的代数自同构，不据此成为物理 symmetry。

这一选择并不要求所有有用对称都属于同一个有限维群。本文另外保留两类有实际内容的结构：自由场的 **solution-shift module**，因为它有离壳 quasi-symmetry identity、完整边界流和 Heisenberg 中心项；以及 **可逆 symmetry interfaces**，因为它们有明确 fusion law、self-sewing 和 cycle-holonomy obstruction。局域高阶微分 Ward 变换也可保留为无穷小层，不能据此声称其有限流仍局域。

本文的主要新结论为：

> 对正 ultrastatic 自由标量／实标量 multiplet、有限个光滑 timelike seams，在既有 standalone reconstruction 的 PDE 与 microlocal 适用域内，**相容的局域 affine Ward covariances 在 selected opening 后下降为 sewn symmetry；反过来，保持该切割、并可局域限制的 sewn symmetry 限制为这些 opened covariances，而不必限制为原 closed regional symmetries。** 该下降与 closed intermediate 的重新 opening 相容，因此真正的二元 associator 对这些 symmetry arrows 自然。自由 Peierls/Wick 代数、允许的复合场和明确构造的 charges 一并重建。

最重要的关系是

$$
\boxed{
\text{compatible symmetries of the temporarily opened relations}
\ \longleftrightarrow\
\text{cut-preserving, locally extendible sewn symmetries},
}
\tag{0.1}
$$

而不是无条件的

$$
\operatorname{Sym}(\mathfrak T_{B_1})\times
\operatorname{Sym}(\mathfrak T_{B_2})
\simeq\operatorname{Sym}(\mathfrak T_\#).
$$

所有 opened objects 都只是一次 operation 的中间物。完成 sewing 后仍只输出完整 closed theory；本文没有为了 symmetry 而把 open ports 永久塞回 composition object。

**证明等级。** §§3–6、8、10–11 的自由结果使用上一版 [N1] 的正 ultrastatic D/N/Robin sourced reconstruction；主有限变换取局域 affine 场变换和时间定向保持的几何同构。包含真实物理边界 traces 的量子结论继承 [N1, §9] 的 boundary microlocal condition Q，在 interval／平直可分离模型中有直接实现；任意弯曲边界不是本次新证明的内容。§12 的相互作用结论是共同、对称相容的 renormalization prescription 下的形式定理。§13 给出可延续到 gauge theory 的定义接口，不声称已经证明 gauge sewing、BRST/BFV reduction 或无 anomaly。

## 1. 不改变 observable class，也不遗忘 closed dynamical problem

沿用 [N1] 的对象

$$
\mathfrak T_B(R)=
(R,\mathcal C_R,S_{\rm bulk},S_\partial,B,\text{field/trace labels};
\mathfrak A_B(R),\mathcal R_B).
\tag{1.1}
$$

所有实际 timelike physical boundaries 都处于自己的 homogeneous realization。保留 action、realization 和 labels 不是保留 open histories；它们说明这究竟是哪一个 Peierls theory。Dirichlet on-shell algebra 中已有 $[q]=0$，仅由这个抽象商代数不能重建 opening 后的非零 $q$。因此下文的 $\boxtimes$ 始终作用于 (1.1)，而非忘掉动力学标记后的裸代数。

取

$$
L=\partial_t^2+K,\qquad S_0''=-L,\qquad
E=G^A-G^R,\qquad W-W^T=iE,
\tag{1.2}
$$
$$
q=\gamma\phi,\qquad \Pi=-\partial_n\phi.
\tag{1.3}
$$

取 $\Sigma$ 紧致、$K\ge m^2>0$，边界及 sewing collars 如 [N1]。实 multiplet 的 fiber metric 正定；$J$ 包括几何 pullback、bundle map 和所需 density pairing。主要具体例子中 $J$ 为常正交矩阵。一般几何情形的星号是实际 trace-dual adjoint，不是随意的矩阵转置。

Observable class 仍是固定分布系数、有限场次数的 polynomial core：

$$
F(\phi)=\sum_{k=0}^N\frac1{k!}\langle f_k,\phi^{\otimes k}\rangle,
\quad f_k\in\mathcal E'(R^k)_{\rm sym},
\quad
\operatorname{WF}(f_k)\cap(\overline V_+^{\,k}\cup\overline V_-^{\,k})=\varnothing.
\tag{1.4}
$$

带边界时，(1.4) 在 [N1] 的允许 collar/trace coefficient space 中解释。经典点乘、Peierls bracket 和有限 Wick contractions 为

$$
\{F,G\}_E=\langle F^{(1)},EG^{(1)}\rangle,
\qquad
F\star_WG=\sum_{r\ge0}\frac{\hbar^r}{r!}
\langle F^{(r)},W^{\otimes r}G^{(r)}\rangle.
\tag{1.5}
$$

取适当 equation ideal 后得到 on-shell algebra。本文只使用上一版已证明的 closure、quotient、collar-label assembly。一般 microcausal functional 的闭合问题与 polynomial/equicausal sector 的区别见 [1]；旧 $\mathcal H_\beta$ 的 graph topology 不自动成为 (1.4) 的 topology。

为固定群作用的符号，若场变换为 $\Phi_g:\mathcal C_R\to\mathcal C_{R'}$，定义 observable 的正向输运

$$
\alpha_gF=F\circ\Phi_g^{-1}.
\tag{1.6}
$$

同一 theory 上，$\alpha_g\alpha_h=\alpha_{gh}$。若 $X_\xi$ 是场变换的无穷小生成元，且存在 charge，则采用

$$
\{F,Q_\xi\}=DF[X_\xi],\qquad
\delta_\xi F:=\left.\frac d{d\epsilon}\right|_0\alpha_{e^{\epsilon\xi}}F
=\{Q_\xi,F\}=-DF[X_\xi].
\tag{1.7}
$$

不把 pullback 与正向输运的符号混用。

## 2. 选择 symmetry notion：局域 Ward covariance，而非所有 canonical maps

### 2.1 有限层：带变分信息的局域可逆协变变换

一个可接受的有限变换包括以下数据和检验。

首先，有实际可逆的局域场变换、时空/bundle map，及其对背景耦合、物理边界 realization、field/source pairings 的作用。主定理用

$$
\Phi_g(\phi)=T_g\phi+s_g,
\tag{2.1}
$$

其中 $T_g$ 是几何 pullback 与局域 bundle map 的组合，$s_g$ 是指定的 smooth field。变换及其逆保持允许的 support、wavefront、trace/collar labels。非线性 field redefinition 必须另证它保持当前函数类，不能由“局域”二字自动获得。

其次，检验的是 **off-shell variational identity**。在 bulk，作用量变化须为局域 divergence，或目标 theory 与源/耦合的指定协变输运；在 boundary，所有 genuine action terms、quasi-symmetry improvements 和 source work terms 必须保留。不能先在 $L\phi=0$ 上把一个非零变分丢掉，再称为 symmetry。

最后，该 identity 应能在任意允许的局域 bulk probes、boundary-source probes 下使用。Sources 可以运输；在某个固定 source chart 中也可以与 responses 混合，见 §3。这里要求的是完整几何变分关系的 covariance，而不是强制每个临时 $b$-fiber 都单独不变。

若变换保持所有背景、boundary realization、耦合与实际 existence domain，才是一个固定 closed object 的 symmetry。若它把 $B$ 送到 $B'$、把 $J$ 送到 $J'$、或把切割送到另一切割，它是两份完整问题之间的 covariance。两者都是有用的 morphisms，但不能混称同一代数的 automorphism。

这形成一个局域变分问题的 groupoid；固定对象的 isotropy group 才是其 symmetry group。它比裸 $\operatorname{Aut}(\mathfrak A)$ 保留更多物理输入，却不预设 CPS。局域协变 QFT 中以 theory-level natural automorphisms 而非单一抽象代数自同构识别内对称，是相关的先例 [2]；带外源 affine theory 的研究也确实发现过“过多自同构”和 composition 不相容的问题 [3]。本文不把这些文献中的 functor 或 subsystem operation 与当前 sharp-boundary sewing 等同。

### 2.2 无穷小层：局域 Ward 变换不必已有有限流

用局域 evolutionary rule $X_\epsilon[\phi]$ 表示场变分。若

$$
\delta_\epsilon\mathcal L
=\mathcal E\cdot X_\epsilon+d\theta_\epsilon
=dk_\epsilon,
\qquad
j_\epsilon:=\theta_\epsilon-k_\epsilon,
\tag{2.2}
$$

则

$$
dj_\epsilon=-\mathcal E\cdot X_\epsilon.
\tag{2.3}
$$

边界 action 的对应 identities 与 currents 同时进入定义。只有确认相应 $\delta_\epsilon$ 保持选定 algebra，才称为该 algebra 上的 Ward derivation。局域线性微分算子作用于 (1.4) 时，其 transpose 仅对 coefficient distributions 作有限微分，给出直接的 admissibility 检验。

不要求每个局域 Ward vector field 都积分成局域有限 transformation。§9 给出一个非空且有价值的区别：$\delta\phi=\partial_x^3\phi$ 在自由圆模型中有局域 current 和 observable generator，但其有限 Airy flow 不是点局域传播。将二者硬合并会错误地排除有用的局域守恒流，或错误地纳入非局域有限“内对称”。

对场依赖参数，可用实际 field-space commutator 定义参数 bracket（若只模方程闭合，需保留相应 homotopy 信息）。这是未来进入 gauge/BV 的接口，而不是现在假设一个 field-independent Lie group 已够用。

### 2.3 哪些保留，哪些不升级为物理 symmetry

| 候选 notion | 本文处理 | 理由／验收内容 |
|---|---|---|
| 保持完整变分问题的 spacetime/internal symmetry | 核心有限层 | 可导出 causal/source covariance、descent 和 charges |
| 自由 homogeneous solution shifts | 单独的 model-dependent affine module | 离壳 identity、完整流、Heisenberg cocycle 与 sewing 均可计算 |
| 局域高阶微分 variational symmetry | 适当保留于 infinitesimal Ward 层 | 有局域 current/derivation；不虚构局域有限流 |
| 可逆内对称 interface | 保留的 generalized-symmetry sector | 有 fusion、inverse、holonomy 和 self-sewing theorem |
| 任意 algebra automorphism / canonical transformation | 只当作 ambient algebraic kinematics | 未必保持 action、local probes 或可 opening 的 traces |
| 单纯 equation-locus 双射 | 不足以认定 symmetry | 不保证 Peierls bracket、boundary Ward identity 或 locality |
| 任意 noninvertible / higher-form 扩张 | 本轮不引入 | 当前没有相应 extended observables、junction data 或实际 composition theorem |

这里没有把“对所有背景自然”当作一切 symmetry 的必需条件。那样会把固定模型上的 solution shifts、Killing symmetries 和部分高阶流先验删掉。Universal internal symmetry 与 model-dependent dynamical symmetry 应分别标注。

三个最小反例说明需要这些区分。$\phi\mapsto2\phi$ 把自由解送到自由解，却将线性场括号乘以 4；它不是固定 theory 的 Poisson symmetry。单个 oscillator 的 $(q,p)\mapsto(2q,p/2)$ 保持 Poisson bracket，却不保持 $(p^2+\omega^2q^2)/2$。即使某些逐模相位变换还保持自由 Hamiltonian，它们一般是非局域 kernel，不能把它们未经验证地当作保持局域 source probes 的 spacetime/internal symmetry。

## 3. Opening 后的 symmetry 必须允许 source–response 混合

### 3.1 完整 trace relation 是基本对象

对本次选中的 faces，暂时移除其 closing constraints／指定 boundary action terms，得到 opened variational relation。为计算它，用原来的 $B$ 选坐标

$$
u=G_B^\epsilon f+H_B^\epsilon b,
\qquad r=\rho_B^\epsilon f+D_B^\epsilon b,
\qquad\epsilon=R,A.
\tag{3.1}
$$

D、N、Robin 分别取

$$
(b,r)=(q,\Pi),\qquad(\Pi,-q),\qquad(\Pi-\sigma q,-q).
\tag{3.2}
$$

物理 opening 删除的是 selected closing action/domain；(3.2) 只是完整 $(q,\Pi)$ 的参数化。保持外部所有真实 $B_{\rm ext}$，不把它们也偷偷释放。

一个 symmetry 可能不保持原来的 source-zero subspace，却保持已经 opening 的几何 relation。因此，要求它满足简单的 $b'=Vb$ 会遗漏需要的 sewn symmetries。应允许

$$
\binom{b'}{r'}=
\begin{pmatrix}A&C\\D&F\end{pmatrix}
\binom b r+
\binom{b_0}{r_0}.
\tag{3.3}
$$

这些 blocks 须来自允许的几何/变分变换或 boundary chart change；不能由任意矩阵凭空制造物理 symmetry。含 affine shift 时，用 (3.3) 的常项运输背景，以其线性部分运输 variation/quartet。

### 命题 3.1：quartet 的完整 fractional-linear covariance

暂取 (3.3) 常项为零，$u'=Tu$、$f'=T^{-*}f$。设

$$
M=A+CD_B
\tag{3.4}
$$

在实际 causal history domain 上可逆。则目标 chart 的 quartet 为

$$
\begin{aligned}
D'_B&=(D+FD_B)M^{-1},\\
H'_B&=T H_B M^{-1},\\
\rho'_B&=(F-D'_BC)\rho_B T^*,\\
G'_B&=T\bigl(G_B-H_BM^{-1}C\rho_B\bigr)T^*.
\end{aligned}
\tag{3.5}
$$

这里 $D$ 为 (3.3) 的 block，$D_B$ 为 response operator；两者不同。为简洁省略每项相同的 retarded/advanced 上标。

**证明。** 由 (3.1)、(3.3)，
$b'=Mb+C\rho_B T^*f'$，故
$b=M^{-1}b'-M^{-1}C\rho_B T^*f'$。分别代回 $u'$ 与 $r'$，逐个读取 $f',b'$ 系数即得 (3.5)。它是 response relation 的恒等式，不预设 global propagator。inverse 只在规定域使用；若一个 chart 不覆盖某些源，退回完整几何 relation，不做任意实频除法。证毕。

(3.5) 不表示两个不同 closed realizations 的原代数等价。不同 $G_B$ 的出现正说明 homogeneous auxiliary problem 已改变。物理 independence 只发生在两者最终都完整移除同一 closing wall、实施同一个 geometric sewing 后。

### 3.2 一个决定性的 Robin 例子

令 $U\in O(n)$，$q'=Uq$、$\Pi'=U\Pi$。仍使用同一个旧 Robin chart $b=\Pi-\sigma q,\ r=-q$，则

$$
\boxed{
 b'=Ub+(U\sigma-\sigma U)q
     =Ub+(\sigma U-U\sigma)r,
 \qquad r'=Ur.
}
\tag{3.6}
$$

若 $[U,\sigma]\ne0$，它不保持 closed $b=0$ theory；但在 $\sigma$ 已作为 closing action 被删除后，它仍是 bulk opened relation 的合法变换。只保留 $b'=Ub$ 会误判这种真实的 symmetry restoration。

另一种坐标做法是同时把 $\sigma$ 输运成 $\sigma'=U\sigma U^{-1}$，此时 $b'=Ub$。那是不同 $B$-charts／不同 closed objects 间的 covariance，不是对固定 $\sigma$ 的 symmetry。

D/N/R 混合的 source charts 完全遵循同一原则。Symmetry 检验应放在 $(q,\Pi)$ 上；quartet 只是实现检验的工具。

## 4. 局域 symmetry 的下降与限制定理

### 4.1 几何 matching 与 Ward matching

固定类型

$$
J:\mathcal Q_1\longrightarrow\mathcal Q_2,
\qquad
\mathcal M_J:\ q_2=Jq_1,\quad\Pi_1+J^*\Pi_2=0.
\tag{4.1}
$$

设局域 affine 变换在 traces 上为

$$
q_i'=U_iq_i+q_{s_i},\qquad
\Pi_i'=U_i^{-*}\Pi_i+\Pi_{s_i}.
\tag{4.2}
$$

$U_i$ 包含 side map 的正确 pullback；$\Pi$ 属于 trace dual。若目标 seam 为 $J'$，线性 matching 条件为

$$
\boxed{U_2J=J'U_1.}
\tag{4.3}
$$

shift 部分为

$$
\boxed{q_{s_2}=J'q_{s_1},\qquad
\Pi_{s_1}+J'^*\Pi_{s_2}=0.}
\tag{4.4}
$$

例如 $U_i$ 正交时，(4.2) 中的双对偶作用简化为同一个 $U_i$。这里的 $J^*$ 始终已经包含 outward-normal convention；spatial orientation reversal 不再凭空增加一项负号。

还有一个不可省略的条件：完整 quasi-symmetry boundary functional／Noether improvement 必须相消，或成为指定真实 interface action 的变分。在单纯标量 affine 例子中，(4.3)–(4.4) 与共同 bulk action 足以给出该相消；一般 derivative-dependent 变换要核查完整 collar jets 和 current，不能只比较两个零阶 traces。

### 定理 4.1：affine local Ward descent

假设两侧 [N1] 的 sourced problems、最后的 smooth transparent problem 及其共同 quantum class 都在适用域内。假设 (2.1) 在 opened pieces 上具有离壳 variational/source covariance，保留未打开的 physical boundaries，运输 causal prescription，并满足完整 collar/jet compatibility、(4.3)–(4.4) 和上述 boundary Ward cancellation。则：

1. 两个局域变换拼成 $\Phi_\#$，把 sewn theory 输运到目标 sewn theory。
2. 其线性部分 $T_\#$ 满足
   $$
   G_{\#'}^\epsilon=T_\#G_\#^\epsilon T_\#^*,\quad
   E_{\#'}=T_\#E_\#T_\#^*.
   \tag{4.5}
   $$
3. 对输出 $W_{\#'}=T_\#W_\#T_\#^*$，$\alpha_\#$ 是 on-shell polynomial Peierls／Wick algebra isomorphism。若目标全部物理数据等于原数据，它才是同一 theory 的 symmetry。
4. 结论不依赖已完整移除的 D/N/Robin closing chart。

**证明。** 先只在几何配置层工作。(4.3) 使两份线性 field rules 在 seam 处相同，(4.4) 使 affine shifts 是一个 smooth matched field。collar compatibility 处理所有高阶 jets。对 (4.3) 取 adjoint，得到

$$
J'^*U_2^{-*}=U_1^{-*}J^*.
\tag{4.6}
$$

于是目标 flux mismatch 等于 $U_1^{-*}$ 作用在原 flux mismatch 上，再加 (4.4) 中为零的 affine 项。真实 exterior boundary conditions 按假设保留。

对任意 bulk source $f$，原 reconstructed solution 的线性 variation 经 $T_\#$ 后，满足目标同一个 sourced Euler–Lagrange equation、transmission/domain 以及 retarded/advanced support。Causal uniqueness 给 (4.5)。这个比较使用 regional sourced relation 得到的 candidate，不是把 global bracket 的 pullback 定义成答案。含 trace probes 时，用完整 weak surface-source problem 作同一比较，得到所有 admissible trace–bulk/trace–trace kernel blocks。

现在对每个 $F$ 作 chain rule，$\alpha_\# F$ 的 derivative 是 $T_\#^{-*}$ 作用在各 coefficient slot 上，并含 smooth shift 的有限插入。几何 pullback 保持允许 WF，smooth shift 不扩大其奇异方向。因此选定 polynomial class 被双向保持。把 (4.5) 和对应 $W$ identity 代入每个有限 contraction，得到 Poisson／$\star$ intertwining。equation/matching loci 双向对应，故其 ideals 也对应；继承 [N1] 的 ideal theorem 得商代数结论。最后，不同 closing charts 均重建同一个实际 removed-action/domain，故 uniqueness 给相同 $\Phi_\#$、kernels 和 observable map。证毕。

**逆向与必要性。** 若一个 sewn symmetry 保持给定切割，且其局域 field rule／parameter 能在各 pieces 的允许 off-shell/source domains 上限制，则这些 restrictions 是 opened Ward covariances，且必满足完整 matching。对于常正交 multiplet 变换，(4.3) 的必要性由在 seam 任取允许的 $q$ 得到；(4.4) 由作用在零场得到。所需任意性来自实际 joint trace domain 的 smooth 局部 probes，不是任意不相容 corner values。

限制与装配在 **匹配场上的局域变换** 层面互逆。若记录了额外的 off-matching extensions 或 currents 的 improvements，先按它们在同一匹配问题上的相同作用／相容 improvement 等价比较。不能声称所有 raw extension representatives 都唯一，也不能把这个逆向定理扩成整个抽象 $\operatorname{Aut}(\mathfrak A_\#)$ 的分类。

### 4.2 为什么没有原 closed groups 的直接公式

原 $\operatorname{Sym}(\mathfrak T_{B_i})$ 同时满足旧 closing action 与 $B_i$ 稳定条件。opening 移除这些条件，可能允许新的局域 Ward transformations；matching 又把两侧 transformations 关联起来。因而应分三步：

$$
\text{closed stabilizer}
\ \rightsquigarrow\ 
\text{opened Ward covariances}
\ \xrightarrow{\text{matching}}\
\text{sewn stabilizer}.
\tag{4.7}
$$

第一箭头不是一般的群同态：某些 closed algebra automorphisms 根本没有可 opening 的局域 lift；即使有 lift，它也未必在新的完整 source domains 上有定义。对于本文明确的局域 affine action-preserving 变换，可以直接验证这个 lift，而不能由“它在旧代数上是 symmetry”推断。

## 5. Equivariant reopening 与真正二元结合律

### 引理 5.1：closed intermediate 的 equivariant reopening

令 $C=\mathfrak T_1\boxtimes_\Gamma\mathfrak T_2$ 已为一个真实 closed theory，$\Lambda\subset\partial_t C$ 是下一次才选中的 physical boundary。设 compatible local Ward transformation 把 $(C,\Lambda)$ 输运到 $(C',\Lambda')$，保留其余 physical boundary data。则以下两种程序的完整 sourced covariance 一致：

- 先在 $C$ 上 opening $\Lambda$，然后输运完整 response；
- 把 $C$ 的 pieces 按原 internal matching 表示，临时加入相同 exterior sources，分别输运后匹配并装配。

**证明。** 固定任意 bulk probe $f$ 和任意新 boundary probe $b_\Lambda$。两种结果满足同一个目标 opened action/domain、同一先前已完成的 internal matching、同一其他 physical boundaries 与同一 causal prescription。故由唯一性相同。分别比较 $(f,0)$ 与 $(0,b_\Lambda)$，再取目标 exterior response，可得全部 $G,H,\rho,D$ 的输运一致。若变换在选定 chart 中混合 source/response，用 §3 的完整 relation 比较后再读取 quartet，不以简单 fiberwise covariance 取代它。完整 Ward boundary functional 是同一局域 action identity 的限制，因此也同时对应。证毕。

这里真正做了重新 opening。第一步之后的 $C$ 没有保留 open ports；只有当 $\Lambda$ 被选择时，才由其实际 closed action 重新构造 sourced family。这是 [N1, §6.1] reopening lemma 的 symmetry 增强，而非已全打开网络的 Schur-order identity。

### 定理 5.2：二元 associator 对 compatible Ward covariances 自然

在 [N1] 的共同可定义域内，给定三对象、最终相同的 face pairing 和相容局域 Ward transformations，两个真实括号化

$$
(\mathfrak T_1\boxtimes\mathfrak T_2)\boxtimes\mathfrak T_3,
\qquad
\mathfrak T_1\boxtimes(\mathfrak T_2\boxtimes\mathfrak T_3)
\tag{5.1}
$$

之间的 associator 与 induced symmetry maps 交换。

**证明。** 每条路径第一步都先产生 closed intermediate。下一步由引理 5.1，把该 intermediate 的实际重新 opening 及其 symmetry action，与同一个辅助分片 sourced problem 比较。两条路径最终删除同一批 closing terms，保留同一批 exterior terms，得到同一组 field、jet 和 Ward matching。由定理 4.1，二者在最终所有 field/coefficient labels 和 causal contractions 上的作用一致。由 [N1] 的 reconstruction onto 与 quotient，代数上的 maps 因而相同。四对象 pentagon 的两条路径同样都给最终同一个局域场输运，故 equivariant coherence 成立。证毕。

这个 statement 要求变换运输当前括号化所使用的 pieces/seams；若 global symmetry 把 cut 移到一个与这些中间 clusters 不相容的位置，应使用 §10 的 presentation covariance，而不是画一个实际上不存在的同对象自然性方块。

附带程序另外以三分量连续区间作实际 binary benchmark。`ClosedInterval` 只保存长度和两端 homogeneous realizations；第一次 sewing 后重新由这个 closed object 求解 bulk source 与两端 boundary sources 的全部 response blocks。它们与原两片、同一 internal matching 的辅助解一致。三片取不对易 twists $P,Q$ 时，左括号第二次的 root-frame seam map 为 $QP$，右括号先形成 $Q$ 再用 $P$；代码同时比较最终全部 $G,H,\rho,D$ 和三个独立内部 frame transformations 下的 covariance。没有把 quartet 存在 intermediate 中，也没有把更换括号误作交换 twists。

旧 note [N2, §7.2] 的 affine quotient-equivariance 与旧有限 successive sewing，都作为下层引理保留：前者解释匹配后 map 的代数下降；后者解释最终共同 domain 的消元一致性。**它们都没有替代引理 5.1 中任意新 boundary source 的检验。**

## 6. 显式例子：降低、恢复、失效与 closing independence

### 6.1 Matching 把独立内部群降到 twisted diagonal

取 $n$ 个同质量实 scalar，bulk symmetry 为 $O(n)$。两侧各自的 opened bulk rules 为 $U_1,U_2$。沿固定 $J\in O(n)$ 透明匹配时，定理 4.1 给

$$
U_2=J U_1J^{-1}.
\tag{6.1}
$$

若外边界没有额外破坏，对称群从独立的 $O(n)\times O(n)$ 降为这一 twisted diagonal copy。它不是把两个旧代数的群直接 tensor 后取商，而是 full trace relation 的 stabilizer。

无穷小 $a_i^T=-a_i$，在匹配场上两侧 internal Noether normal currents 的和为

$$
\boxed{
\mathcal F_{\Gamma}(a_1,a_2)
=\Pi_2^T(a_2J-Ja_1)q_1.
}
\tag{6.2}
$$

因此 matching obstruction 本身就是一个具体 Ward/flux defect。若允许同时运输 $J$，其变分为 $\delta J=a_2J-Ja_1$，这变成不同 interfaces 之间的 covariance；固定 $J$ 时才是 explicit breaking。

### 6.2 各向异性 Robin 被删除后恢复内对称

取两侧 $O(2)$-invariant bulk、外端 homogeneous Dirichlet，待粘端的 closing potentials 为

$$
V_i(q_i)=\tfrac12q_i^T\sigma_iq_i,
\quad
\sigma_1=\operatorname{diag}(\lambda_1,\lambda_2),\quad
\sigma_2=R_\theta\operatorname{diag}(\mu_1,\mu_2)R_\theta^{-1},
\tag{6.3}
$$

本征值各不相等、主轴不同。每个 closed regional internal group 是 $C_{O(2)}(\sigma_i)$。对 $J=1$，那些既是原 closed symmetries 又能直接匹配的元素属于

$$
C_{O(2)}(\sigma_1)\cap C_{O(2)}(\sigma_2)=\{\pm1\}
\tag{6.4}
$$

（一般角度）。完整删除两个 selected Robin actions 后，输出仅剩 invariant bulk 和外端 Dirichlet，故 sewn internal group 恢复为 diagonal $O(2)$。连续 rotations 在旧 chart 中正以 (3.6) 的 source–response mixing 实现。

这不是从“坏 regulator”得出的近似 symmetry，也不是 spontaneous symmetry breaking 的逆过程。它是移除明确的物理 closing terms 后得到的另一个完整 theory 的 exact symmetry。

### 6.3 保留 boundary action 时，obstruction 真实存在

若保留 selected potentials，它们装配为

$$
V_\Gamma(q)=\tfrac12q^T\Sigma q,
\qquad \Sigma=\sigma_1+J^*\sigma_2J,
\tag{6.5}
$$

并给

$$
\Pi_1+J^*\Pi_2=\Sigma q.
\tag{6.6}
$$

对 $\delta q=aq$，

$$
\delta_aV_\Gamma=\tfrac12q^T[\Sigma,a]q.
\tag{6.7}
$$

固定 defect 的内部 symmetry 必须满足 $[\Sigma,a]=0$。这个 obstruction 不应通过改变 source parametrization 消去。一般 nonlinear boundary potential 的条件同样来自 $V(Uq)=V(q)+\text{constant}$，不是从 $b$ 的名字推断。

### 6.4 D/D、D/N、N/N、R/R、R/D 的同一个连续 kernel

取两段长度 $\ell_i$ 的区间，外端 Dirichlet，从外端向接口计距。Laplace 参数 $\kappa^2=s^2+m^2$、$\operatorname{Re}\kappa>0$，定义

$$
h_i(x)=\frac{\sinh(\kappa x)}{\sinh(\kappa\ell_i)},
\qquad d_i=\kappa\coth(\kappa\ell_i).
\tag{6.8}
$$

Dirichlet-reference scalar kernel 记作 $g_{iD}$。对固定 $J\in O(n)$，所有五种混合 closing choices 完整移除后得到

$$
\begin{aligned}
G_{11}^\#&=g_{1D}\,1+\frac{h_1h_1'}{d_1+d_2}\,1,\\
G_{22}^\#&=g_{2D}\,1+\frac{h_2h_2'}{d_1+d_2}\,1,\\
G_{21}^\#&=\frac{h_2h_1'}{d_1+d_2}J,
\qquad G_{12}^\#=\frac{h_1h_2'}{d_1+d_2}J^*.
\end{aligned}
\tag{6.9}
$$

这里 prime 仅表示第二个 kernel argument，不是微分。例如 Robin auxiliary quartet 含矩阵 $(d_i1+\sigma_i)^{-1}$，其 homogeneous kernel 与 Dirichlet 显然不同；这些矩阵在 geometric matching 后恰消去。

所以对任意 $U_1,U_2$，将 $J$ 运输为 $J'=U_2JU_1^{-1}$，都有

$$
G_{J'}^\#=\operatorname{diag}(U_1,U_2)
G_J^\#\operatorname{diag}(U_1,U_2)^*.
\tag{6.10}
$$

固定 $J$ 时条件又退回 (6.1)。附带程序用不对易 $\sigma_i$、复 $\kappa$、同区与跨区 blocks 检验了这些等式。它们是实际连续 interval resolvents，不是仅有限格点类比。

### 6.5 原 closed symmetry 可能消失，新的 sewn symmetry 可能出现

自由 scalar 的解平移给最明确的两个方向。若左 closed Dirichlet interval 上选

$$
s_1(t,x)=\cos(\omega t)\sin(\pi x/\ell_1),
\quad \omega^2=m^2+(\pi/\ell_1)^2,
\qquad s_2=0,
\tag{6.11}
$$

则两侧都是各自 closed problem 的 affine solution-shift symmetry，接口 trace shifts 都为零，但 $\Pi_{s_1}+\Pi_{s_2}\ne0$。因此这个 regional pair 不能下降。

反之，在长区间 $[0,L]$ 取 global solution
$s(t,x)=\cos(\sqrt{m^2+(\pi/L)^2}\,t)\sin(\pi x/L)$。对一般 cut $x=a$，$s(t,a)\ne0$，故其 restrictions 不是原 Dirichlet pieces 的 closed symmetries；但它们是有源 opened relations 的相容 shifts，并下降为 sewn symmetry。

因此“regional symmetries 不全 surviving”和“sewn symmetry 不全来自原 closed symmetries”都已有 exact counterexamples，而不是推测。

## 7. Charge 与 flux：粘合完整 Ward identity，而非只粘 $\Pi$

### 7.1 General balance 与 improvement 数据

把真实 boundary action 一并纳入 (2.2)。对一个空间 slice $\Sigma_i$，记经允许时间 smearing 后的 charge 为 $Q_i$，物理边界可能有自己的 surface charge density。局域 balance 的基本形式是

$$
\frac d{dt}Q_i(t)=-\int_{\partial\Sigma_i}j_i^n
+\text{specified source work},
\tag{7.1}
$$

而不是无条件的 $\dot Q_i=0$。在一个暂时 opened problem 上，外部 history 的运动会给 flux，这是预期的响应，不是缺少“正确的 regional Hamiltonian”。

若两个 quasi-symmetries 的 bulk currents 只相差 improvement，seam matching 应写成

$$
\iota_\Gamma^*(j_1+j_2)=d_\Gamma k_\Gamma
+\text{variation of the retained interface action}.
\tag{7.2}
$$

精确比较时还要计入 $k_\Gamma$ 在 slice-seam 交集处贡献的 charge。光滑透明 scalar、无该 improvement 时就是零；存在 corners 时，不能让未跟踪的 exact term 无故消失。几何 corner 本身仍不自动带独立自由度。

**命题 7.1（Ward composition）。** 当完整 off-shell identities、boundary improvements、真实 exterior/defect terms 在同一个 matched jet domain 上装配，且选中 closing action terms 已按规定移除时，求和后的 Ward identity 正是 final standalone action 的 Ward identity。相应 smeared charge 是最终 current 的区域积分之和，加剩余 surface/defect charge，并减去实际被移除的 closing-action charge contribution。

**证明。** 每份 bulk action 与其 variation 只计一次。在共享 collar 中按正确的 form/density convention 相加；(7.2) 把内部 boundary variations 配对或转移到指定的 interface/slice contributions。所有 selected closing terms 及其 symmetry variations 一起删除；未选中的 terms 原样保留。因此剩余 identity 是 assembled action 的直接 variation。对其 current 在同一 slice 上积分即给 charge statement。若该 charge 在指定 algebra 内并满足 Peierls generator identity，则定理 4.1 将相同 identity 输运到独立 global algebra。证毕。

最后的“若”不能省略：一个 conserved current 的存在不自动给任意非紧区域一个 algebra 内的总 charge，也不自动证明任意 derivative/nonlinear charge 的 generator property。下节的 shifts、总自由能量及 §9 的例子直接验证了它。

这条定理不是

$$
Q_\#=Q_1^{\text{old closed}}+Q_2^{\text{old closed}}
$$

在两个旧 reflecting algebras 中的恒等式。原 generators 依赖原 bracket、原 boundary potential 和原 Wick prescription。这里相加的是已经按 removed action、released kernels、共同 composite prescription 重新解释的 regional densities。没有从旧 closed algebras到输出的普通 Poisson embedding。

### 7.2 Energy 的实际 subtraction

对 Robin action $-\tfrac12\int_{\partial_tR}q\sigma q$，closed energy 包含

$$
H_B(t)=\frac12\int_\Sigma
\bigl(\dot\phi^2+|\nabla\phi|^2+m^2\phi^2\bigr)
+\frac12\int_{\partial\Sigma_R}q\sigma q.
\tag{7.3}
$$

透明 sewing 删除选中 faces 上这一项及其 renormalized closing counterterms，保留尚存外边界的同类项。若保留它，就得到 §6.3 的真实 defect energy，而不是同一个 transparent Hamiltonian。

取 $\chi\in C_c^\infty(\mathbb R)$、$\int\chi=1$，时间涂抹能量 $H_\chi$ 属于当前 polynomial class。在最终 closed stationary problem 上 [N1] 已直接用 Peierls kernel 证明

$$
\{F,H_\chi\}=DF[\partial_t\phi],\qquad
\frac1{i\hbar}[F,H_W]_\star=DF[\partial_t\phi]
\quad\text{on shell},
\tag{7.4}
$$

第二式取静态 ground-kernel normal ordering。相同局域 physical stress prescription 与此可能差有限 c-number；它改变真空能但不改变 generator。Symmetry composition 不应把“两个区域旧真空都被保持”作为前提。

### 7.3 Charge algebra 的中心项不是 gauge 判据

若选定 $Q_\xi$ 实现一组 Lie-algebra derivations
$\delta_\xi=\{Q_\xi,\cdot\}$，且
$[\delta_\xi,\delta_\eta]=\delta_{[\xi,\eta]}$，则 Jacobi 给

$$
c(\xi,\eta):=\{Q_\xi,Q_\eta\}-Q_{[\xi,\eta]}
\in Z_{\rm Pois}(\mathfrak A).
\tag{7.5}
$$

在本文 connected free nondegenerate sector，所讨论的中心项为常数。若有 superselection center，它可能更大，不应一概写成一个数。常数 shift of charges 会改变 cocycle representative 而不改变 action。

“charge central”“在某个小代数上作用为零”“proper gauge”是三个不同命题。尤其有物理中心或带电 observables 尚未加入时，单靠 (7.5) 无法决定 proper/large 分类。

## 8. Solution shifts：不是 universal 内对称，但应保留

### 8.1 离壳 identity 与完整边界流

对一个固定 smooth parameter $s$，仅要求 $Ls=0$，不对正在变分的 $\phi$ 使用方程。在 $1+1$ 中

$$
\delta_s\mathcal L
=\partial_t(\phi\dot s)-\partial_x(\phi s')-\phi Ls.
\tag{8.1}
$$

这是严格 off-shell identity。其 Noether current 为

$$
j_s^t=s\dot\phi-\dot s\phi,
\qquad j_s^x=\phi s'-s\phi',
\tag{8.2}
$$

且

$$
\partial_tj_s^t+\partial_xj_s^x=sL\phi-\phi Ls.
\tag{8.3}
$$

在 outward response convention 下

$$
j_s^n=\Pi_\phi s-q\Pi_s,
\qquad
\boxed{\dot Q_{s,i}=-\Pi_{\phi,i}s_i+q_i\Pi_{s,i}}
\tag{8.4}
$$

（对所有端点求和）。第二项来自 quasi-symmetry improvement，不能丢掉。取 $\phi=s=\sinh(mx)$ 的局部解即可看到：charge identically zero，完整两项抵消，而只保留 $-\Pi_\phi s$ 会虚构一个非零流。

在 closed theory 上，$s$ 还必须满足其真实 homogeneous boundary realization。例如共同 Robin $\Pi_\phi=\sigma q$、$\Pi_s=\sigma s$ 且 $\sigma^*=\sigma$，(8.4) 才在边界相消。在 opened relation 上，$s$ 可以有非零 sourced trace；它通常是带 boundary functional 的 covariance，而不是单个 $b=0$ closed theory 的 symmetry。

有限变换 $\phi\mapsto\phi+s$ 的 action identity 还含场无关项 $S[s]$。它在有源 generating functional／implementation phases 中必须一致处理，不能为了获得严格 action equality 而删掉；对当前 observable automorphism 的导数/Peierls 作用，这个常项不改变结论。

### 命题 8.1：shift generators 的 Peierls 构造

在最终 compact closed free theory 上，取 homogeneous smooth $s$，定义

$$
Q_s[\chi]=\int dt\,\chi(t)
\int_\Sigma(s\dot\phi-\dot s\phi),
\quad\int\chi=1.
\tag{8.5}
$$

这是一个 field-linear、允许时间涂抹的 observable。因完整 boundary flux 为零，其 on-shell class 不依赖 $\chi$。泛函微分为

$$
Q_s^{(1)}=-\chi's-2\chi\dot s.
\tag{8.6}
$$

利用 $E(t,t')=-\sin(\sqrt K(t-t'))/\sqrt K$，对 $\chi'$ 积分分部，有

$$
\begin{aligned}
EQ_s^{(1)}(t)
&=\int du\,\chi(u)
\left[\cos(\sqrt K(t-u))s(u)
+\frac{\sin(\sqrt K(t-u))}{\sqrt K}\dot s(u)\right]\\
&=s(t).
\end{aligned}
\tag{8.7}
$$

最后一步就是同一 complete boundary realization 的 homogeneous wave evolution。因此

$$
\{F,Q_s\}=DF[s],\qquad
\frac1{i\hbar}[F,Q_s]_\star=DF[s].
\tag{8.8}
$$

量子等式精确，因为 $Q_s$ 是线性的，所有二次及更高 contractions 为零。无需引入 $\Omega$ 或先选 canonical phase coordinates。

### 命题 8.2：Heisenberg cocycle 的 sewing

对两个 compatible homogeneous shifts $s,t$，

$$
\boxed{
\{Q_s,Q_t\}=c(s,t)
=\int_\Sigma(s\dot t-\dot s\,t),
\qquad [Q_s,Q_t]_\star=i\hbar c(s,t).
}
\tag{8.9}
$$

由 (8.8) 直接对 $Q_s$ 作用得到第一式，第二式为同一线性 Wick contraction。$c$ 的时间独立性由两个 homogeneous equations 和 full boundary matching 得到。它是交替双线性形式，故对于 abelian shift module 自动满足 Lie-algebra 2-cocycle identity。

在 sewn fields 上

$$
Q_s^\#=\sum_iQ_{s_i,i}^{\rm rel},\qquad
c_\#(s,t)=\sum_i c_i(s_i,t_i).
\tag{8.10}
$$

每个 regional integrand 使用其实际 shifted field 与 final/released kernel。单独的 $c_i$ 可随 slice 变化，只有完整 seam flux 取消后的总和守恒；不能称每一项都已是原 closed regional Heisenberg charge。

Finite shift action $\alpha_sF(\phi)=F(\phi-s)$ 对 (1.4) 是有限 smooth substitution，精确保持 Wick products。它们在 algebra 上严格交换。若另取一个允许 Weyl exponentials 的 extension／representation，形式实现元

$$
U_s=\exp(-iQ_s/\hbar)
$$

可满足

$$
U_sU_t=\exp\!\left(-\frac{i}{2\hbar}c(s,t)\right)U_{s+t}.
\tag{8.11}
$$

(8.11) 的 exponentials **不是本 polynomial formal core 的元素**；该式只在另行允许它们的层级使用。Algebra action 严格而实现元 projective 并不矛盾，也不是 renormalization anomaly。

对线性 symmetry $T$，shift parameters 被运输成 $Ts$。有限场变换满足

$$
(T,s)(U,t)=(TU,Tt+s).
\tag{8.12}
$$

因而这是一份 affine semidirect structure，不是把所有 shifts 叫作与时间平移逐一对易的固定内对称群。

在 sharp-time Cauchy variables 上书写同一 charge 时，它有显式参数时间依赖：

$$
\partial_t Q_s(t)+\{Q_s(t),H\}=0,
\qquad \{Q_s,H\}=-Q_{\dot s}.
\tag{8.13}
$$

第一式只用于说明 conserved charge 的时间依赖，实际代数元素仍由 (8.5) 的允许时间涂抹定义；不能将它改写成每个固定参数 shift 都与 Hamiltonian 对易。

### 8.2 保留到什么程度

一个 massive scalar 的任意常数 shift 一般不满足 $Ls=0$；它不在上述 module 中。加入 $-\lambda\phi^4/4!$ 后，(8.1) 多出 $-\lambda\phi^3s/3!$，一般不能写成原来的离壳 divergence。因此 free solution-shift module 不是稳定于任意 interaction 的 universal symmetry。

旧 note [N2, §8.3] 对 shifts 的主要物理判断和完整 $q\Pi_s$ 项正确；本节将它改写成 Peierls generator、Wick action 和 closed/open/matched 三层定义。旧 graph topology 上无限维 shift group 的不联合连续反例仍只属于该旧 topology；本文只证明每个固定 smooth shift 对 polynomial algebra 的作用，没有声称一个未经定义拓扑的无限维 Lie-group 表示。

## 9. 不宜全部删掉的高阶 symmetry：一个局域 Ward 例子

在自由 massive scalar 的空间圆上，令

$$
X_3\phi=\partial_x^3\phi.
\tag{9.1}
$$

对 $\mathcal L=\tfrac12(\phi_t^2-\phi_x^2-m^2\phi^2)$，直接计算得到

$$
\delta_3\mathcal L=\partial_x k_3,
\tag{9.2}
$$
$$
k_3=
\phi_t\phi_{txx}-\tfrac12\phi_{tx}^2
-\phi_x\phi_{xxx}+\tfrac12\phi_{xx}^2
-m^2\phi\phi_{xx}+\tfrac12m^2\phi_x^2.
\tag{9.3}
$$

这不是仅 on-shell 的守恒偶然式。其 current 可取

$$
j_3^t=\phi_t\phi_{xxx},\quad
j_3^x=-\phi_x\phi_{xxx}-k_3,
\quad
\partial_tj_3^t+\partial_xj_3^x=\phi_{xxx}L\phi.
\tag{9.4}
$$

取时间涂抹

$$
Q_3[\chi]=\int dt\,\chi(t)\int_{S^1}\dot\phi\,\partial_x^3\phi,
\tag{9.5}
$$

这是当前 algebra 内的 finite-jet polynomial。在圆上 $A=\partial_x^3$ 形式反自伴并与 $K$ 对易；直接变分给

$$
Q_3^{(1)}=-\chi'A\phi-2\chi A\dot\phi,
\qquad EQ_3^{(1)}=A\phi\quad\text{on shell}.
\tag{9.6}
$$

第二式与 (8.7) 同一 wave identity，取 homogeneous field $A\phi$。所以 $\{F,Q_3\}=DF[A\phi]$。相应无穷小作用对 coefficient kernels 仅作有限微分，保持 (1.4)。对 translation-invariant ground $W$，$(A_x+A_y)W=0$ 逐 contraction 给出 Wick derivation；对 $Q_3$ 的量子 generator，正频二腿贡献因 $A^*=-A$、$[A,K]=0$ 的谱正交而抵消，得到与 (9.6) 对应的精确 commutator identity。

同一 argument 适用于保持完整 homogeneous operator domain 的局域、时不变算子 $A$，只要 $A^*=-A$、$[A,K]=0$ 在该实际 realization 上成立；constant internal rotations 和 $\partial_x$ 是相应例子。这里不能只验证 bulk differential expressions 的交换子：例如 $\partial_x$ 在 interval 内与 $-\partial_x^2+m^2$ 对易，却一般不保持 Dirichlet domain，所以不能由此认定 closed interval 的 translation symmetry。

透明 interval sewing 后的圆具有这一 Ward symmetry；原 closed Dirichlet intervals 一般不具有它，因为 $\partial_x^3\phi$ 不满足原 Dirichlet boundary condition。正确的 opened matching 要求完整 smooth jets，于是 (9.4) 的两侧 seam currents 抵消。只匹配 $q$ 而不检查高阶 jets/current，不足以讨论这种变换。

另一方面，一般非零参数下，有限演化 $e^{\epsilon\partial_x^3}$ 是 Airy-type dispersive kernel，而不是由 spacetime point map 和 bundle map 组成的有限局域 transformation。圆上的 Fourier multiplier 是 $e^{-i\epsilon k_n^3}$。若它在一个参数开区间内都是与 translations 对易的局域点变换，就必须是一个 translation，其 multiplier 为 $e^{-ia k_n}$；比较 $n=1,2$ 已要求 $6\epsilon k_1^3\in2\pi\mathbb Z$，不可能对参数开区间成立。个别 revival 参数不构成一个局域的一参数群。其一般作用于整个 distributional coefficient class 也不能从有限微分的证明自动延拓。

因此本文保留的是 (9.1)–(9.6) 的 **局域无穷小 Ward symmetry**，不是声称多出一个与 ordinary internal group 同类型的有限局域群。这一例子说明，“只保留 ordinary spacetime/internal symmetry”过窄，而“保留所有守恒模态变换”又过宽。

## 10. Moving cut：presentation covariance 与物理 symmetry 不同

### 10.1 两种不同的映射

固定最终完整 theory $\mathfrak T(M)$，令 $\mathcal D$ 表示一份 admissible finite decomposition，包括实际 pieces、face identifications 和曾用于关闭待粘 faces 的 realizations。由 [N1] 得到独立构造的 reconstruction isomorphism

$$
\Theta_{\mathcal D}:\mathfrak A_{\mathcal D}^{\rm rec}
\longrightarrow\mathfrak A(M).
\tag{10.1}
$$

两份分解之间的纯 presentation transport 为

$$
C_{\mathcal D',\mathcal D}
=\Theta_{\mathcal D'}^{-1}\Theta_{\mathcal D},
\qquad
C_{\mathcal D'',\mathcal D'}C_{\mathcal D',\mathcal D}
=C_{\mathcal D'',\mathcal D}.
\tag{10.2}
$$

它在物理 global algebra 上为恒等。改变描述 cut 不需要有一个新的 Noether charge；也不等于把实际保留的 defect 移动了。

若 $h$ 是物理 global symmetry，可能 $h\mathcal D\ne\mathcal D$。此时正确 lifted action 为

$$
\widehat\alpha_{h,\mathcal D}
=\Theta_{h\mathcal D}^{-1}\alpha_h\Theta_{\mathcal D}:
\mathfrak A_{\mathcal D}^{\rm rec}
\longrightarrow\mathfrak A_{h\mathcal D}^{\rm rec}.
\tag{10.3}
$$

对 $k,h$ 的顺序作用，

$$
\widehat\alpha_{h,k\mathcal D}\widehat\alpha_{k,\mathcal D}
=\widehat\alpha_{hk,\mathcal D}.
\tag{10.4}
$$

这由 (10.1) 的取消直接给出，并由定理 4.1/5.2 保证它确实是局域 source-derived symmetry 的实现，不是任意添加的 algebra map。固定分解内的 automorphism group 只有 $\operatorname{Stab}(\mathcal D)$；完整 global symmetry 用这些不同 presentations 之间的 arrows 描述。

可以运输旧 closing choices，也可以在新 pieces 上选另一个 admissible closing realization 并完整移除；[N1] 的 independence 保证最终 map 一致。不能据此推断不同长度 Dirichlet intervals 的原 closed algebras 保持场标签地同构。

### 10.2 Cut displacement 的连续 benchmark

把固定 $[0,L]$ 在 $a$ 处切开。对 $x<a<y$，重建 cross kernel 化为

$$
G_\#(x,y)=
\frac{\sinh(\kappa x)\sinh(\kappa(L-y))}
{\kappa\sinh(\kappa L)}.
\tag{10.5}
$$

在固定物理 $x,y,L$ 的允许 cut range 内

$$
\partial_aG_\#(x,y)=0.
\tag{10.6}
$$

其同区 blocks 也化为相同 uncut expression。这是 cut independence 的具体形式；不是“固定局部坐标不动”后错误比较不同物理点。

对于同一个 reconstructed smooth field 的局域 energy density $e$，

$$
\partial_a\int_0^a e\,dx=e(a),\qquad
\partial_a\int_a^L e\,dx=-e(a).
\tag{10.7}
$$

总 charge 不变，两个 regional representatives 分别改变。量子 composite 需采用同一个 final local subtraction；否则混入的是 scheme/closing-wall energy，而非纯 cut displacement。

空间圆上的 translation generator

$$
P[\chi]=\int dt\,\chi(t)\int_{S^1}\dot\phi\,\phi'
\tag{10.8}
$$

是真正的 physical charge，与 (10.2) 的恒等 presentation transport 不同。它可移动原 interval cut，在原 closed Dirichlet interval 上却不是 boundary-preserving symmetry。$A=\partial_x$ 版本的 (9.6) 直接给其 Peierls generator identity。

### 10.3 真 defect 与 time reversal

若 $\Gamma$ 上保留了一般 defect action，移动它通常改变 action、scattering 和 kernels；(10.6) 不再成立。只有满足 §11 条件的 symmetry wall 才有相应 topological displacement law。

时间定向反转需要单独标注。实 time-reversal field map 交换 $G^R,G^A$，因此是 anti-Poisson covariance。量子层采用同时复共轭的反线性作用才保持 $\star$。它不属于定理 4.1 的时间定向保持 Poisson arrows。有限时间 slab 的平移也应是不同 slab theories 之间的 covariance，除非已经明确采用 all-time 或相容 slab system。

## 11. 值得保留的 generalized sector：可逆 symmetry interfaces

### 11.1 Fusion、inverse 与适用条件

设 $J$ 是 bulk theory 的 exact internal symmetry：它保持 kinetic pairing、mass/couplings；有相互作用时还需相容 quantum prescription。沿一个 face 放置零 interface action 的 relation

$$
\mathcal M_J:\ q_2=Jq_1,\quad\Pi_1+J^*\Pi_2=0.
\tag{11.1}
$$

对相邻／重合的两条这样的关系，消去中间 trace 后，

$$
\boxed{\mathcal D_{J_2}\circ\mathcal D_{J_1}
\simeq\mathcal D_{J_2J_1},\qquad
\mathcal D_J^{-1}\simeq\mathcal D_{J^{-1}}.}
\tag{11.2}
$$

**证明。** Field traces 依次变为 $q_2=J_1q_1$、$q_3=J_2q_2$，故总 map 为 $J_2J_1$；对应 dual response 逆向输运，得到同一个总 oriented flux condition。用 $J^{-1}$ 复合后是 identity relation。源与 Wick contractions 随同一个内部场重定义运输，给自由 observable-algebra 层的等价。证毕。

(11.2) 是 symmetry relations 的 fusion。它**不是**把一段有限宽度、有实际波传播的中间 region 丢掉；若保留该 region，还要组合它的 propagation response。

在 invariant bulk 中，将一条 wall 移动而不穿过 operator insertions/endpoints，可在两位置之间的区域作 $\phi\mapsto J\phi$ 的变量替换。bulk action 不变，wall relation 被运输到新位置；相交的 charged insertions 按 $J$ 变换。因此这是一个具体的可逆 topological-symmetry-wall realization。自由情形由 kernel covariance 直接成立；相互作用量子情形需 §12 的 anomaly-free/coherent renormalization 条件。对一般不保持 bulk coupling 的 $J$，它只是不同介质的 interface，不具有这项 topological conclusion。广义对称中用拓扑 defects 表示群作用的观点见 [4]。

### 定理 11.1：network symmetry 等于 holonomy centralizer

考虑连通有限网络，顶点处为同一个 invariant bulk multiplet theory，边 $e:i\to j$ 标记 $J_e\in G$。暂不加额外的 exterior symmetry breaking。常内部变换 $g_i\in G$ 下降，当且仅当

$$
g_jJ_e=J_eg_i\qquad\text{对所有边}.
\tag{11.3}
$$

选 spanning tree 和 root。沿树由 $g_{\rm root}$ 唯一决定全部 $g_i$。每条非树边给一个 root-based cycle holonomy $H_c$，其余条件等价于

$$
\boxed{g_{\rm root}\in\bigcap_c C_G(H_c).}
\tag{11.4}
$$

若存在真实 exterior boundary/coupling stabilizers，还须把它们运输到 root 后取交。

**证明。** (11.3) 是 (4.3) 的固定-interface 特例。沿树无环，反复解 $g_j=J_eg_iJ_e^{-1}$ 可唯一传播 root element。沿一条闭回路回到 root，要求 $g_{\rm root}=H_cg_{\rm root}H_c^{-1}$，即 (11.4)。基本 cycles 生成全部回路，故这些条件也充分。改变 spanning tree只改变 root-based holonomy presentation 与共轭标签，不改变实际 symmetry group。证毕。

这给出了一个值得保留的非平凡 generalized composition obstruction：tree 可以让各区域 transformations 独立地共轭输运，cycles 则强迫 holonomy centralizers。它不是任意引入 higher-category 名词后留下的空定义。

### 11.2 Self-sewing、orientation 与非交换顺序

Self-sewing 只有一份 bulk field/action，其两个 side occurrences 可使用不同 boundary charts，但同一个常内部 $g$ 作用于两端。因此条件成为

$$
gJ=Jg.
\tag{11.5}
$$

例如 $O(2)$ doublet 的 circle twist $J=R_\theta$，一般 $\theta\ne0,\pi$ 时常内部 stabilizer 为 $SO(2)$。反射 $P$ 满足 $PR_\theta P^{-1}=R_{-\theta}$，故单独的 internal reflection 输运到另一个 twist。若再反转空间 circle orientation，cycle holonomy 也取逆，可形成同一 twisted theory 的组合 symmetry。

对 $SO(3)$，一个一般轴旋转 holonomy 的连续 centralizer 是一维；两个不同轴的非平凡 holonomies 可以使连续 stabilizer 为零。程序用两个显式正交 rotations 验证了这一维数下降。

$J_2J_1\ne J_1J_2$ 是不同 wall ordering，不是 associativity 失败；
$(J_3J_2)J_1=J_3(J_2J_1)$ 始终成立。Sewing 次序的 theorem 比较的是同一最终 oriented network，不能把边的物理排列交换也称为“同一顺序独立性”。

### 11.3 本轮不加入哪些 generalized symmetries

当前实 scalar polynomial algebra 没有自动给出一个独立 higher-form charged-operator sector。要研究 compact scalar winding、duality defects 或 noninvertible fusion，需先改变 global field configuration/extended-observable data，并证明具体 interface operation。本文不以“可望推广”把这些结构算作已选择并已建立的 symmetry。已有 (11.2)–(11.5) 足以为未来 gauge holonomies、transition maps 和 charge matching 保留明确入口。

## 12. Quantum symmetry：Wick representative、重整化与三种不同 obstruction

### 12.1 自由量子作用不只保持 CCR

定理 4.1 中的局域 affine 变换，对每个有限 Wick contraction 都给 intertwining。因此它保持完整选定 polynomial Wick algebra，包括 $:\phi^2:$ 乘积中的 double contraction、允许的 boundary composites、总能量及 §8 的 linear charges，而不只是线性 CCR。

若选取目标 kernel 为 $TWT^*$，这是直接的 $*$-isomorphism。若坚持使用目标原先指定的另一个 representative $W'$，还需

$$
s=W'-TWT^*
\tag{12.1}
$$

是 **同一完整动力学下** 允许的 smooth symmetric bisolution。真实物理边界处必须是相同 boundary-compatible Hadamard 类的允许余项；仅在 interior Hadamard 不足以保证任意边界态差都光滑。此时

$$
\beta_s=\exp\!\left(\frac\hbar2
\left\langle s,\frac{\delta^2}{\delta\phi^2}\right\rangle\right)
\tag{12.2}
$$

补上 representative change。

对固定 dynamics 的群作用，写 $gW=T_gWT_g^*$、$s_g=W-gW$，则

$$
s_{gh}=s_g+g s_h.
\tag{12.3}
$$

所以 $\beta_{s_g}\alpha_g$ 仍满足严格群律。这个 cocycle 是选择 Wick representative 的坐标补偿，不是物理 anomaly。特别地，不能把原 closed reflecting $W_B$ 与 final transparent $W_\#$ 的差放进 (12.2)：它们通常连 antisymmetric part 都不同，差还含反射奇性。[N1] 的 opening/reconstruction 必须先完成。

一个具体 removable defect 是 multiplet Wick-square finite constant matrix $C$。若 convention 不随内部 $U$ 输运，复合场的 covariance 多出 $C-UCU^T$。它满足 (12.3) 型 cocycle，可由运输该 finite convention 修复；它不表示 symmetry group 真的减少。

Time reversal 的实场 map 使 $W$ 变为 $\overline W$。对 observable 同时取复共轭，得到反线性 quantum covariance。不能把它混入时间定向保持的复线性 Poisson theorem。

### 12.2 Formal interacting covariance theorem

相互作用仍采用 [N1] 的 local polynomial insertions、renormalized time-ordered products 与 relative $S$-matrices，而不是把背景依赖 $E_\phi$ 直接指数化。设 $\mathcal R$ 为完整 prescription：包括 bulk、所有真实 remaining boundary/defect counterterms、composite insertions 的 contact terms，及所需 Ward normalization。

**定理 12.1（有相容 prescription 时的形式 symmetry sewing）。** 假设每一步的实际最终 geometry/dynamics 都具有所需 time-ordered extension theorem，且在其 smooth collar/remaining physical strata 上选择同一个 symmetry-covariant local extension rule 和有限参数；selected closing action 及其 counterterms 按同一 removal policy 处理。则定理 4.1、引理 5.1 和定理 5.2 的 maps 延拓为 formal interacting polynomial-generated algebras 的 symmetry/covariance maps，并与 binary associator 相容。对于固定 interacting theory，另须所保留 interaction 在该变换下不变（或仅有已纳入的允许 variational improvement）。

**证明。** 归纳 time-ordered order。在 coincidence sets 以外，已重建的 propagators 与低阶 causal factorization 决定 graph distributions；自由 kernel covariance 保证它们相同。对相应 diagonal extensions，输入 jets、extension rule 和 finite coefficients 按假设协变，故该阶也相同。跨已删除 seam 的 charts 使用同一 smooth bulk data，不能保留一个与本次目标 theory 不同的旧 reflecting extension。

由归纳所得

$$
\alpha_gT_{\mathcal R,n}(F_1,\ldots,F_n)
=T_{g\mathcal R,n}(\alpha_gF_1,\ldots,\alpha_gF_n),
\tag{12.4}
$$

再作用于 $S$-matrix、formal inverse 与 insertion derivative，即得 Bogoliubov observables 的 covariance。在相同 final prescription 下，两条实际 binary paths 的每一阶都使用同一 kernel与局部延拓数据，故 associator 的自然性保留。证毕。

这不是关于任意 nonlinear boundary interaction 的无条件存在定理。若原来的 extension theorem 不覆盖 sharp physical-boundary insertions，(12.4) 不能自动补上它；也不能从 global finite-group covariance 自动推出全部 local-current Ward identities。

对于一个紧致内部群，在已有非空、群稳定的逐阶延拓自由度空间中，可以在 **低阶 products 已协变后，对本阶 extension／局部 counterterm 自由度** 作 Haar averaging，建立有限内部群 covariance。相关线性 normalization 条件也必须在该群下稳定。不能把整个已完成的 $T_n$ 随手平均并期待 causal factorization 自动保留，更不能用这个论证证明一般 local gauge anomaly 消失。

### 12.3 Renormalization cocycle 与 genuine anomaly 的区分

把一个 prescription 经 symmetry 运输为 $g\mathcal R$。在适用的 finite-renormalization theorem 范围内定义 $Z_g$ 使

$$
S_{g\mathcal R}(V)=S_{\mathcal R}(Z_g(V)).
\tag{12.5}
$$

由于 $g(h\mathcal R)=(gh)\mathcal R$，有

$$
Z_{gh}=Z_g\circ(g\cdot Z_h).
\tag{12.6}
$$

更换 finite scheme $S_{\mathcal R'}=S_\mathcal R\circ Y$ 后

$$
Z_g^{\mathcal R'}=Y^{-1}\circ Z_g^\mathcal R\circ(g\cdot Y).
\tag{12.7}
$$

这些公式说明应寻找的是与 locality、真实 boundary conditions、sewing 和指定 Ward constraints 同时相容的 trivialization，而非把任意非零 $Z_g$ 叫作不可消除 anomaly。插入亦必须变换：

$$
V\mapsto Z_g(V),\qquad F\mapsto DZ_g(V)F.
\tag{12.8}
$$

只比较作用量 coupling、漏掉 energy/current 插入的 contact terms，不足以证明 quantum symmetry sewing。Master Ward anomalies 的 cocycle/Wess–Zumino/BV 联系见 [5,6]。

不能把两个原 closed reflecting theories 的 anomaly representatives 直接相加后宣称是 sewn anomaly。Opening 改变 propagators、真实 boundary action 和允许 counterterms，cross-region contractions 也新出现。应先在 final reconstructed theory 上形成同一个 Ward problem，再比较其 local cocycle；一般 anomaly cohomology 的 sewing 本轮未求出。

本构造因此区分四件事：

- selected boundary action 或固定 $J$ 的 **classical explicit breaking**，如 (6.2)、(6.7)；
- Wick/renormalization representative 不协变但可以修复的 **scheme defect**；
- charge/implementer 的 **central extension**，如 (8.9)、(8.11)；
- 在允许局部 schemes 中不能相容消去的 **genuine Ward anomaly**。

一种给定 state 不 invariant，或其 representation 无法实现某个 automorphism，又是额外的问题，不等于上述任一项。本文的 algebra theorem 不选择所有 regional vacua 的共同 extension，也不证明 Hilbert-space tensor factorization。

## 13. 延续到 gauge theory：保留 lift、Noether identity 与 boundary Ward 数据

### 13.1 现在选择的定义为何能够延续

Gauge theory 不能把当前非退化 Hessian 的 $G^{R/A}$ 公式原样照搬。但本次 symmetry 的定义没有依赖 Hessian 可逆或 CPS；其核心是局域场变换与离壳 variational identity。因此可以把参数空间换成局域参数 sections，并允许 field-dependent brackets 和 on-shell closure。

若

$$
\delta_\epsilon\phi=\mathcal R_\phi\epsilon,
\tag{13.1}
$$

是真正的 local gauge variation，任意 interior-supported $\epsilon$ 的 variational identity 给 Noether identity

$$
\mathcal R_\phi^\dagger\mathcal E(\phi)=0
\tag{13.2}
$$

（含必要的 trivial/field-equation terms 时按相应复形解释）。在边界，积分分部产生的 Ward charge／flux **不先置零**。这正是本次 full source/trace covariance 必须保留的东西。

Gauge 的 source-completeness 指完整 **admissible** probes；它不意味着对任意不满足 Noether constraints 的 source 都有 causal inverse。线性 probe 的相容条件、gauge fixing、Green functions 的 gauge independence、必要的 ghosts/antifields 是额外输入。在一个 BV/pAQFT realization 中，这些信息可以放在 pre-reduction observable complex 和 Ward differential 上，然后讨论其与 sewing 的相容性。[7,8]

这是一条明确的延伸接口：

$$
\boxed{
\text{local field/parameter lift}
+\text{off-shell Noether identities}
+\text{full boundary Ward/charge data}
\ \longrightarrow\
\text{action on the chosen observable algebra/complex}.
}
\tag{13.3}
$$

箭头不能反过来仅凭最终 algebra action 恢复全部 gauge 信息。

### 13.2 不把 $\ker\rho$ 定义为 proper gauge

令 $\rho$ 为 admissible lifted transformations 在某个 observable algebra 上的表示。本文不定义

$$
\operatorname{Gauge}_{\rm proper}:=\ker\rho.
\tag{13.4}
$$

原因是 $\rho$ 可能作用于过小的、已经只保留 gauge-invariant neutral observables 的 algebra；带电边界 operators 尚未加入时，物理 boundary transformations 也可能落在 kernel 中。中心、superselection sectors、场方程上为零的变换和真实 gauge redundancy 亦可能都在同一个 kernel 内，不能据此识别。

未来对 connected infinitesimal proper gauge，至少必须在已有 Noether-identity lift 内，再要求它保留声明的 boundary conditions，并且其 **完整、归一化后的 boundary Ward generator/response 在所有允许的 histories/variations 上为零**，同时模去指定的 trivial gauge transformations。是否还要 quotient disconnected/topological components 是另一项明确选择，不能由无穷小 charge 判据自动决定。

反之，若 cut transformation 有非零 boundary generator 或对允许的 charged sector 非平凡，就不能在 regional stage 因为“它像 gauge”而提前丢掉。匹配后，两边 outward charges 可以抵消，使相应 diagonal transformation 在 global theory 中成为 proper candidate。实现这个判断需要保留的正是 (13.3)，而不是单个 closed algebra 上已约掉的标签。

本次非规范 scalar 的 $[q]_D=0$ 与 §6.5 的 shifts 已提供一个较简单的警示：**先忘掉 off-shell/source lift，再从 closed quotient 寻找所有可 sew transformations，会不可逆地丢失信息。** Gauge theory 中同样的类型错误会涉及真正的边界 charges。

### 13.3 对称性之间的等价也要先于物理 quotient 记录

对于局域参数依赖场的情况，定义 bracket 最稳妥的方法是要求 induced Ward derivations 的实际 commutator 对应，而非直接使用 field-independent matrix bracket。若只在方程上闭合，或存在 reducibility，必须记录额外的 relation/homotopy。如此，有限变换可形成 groupoid，无穷小层是 algebroid/BV-type structure；普通 Lie group 是可控 nongauge 例子的特例。

当前不需要预先给这个结构加入一套任意 edge Hilbert spaces，也不需要改回 Hamiltonian-gradient observable definition。需要的是把 physical boundary 条件、source admissibility、Ward defects、counterterms 作为明确的数据/检验，而非当作口头上可忽略的“规范项”。

2026 年的 [9] 已在 marked hypersurface／smoothened-boundary pAQFT 中构造 modified master equations 和量子 BFV boundary correction，支持这种 boundary Ward 数据必须被保留的方向。但它的几何和 boundary 操作不是本 note 的 sharp physical D/N/Robin opening；本文没有用其摘要替代本次二元 theorem 的证明，也没有借它宣称 gauge extension 已完成。

## 14. Spacelike/null 的位置：共用 Ward 原则，不共用 opening 类型

Timelike 的 (3.2) 是一组 physical closing realizations 的可逆 source charts。Spacelike cuts 则应按 Cauchy evolution／完整 Cauchy jets 组合；null cuts 按足够的 characteristic data、constraints 和相交处 compatibility 组合。[N1] 已给出它们与 timelike feedback 的区别。

Symmetry 层可共用同一个原则：局域 off-shell identity 运输相应数据、完整 source problem 和 Noether current，再用实际 causal uniqueness 证明重建的 equivariance。但是，不能把 null data 强行拆成两个独立 $q,\Pi$，再套 (3.5) 的 timelike feedback inverse。

对保留 Cauchy surface 的 symmetry，Cauchy evolution 的 intertwining 是相应 reopening/source-completeness 引理的替代；移动 surface 则用不同 presentations 的 covariance。对于 characteristic filling，必须同时运输足够的 incoming data 和 corner compatibility；只运输一张不完整 null sheet 的数据不证明 global symmetry。

Quantum 部分尤其不能把任意 sharp spacelike/null composite traces 当作当前 algebra 元素。局域 bulk-smoothed observables 的 symmetry 可先由重建的 causal/Wick kernels 实现；是否还存在完整 characteristic boundary algebra，是独立 microlocal 命题。本轮未新增一个覆盖三种 causal cut types 的统一二元 operation。

## 15. 对旧 note 的逐项结论

旧 `smooth regional observable algebras and symmetries.md` [N2] 中，很多重要区分本来就已正确：canonical 不等于 physical；action/source covariance 不能由 equations alone 替代；quasi-symmetry flux 不能只保留 $\Pi$；moving cuts 是不同 presentations 的 covariance；matching-locus equivariance 不决定整个 off-matching Poisson extension。新 ontology 需要做的不是推翻这些，而是改造它们的对象类型和证明接口。

| 旧位置 | 在新 ontology 下的判断 | 本文处理 |
|---|---|---|
| §7.1 任意 smooth symplectomorphism 保持 $\mathcal H(X)$ | 原命题按原类可保留，但不是新 symmetry 定义 | §2 仅将其视为 ambient canonical kinematics；当前 Pμ 要单独验收 |
| §7.1 固定 pullback／有限维联合作用／无限维联合连续的区别 | 区别保留；旧 graph-topology theorem 不自动搬来 | §8 只证明固定 shift；不捏造新的 completion/topological group theorem |
| §7.2 由 action 推出四块 source covariance | 重要引理保留 | §3 加入 mixed B chart 与 source–response mixing；§4 独立导出 released kernels |
| §7.2 $V_2J=J'V_1$ 与 quotient-equivariance | 几何核心保留 | §4 扩成 closed→open→match→closed 的 descent/restriction |
| §7.3 任意 canonical map 的 section-dependent extension | 仍是旧 presentation 的合法工具，不能升级为 physical regional symmetry | 不进入核心 definition；保留其 nonlocal/auxiliary 性质 |
| §7.3 matching 上为 identity 却 off-matching 非 Poisson 的反例 | 完全保留其逻辑警示 | 不要求任意辅助扩张都是 symmetry；theorem 比较实际 sourced relations 和 physical quotient |
| §8.1 sign/reflection/time translation/time reversal | 保留，但每次检查真实 B、时间定向、support 与切割 stabilizer | §§4、10、12；固定 cut 与 moving cut 分开 |
| §8.2 history 导数与 regional energy flux | 物理内容保留，旧 Ω/β 公式不再定义新代数 | §§3、7 通过 full source response 与 Ward current 实现 |
| §8.3 shift quasi-symmetry、$q\Pi_s$ 与中心项 | 保留，且值得量子化 | §8 给直接 Peierls/Wick generator 与 cocycle composition |
| §8.3 (25a) connected symplectic integrability、§8.4 canonical shear | 不是新 note 的主物理内容 | 不用径向积分把所有 canonical derivations 称为局域 Noether symmetry |
| 旧 finite-successive sewing 与 equivariance | 只是共同 matching domain／已打开消元 lemma | §5 新增 equivariant reopening 后才证明 binary naturality |

这些判断针对旧文章实际写出的限定条件；没有把它明示排除的强命题当成旧文声称的结论来批评。详表见配套 `audit_and_proof_ledger.md`。

## 16. 核心结论、未决问题与验收界线

当前已得到的主要新内容是：

$$
\boxed{
\begin{gathered}
\text{local variational/Ward lift}\
\Downarrow\
\text{source-complete opened covariance, including mixed charts}\
\Downarrow\
\text{geometric and Ward matching}\
\Downarrow\
\text{closed Peierls/Wick symmetry}\
\Downarrow\
\text{equivariant reopening and binary associator}.
\end{gathered}}
\tag{16.1}
$$

这是一个可实际计算的选择，不是 $\operatorname{Aut}(\mathfrak A)$ 的改名。它解释原 symmetry 的失效、closing removal 后的恢复、matching 造成的 twisted diagonal/holonomy 降低，以及 global symmetry 移动 cut 时为何需要 presentation arrows。它同时给出了 free shifts、energy、高阶 Ward 例子和可逆 symmetry walls 的 composition。

真正仍需处理的问题包括：一般 curved/corner physical-boundary microlocal theorem；任意 nonlinear local transformation 对既定 coefficient class 的完整稳定性；真实高维/导数 boundary interactions 的 time-ordering 与局域 Ward identities；具体 gauge theories 的 admissible probes、Green construction、proper/large reduction 和 boundary anomaly cohomology；以及所需拓扑下的无限维 symmetry action。这里没有用原来的 finite matrices 或该 note 的概念定义把这些问题标成已闭合。

进一步，spacetime/internal/高阶 dynamical symmetry 的 **完整分类** 不在本文 theorem 内。本文完成的是一套能够排除明显过大 notion、保留有 composition 内容的 notion，并在明确 sector 中证明 descent 与 binary compatibility 的结构。它不假设一开始就已经知道所有物理 symmetries。

## 附录 A：核验的内容与限度

`checks/verify.py` 使用 SymPy 和 NumPy，执行 60 项有名称的检查，全部通过。包括 geometric matching、internal seam Ward defect、Robin mixing、非交换 chart 的 quartet、五组 mixed-realization 连续 resolvents、J 的 orientation reversal/fusion/holonomy、shift off-shell/current/generator/cocycle、高阶微分 Ward identity、canonical 反例、cut displacement、Wick double contraction/affine covariance/time reversal/scheme cocycle，以及旧 off-matching 反例。另有 6 项专门检验真正 closed intermediate 的完整 sourced reopening、两种 binary parenthesizations 及其 symmetry covariance。

其中反例检查通过的含义是 **预期的非零 defect／不等价被验证**，不是该错误命题通过。Continuous resolvent checks 直接使用双曲函数 kernel，没有以 finite-mode 截断冒充传播子相等。

这些检查核验符号、系数、反例和明确 kernels；它们不替代 continuum PDE existence、WF pullback、distribution-topology 收敛、全阶 renormalization 或 gauge anomaly 的证明。本文对这些部分分别给出实际 argument、继承的明确 hypothesis，或保留为开放接口。

运行：

```bash
python checks/verify.py
```

依赖为 Python 3、numpy、sympy；无网络请求、无仓库/Library mutation。

## 参考文献

[1] E. Hawkins, K. Rejzner, B. Visser, *A novel class of functionals for perturbative algebraic quantum field theory*, arXiv:2312.15203v3，2026-07-16。使用 polynomial/equicausal 与一般 microcausal closure 的区别，不将其视为 timelike opening theorem。<https://arxiv.org/html/2312.15203v3>

[2] C. J. Fewster, *Endomorphisms and automorphisms of locally covariant quantum field theories*, arXiv:1201.3295v2；Rev. Math. Phys. 25, 1350008 (2013)。Theory-level natural automorphisms 与单个抽象 algebra automorphisms 的区别。文中 “global gauge group” 指内对称结构，不能不加区分地等同本 note 未来的 proper local gauge redundancies。<https://arxiv.org/abs/1201.3295>

[3] C. J. Fewster, A. Schenkel, *Locally covariant quantum field theory with external sources*, arXiv:1402.2436v3；Ann. Henri Poincaré 16, 2303–2365 (2015)。Affine/source theories 的 automorphism 与 composition 病理及修正；不是当前 physical-boundary sewing 的同一定理。<https://arxiv.org/abs/1402.2436>

[4] D. Gaiotto, A. Kapustin, N. Seiberg, B. Willett, *Generalized Global Symmetries*, arXiv:1412.5148；JHEP 02 (2015) 172。Topological symmetry defects 的背景；本文仅具体构造其中可逆内对称 wall sector。<https://arxiv.org/abs/1412.5148>

[5] R. Brunetti, M. Dütsch, K. Fredenhagen, K. Rejzner, *Unitary, anomalous Master Ward Identity and its connections to the Wess-Zumino condition, BV formalism and L∞-algebras*, arXiv:2210.05908v2。Ward anomaly 的 cocycle 与一致性结构。<https://arxiv.org/abs/2210.05908>

[6] R. Brunetti, M. Dütsch, K. Fredenhagen, *Perturbative Algebraic Quantum Field Theory and the Renormalization Groups*, arXiv:0901.2038。Finite renormalization、relative S-matrices 与插入输运的基础。<https://arxiv.org/abs/0901.2038>

[7] K. Fredenhagen, K. Rejzner, *Batalin–Vilkovisky formalism in the functional approach to classical field theory*, arXiv:1101.5112。Gauge parameters、Noether identities 与 observable-complex 的背景。<https://arxiv.org/abs/1101.5112>

[8] K. Fredenhagen, K. Rejzner, *Batalin–Vilkovisky formalism in perturbative algebraic quantum field theory*, arXiv:1110.5232。量子 BV/pAQFT 延伸的背景，不作为当前 sharp-boundary gauge theorem。<https://arxiv.org/abs/1110.5232>

[9] K. Rejzner, M. Schiavina, *Perturbative algebraic quantum field theory with smoothened boundary*, arXiv:2607.13765，2026-07-15。本文只使用其可核实的研究范围：marked hypersurfaces、modified master equations 与 quantum BFV boundary corrections；不把它作为 D/N/Robin closed binary opening 的证明。<https://arxiv.org/abs/2607.13765>

[10] D. Harlow, J.-q. Wu, *Covariant phase space with boundaries*, arXiv:1906.08616。完整 variational boundary terms 与 Peierls/CPS 联系的交叉参照；本文的 observable admissibility 与 bracket 不通过 Ω 定义。<https://arxiv.org/abs/1906.08616>

[N1] *从封闭区域理论出发的二元可观测代数粘合*，当前 standalone note，1753 行，文件 `standalone_binary_observable_sewing.md`。本包 `sources/` 保留其实际副本与 proof ledger。

[N2] `GaoZ1en/obsidian_note`, *Smooth Regional Observable Algebras, Symmetries and Sewing*，文件 `Articles/Quantization in AdS/gluing/smooth regional observable algebras and symmetries.md`。本次实际核对其定义、§§7–8 和 §9 证明范围；所读 Git blob 为 `8ec8678a972b39620d017ca29adc250a22a03e66`。另检查 Library 的两份既有 audit 以识别历史限定，但不以 audit 结论替代正文。<https://github.com/GaoZ1en/obsidian_note/blob/main/Articles/Quantization%20in%20AdS/gluing/smooth%20regional%20observable%20algebras%20and%20symmetries.md>
