# 从封闭区域理论出发的二元可观测代数粘合

## 0. 结论与定理层级

本文把 composition 的对象改为一个完整的 standalone dynamical theory：每条现存 timelike boundary 都具有实际的 physical boundary realization，所有 boundary sources 都为零。只有某次 sewing 选中的边界才被临时 opening。完成 sewing 后，这些边界消失为内部接缝，未参加 sewing 的边界保持原来的 physical realization，输出重新成为一个没有 open ports 的 standalone theory。

主要结论如下。

**定理 A——封闭二元重建与 closing-realization independence。** 对本文 §2 的正 ultrastatic 非规范标量模型，选择有限条完整、光滑的 timelike boundary components，以相容的 collar/bundle maps 作透明粘合。D、N、非负 Robin closing realizations 都可在选中边界上完整移除。由各 standalone sourced problems 的四个 response blocks 重建的 retarded/advanced kernels，等于独立构造的 glued standalone problem 的 kernels，且不依赖被移除的 closing realization。未选中边界的 realization 不变。这是连续 PDE/operator 结果，不是有限模结论。

**定理 B——真正的 binary associativity。** 上述操作先输出封闭理论，再重新 opening 下一次需要的边界。重新 opening 得到的全部 sourced responses 与先分片再匹配的 sourced responses 相同。由此证明两个真实二元括号化的输出自然同构，并得到四对象 pentagon coherence。旧版的 finite-successive-sewing 只是其中的最终共同 domain／已打开 response 消元引理，不替代重新 opening 的证明。

**定理 C——Peierls/Wick observable-algebra reconstruction。** 沿用旧版固定分布系数的 polynomial class。经典括号、自由 Wick 乘积、equation quotient 和允许的复合场，随上述完整 response reconstruction 一起重建。内部 observables 的结论适用于 §2 的静态模型；将所有 physical-boundary-supported kernels 也放入代数时，必须满足 §9 明写的 boundary microlocal 条件。本文给出 interval D/N/Robin 的直接验证，故全部 mixed interval benchmarks 同时具有 classical 和 trace-inclusive free quantum realization。对于任意弯曲物理边界，本文不把内部 Hadamard 定理冒充完整 boundary extension 定理。

**定理 D——形式微扰的重建与结合律。** 在同一个输出动力学和完整、相容的局部重整化 prescription 下，smooth bulk interactions 的 renormalized observable reconstruction 逐形式阶成立。存在真实剩余边界／defect 时，其局部 counterterms、插入 contact terms 和相应 extension theorem 是必要输入，不能由无边界定理自动补出。§12 另外证明一个具体的 $1+1$ boundary-potential sector 的无导数 time-ordering 构造。

这里的“量子”是形式 $\hbar$／coupling algebra，不是任意相互作用理论的非微扰 $C^*$ 或 Hilbert-space factorization theorem。本文不以相空间或辛形式定义 observables。

---

## 1. 对象必须是带动力学标记的封闭代数

### 1.1 Standalone 对象

记

$$
\mathfrak T_B(R)=
\bigl(R,\mathcal C_R,S_{\rm bulk},S_{\partial},B,
\text{field/trace labels};\ \mathfrak A_B(R),\mathcal R_B\bigr).
\tag{1.1}
$$

$R$ 带真实的 timelike boundary、必要的 bundle/metric 数据和声明的场正则性。$S_{\partial}$ 包括实际的 boundary dynamics；$B$ 指定 variational domain 及 causal realization。$\mathcal R_B$ 表示所用 Wick／局部复合场／必要的 time-ordering prescription，而不是一个任意填上的物理态。

$\mathcal C_R=C^\infty(\overline R;E)$ 是记住场标签的 kinematical ambient space。物理 Dirichlet 等限制属于闭合动力学及其 equation locus；也可以把相应受限配置域单独标出。使用一个较大的 ambient space 并不把 boundary history 当作物理开放变量：standalone theory 的所有 boundary sources 始终为零。

一个 observable 是 $F:\mathcal C_R\to\mathbb C$。沿用

$$
(FG)(\phi)=F(\phi)G(\phi),\qquad
\{F,G\}_B=\langle F^{(1)},E_BG^{(1)}\rangle,
\tag{1.2}
$$

及其 Wick/renormalized quantum version。这里 $E_B$ 是完整闭合问题的 causal propagator，而不是一个尚未关闭的 port propagator。

几何边界、作用量及场标签是定义这个 field theory 本来就需要的数据。保留它们不等于永久保留可变的外部 histories；quartet 是实际 opening 时才构造的临时计算对象。

### 1.2 为什么 $\boxtimes$ 不是裸 Poisson 代数上的运算

在 Dirichlet physical quotient 中，$q=\phi|_\Gamma$ 满足 $[q]=0$。opening 后这个 trace 一般不为零，也不再中央。仅从商代数本身无法恢复被取商掉的 source directions；保持场标签的代数同态也不可能把 $0$ 送到非零 trace observable。

因此

$$
\mathfrak A_{B_1}(R_1)\boxtimes_\Gamma\mathfrak A_{B_2}(R_2)
\tag{1.3}
$$

是对带标记对象 $\mathfrak T_{B_i}(R_i)$ 作操作之后，取其 observable-algebra 部分的简写。它不是普通 tensor product、保留原括号的 quotient，也不是仅凭抽象 Poisson/$*$-algebra 的 universal pushout。

这不是一个可以通过更换 maximal function class 消除的问题。旧版 §2 的 fixed-wall bracket 反例仍有效：opening 本来就改变同一区域内部的 commutator。因此不要求旧 algebra 嵌入新 algebra 并保持所有旧 field-labelled brackets。

### 1.3 Opening 不等于一次物理淬火

“移除 closing realization”在这里是更换完整动力学问题。它不表示在某一时刻突然拆墙，也不指定如何将旧 vacuum、density matrix 或边界物质的初态送入新理论。真实 time-dependent wall removal 需要额外作用量、能量输入和 state evolution；其最终态通常不是这里重建的 ground state。

---

## 2. 一个对二元操作真正封闭的模型类

### 2.1 固定 conventions

先取实标量或有限个实分量、正定 fiber metric，

$$
R=\mathbb R_t\times\Sigma,\qquad
S_0=\frac12\int_R\bigl(\dot\phi^2-|\nabla\phi|^2-m^2\phi^2\bigr),
\qquad m>0.
\tag{2.1}
$$

$\Sigma$ 紧致、具有光滑边界。所有局域 operator coefficients 在 sewing collars 上按几何／bundle map 相容；有背景 bundle connection 时，这包括其 connection jets。主要定理沿完整、彼此不相交的 boundary components sewing；输出及每个中间 quotient 的 metric 和 bundle 都光滑。带角点、部分边界面和锥点的扩展另列于 §14，不预设已经包含。

采用 outward bulk action response

$$
q=\gamma\phi,\qquad \Pi=-\partial_n\phi.
\tag{2.2}
$$

于是

$$
\delta S_0=-\int_RL\phi\,\delta\phi
+\int_{\partial_{\rm tl}R}\Pi\,\delta q
+\text{temporal endpoint terms},\qquad
L=\partial_t^2+K.
\tag{2.3}
$$

这里 $\partial_{\rm tl}R$ 表示 timelike boundary。以下时间端点变分由测试支持／Cauchy prescription 控制。

$$
S_0^{(2)}=-L,\qquad E_B=G_B^A-G_B^R,\qquad W_B-W_B^T=iE_B.
\tag{2.4}
$$

### 2.2 Physical closing realizations

每个 boundary component 独立指定一种 local、静态 realization：

$$
\begin{array}{c|c|c}
B&\text{homogeneous boundary condition}&\text{physical boundary action}\hline
D&q=0&\text{essential restriction}\
N&\Pi=0&0\
R_\sigma&\Pi-\sigma q=0&-\frac12\int_\Gamma\langle q,\sigma q\rangle
\end{array}
\tag{2.5}
$$

$\sigma=\sigma^*\ge0$ 可为光滑矩阵值函数；对标量是通常的 $\partial_n\phi+\sigma\phi=0$。不同 components 可以选择不同 $B$。

空间 form 为

$$
\begin{split}
\mathscr V_B&=\{u\in H^1(\Sigma;E):\gamma u=0\text{ on }\Gamma_D\},\\
a_B(u,v)&=\int_\Sigma(\nabla u\cdot\nabla v+m^2u\cdot v)
+\int_{\Gamma_R}\langle\gamma u,\sigma\gamma v\rangle.
\end{split}
\tag{2.6}
$$

这是稠密定义、闭合且 $a_B\ge m^2\|u\|^2$ 的 form；它唯一决定正 self-adjoint $K_B$。其 smooth operator domain 实现 (2.5)。因此

$$
G_B^R(t,t')=\theta(t-t')\frac{\sin\sqrt{K_B}(t-t')}{\sqrt{K_B}},
\qquad
G_B^A(t,t')=-\theta(t'-t)\frac{\sin\sqrt{K_B}(t-t')}{\sqrt{K_B}}.
\tag{2.7}
$$

这类静态边界问题可用 closed forms 或 boundary triples 构造 [1,2]。本文另外使用 local boundary conditions 的有限传播速度：对局部能量加入 Robin surface energy 后，边界通量被其时间导数抵消；在光锥外的局部能量估计给出 causal support。

**为什么选 $\sigma\ge0$？** 这不是本质限制，而是一个确保所有中间对象仍在同一正性类中的简单充分条件。移除选中面的 Robin 正 form 项和 Dirichlet essential restriction 后，bulk 的 $m^2$ 下界仍在。任意实 Robin 可以讨论，但每个中间 $K$ 的下界、零模及量子态条件必须重新检查。

### 2.3 Opening 的 source domain

源先取 smooth、满足角点／初始相容性的类。Retarded histories 属于在某个时间以前为零的空间，advanced histories 反之。测试 observable 可紧支撑，但求解后得到的 boundary source/history 一般有无限时间尾部，不能强迫它仍然紧支撑。

对 smooth disjoint components，边界源的 lifting 很直接。在 inward collar coordinate $r$ 中 $\Pi=\partial_r\phi$：Dirichlet lift 可取 $\ell_D(b)=\chi(r)b$；N/Robin source lift 可取 $\ell_{N/R}(b)=r\chi(r)b$，后者满足 $q=0,\Pi=b$。取 collar 支持不碰其他边界。然后

$$
u=\ell_B(b)+G_B^\epsilon\bigl(f-L\ell_B(b)\bigr)
\tag{2.8}
$$

解决 $Lu=f$、selected boundary source $b$ 以及其余 homogeneous $B$。差满足 homogeneous boundary problem，故由 causal uniqueness 唯一。时间端点附近源为零使全部初始相容条件成立；标准能量估计及空间椭圆正则性给 smooth sourced solutions。这个 argument 也说明 quartet 的存在不是由给一个矩阵名字自动得到的。

### 2.4 更一般的 admissibility 不能只写“self-adjoint”

对于更一般 $B$，需要：完整的 variational realization、causal Green operators、selected-face sourced problem 的存在唯一性、正确的 trace/dual spaces，以及每个中间输出的同类性质。高阶、dynamic 或非局域 boundary relations 还可能需要更大的真实 boundary field space。

自伴性单独不保证相对于原 region metric 的有限传播速度。例如在一个区间上不改变几何、却把两端用非局域 periodic condition 直接联系，会改变信号可达性；将其解释为圆是另一个几何问题。纯吸收／耗散 boundary condition 若没有相应的环境或额外场，也不自动产生同一 conservative Peierls theory：其 adjoint advanced realization 未必等于原 realization。

当一个真实 boundary action 耦合 selected 与 unselected components 时，“只去掉前者而保留后者原样”还不是唯一操作。必须指定混合项的 removal policy，或把被耦合的 components 一起纳入操作。定理 A 的 component-local 假设避免了这一歧义。

---

## 3. 临时 opening 与一般化的 source-response quartet

### 3.1 选中 faces 后才引入 sources

对这次需要 sewing 的 $\Gamma\subset\partial_tR$，将 $B\phi=0$ 推广为 $B\phi=b$；其余 physical boundaries 保持原 homogeneous $B$。此时 $b$ 是临时的 response coordinate，不是输出 standalone theory 永久携带的 port。Opening 还必须替换与该 closing realization 相关的 initial-boundary compatibility，不能一边释放 $B\phi=0$，一边保留只适用于它的初始 corner constraints。

严格地说，opening 的临时输出有两层：物理层保留已删除 selected closing terms 的 $S_{\rm opened}$ 与不再受原 essential condition 限制的 trace relation；计算层用原 $B$ 的 inhomogeneous problems 给这条完整 relation 选坐标。$B\phi=b$ 在 $b$ 自由时不是新的物理关闭条件。下面的 auxiliary sourced fibers 用于算 response，不把旧 boundary action 重新加回 $S_{\rm opened}$。

D、N、Robin 的自然 source 与 conjugate response 为

$$
\begin{array}{c|cc|cc}
B&b&r&q&\Pi\\\hline
D&q&\Pi&b&r\\
N&\Pi&-q&-r&b\\
R_\sigma&\Pi-\sigma q&-q&-r&b-\sigma r
\end{array}
\tag{3.1}
$$

对于 N/Robin，辅助 sourced action

$$
S_{B,b}=S_0-\frac12\int_\Gamma q\sigma q-\int_\Gamma bq
\tag{3.2}
$$

给出 $\Pi-\sigma q=b$，并在满足方程后对 $b$ 的变分给 $r=-q$。N 是 $\sigma=0$。Dirichlet 直接改变 essential value，on-shell action 的 boundary derivative 为 $\Pi$。

**(3.2) 是构造原 realization 相对 source chart 的工具。** 透明 sewing 的物理作用量在 selected faces 上不保留其 $\sigma$ 项，也不保留 $-bq$ 外源耦合。不能把这个辅助 action 的所有项无区别加到最终 action。

### 3.2 Quartet 的定义

对 retarded/advanced choice $\epsilon=R,A$，定义

$$
\boxed{
 u=G_B^\epsilon f+H_B^\epsilon b,\qquad
 r=\rho_B^\epsilon f+D_B^\epsilon b.
}
\tag{3.3}
$$

$G_B$ 是原 standalone homogeneous boundary propagator；$H_B$ 是 selected boundary source 到 bulk response；$\rho_B$ 是 bulk source 到 conjugate boundary response；$D_B$ 是同一个 boundary source 到 conjugate response。其定义始终保留所有未打开 physical boundaries。

自由理论在每个给定 smooth source history $b$ 上仍有一个完整的 affine sourced algebra：选择相容的 particular solution $\phi_b$，写 $\phi=\phi_b+\eta$，其中 $\eta$ 满足 homogeneous $B$。Smooth affine shift 保持旧 polynomial class，其 homogeneous commutator 仍为 $E_B$。这只用于临时 source family；release 后必须换成 $E_\#$，不能把这个 family 的 fixed-source bracket 不变地降到输出。

对 Dirichlet，$D_B$ 是带本文 action sign 的 DtN。对 Neumann，它是带符号约定的 NtD；对 Robin，它是 Robin-source-to-value response。**quartet 和完整 geometric trace relation 才是共同结构，DtN 不是其定义。**

在正确的 source/dual pairings 中，Green reciprocity 给

$$
\rho_B^R=(H_B^A)^*,\qquad D_B^R=(D_B^A)^*.
\tag{3.4}
$$

这里的 $*$ 含 boundary density pairing；它不是把任意时域 retarded operator 误当成自身对称。

### 3.3 Trace charts 与同一 opened relation

写

$$
\binom b r=M_B\binom q\Pi,
\qquad
M_D=1,\quad
M_N=\begin{pmatrix}0&1\\-1&0\end{pmatrix},\quad
M_R=\begin{pmatrix}-\sigma&1\\-1&0\end{pmatrix}.
\tag{3.5}
$$

这些变换保留 integration-by-parts 的边界 Green pairing。这里没有把它用来定义相空间或 Hamiltonian observables；它只是同一变分边界数据的 source coordinates。

对于一般线性 realization，可用在正确 trace Sobolev spaces 间可逆的 $M_B$。若某些频率上不存在 graph chart，先保留完整线性 relation，或者在共同 resolvent half-plane 中计算，再作 causal inversion。实频本征极点不是可以忽略的除零项。

令 $M_B^{-1}=(C_B\ N_B)$ 为两个 column blocks，$t=(q,\Pi)$。由 quartet，

$$
t=V_B^\epsilon f+U_B^\epsilon b,
\quad
V_B^\epsilon=N_B\rho_B^\epsilon,
\quad
U_B^\epsilon=C_B+N_BD_B^\epsilon.
\tag{3.6}
$$

$U_B$ 的 identity 部分尤其重要。例如 Robin 的 $\Pi=b-\sigma r$ 中，$b$ 不能被漏掉。

### 3.4 Source chart 的变换公式

若两套 opening coordinates 满足

$$
\binom{b'}{r'}=
\begin{pmatrix}a&b_0\\c&d\end{pmatrix}\binom b r,
\qquad Z=a+b_0D,
\tag{3.7}
$$

并且 $Z$ 在相应 causal source domain 可逆，则

$$
\begin{split}
G'&=G-HZ^{-1}b_0\rho,& H'&=HZ^{-1},\\
D'&=(c+dD)Z^{-1},&\rho'&=(d-D'b_0)\rho.
\end{split}
\tag{3.8}
$$

**证明。** 从 $b'=b_0\rho f+Zb$ 解出 $b$，代入 $u=Gf+Hb$ 与 $r'=cb+dr$。所有算符顺序保持原样，不要求 $D,\sigma,J$ 相互交换。证毕。

因此不同 closing realizations 的 $G_B$ 可以不同，但其完整 opened sourced relation 描述同一 bulk equation 的全部选中边界 traces。这个 statement 不说不同 $b=0$ 切片上的 standalone theories 等价。

---

## 4. Sewing 由 geometric traces 定义

### 4.1 $J$ 的类型与 adjoint

固定

$$
J:\mathcal Q_1\longrightarrow\mathcal Q_2.
$$

本文写

$$
q_2=Jq_1,\qquad \Pi_1+J^*\Pi_2=0.
\tag{4.1}
$$

这是一个类型一致的 convention。若改用 $q_1=Jq_2$，第二式应相应写成 $J^*\Pi_1+\Pi_2=0$；不能在非平凡 $J$ 下把两种 convention 混用。

$J$ 包括几何 pullback 与 bundle map，$J^*$ 是 boundary-density pairing 的对偶。Scalar density 的坐标变换用绝对 Jacobian；tangential orientation reversal 不凭空增加一个负号。两个 outward conormals 的相反定向已经由 (4.1) 的 flux sum 编码。

### 4.2 从作用量移除到透明关系

先在选中 faces 上移除 essential closing restrictions 和明确指定为 closing 的 boundary action。识别 $q_2=Jq_1$ 后，允许共同 trace 变分。其 boundary variation 为

$$
\delta(S_{1,\rm opened}+S_{2,\rm opened})|_\Gamma
=\langle\Pi_1+J^*\Pi_2,\delta q_1\rangle.
\tag{4.2}
$$

故得到 (4.1)。这里只有几何 traces，没有要求 $b_1=b_2$。

对于两个 Robin closures，(4.1) 在 source coordinates 中是

$$
q_2=Jq_1,\qquad
b_1+J^*b_2+\sigma_1q_1+J^*\sigma_2Jq_1=0.
\tag{4.3}
$$

将它误写成 $b_1+J^*b_2=0$，等价于把两个原 Robin actions 都保留为真实 interface action。

### 4.3 一般 mixed-realization reconstruction formula

将两个 standalone $G_B$ 作 block diagonal，$H_B$ 也按独立 boundary source components 组合。令

$$
\mathcal L_J(t_1,t_2)=
\binom{q_2-Jq_1}{\Pi_1+J^*\Pi_2}.
\tag{4.4}
$$

利用 (3.6)，设

$$
\mathcal M_B^\epsilon=\mathcal L_JU_B^\epsilon.
$$

匹配方程为

$$
\mathcal M_B^\epsilon b=-\mathcal L_JV_B^\epsilon f.
\tag{4.5}
$$

因此

$$
\boxed{
G_\#^\epsilon
=G_B^\epsilon-H_B^\epsilon
(\mathcal M_B^\epsilon)^{-1}\mathcal L_JV_B^\epsilon.
}
\tag{4.6}
$$

这是 quartet 的 mixed-boundary version。它不是 $D_1+D_2$ 的普遍公式；后者只在 Dirichlet共同值 parametrization 中出现。

对含 explicit trace derivative 的 observable，或给定的 geometric jump/response source $c$，使用

$$
b=(\mathcal M_B^\epsilon)^{-1}(c-\mathcal L_JV_B^\epsilon f).
\tag{4.7}
$$

特别是若扰动 $S\mapsto S+\varepsilon F$，$\delta F$ 含共同 trace 项 $\langle a,\delta q\rangle$，则 matching 的 response 源为 $-a$。不能在 Peierls 计算时把该项当成仍被固定的外参。

### 4.4 为什么逆算符存在于所需的因果范围

在 §2 的 smooth component 类中，$\mathcal M_B$ 的零核来自唯一性：若 $f=c=0$，匹配后的因果解是零，故 $b=B\gamma u=0$。

对于 smooth causal jump/flux data $c$，可在两侧 collars 构造 piecewise lift，使其 traces 实现 $c$，且不影响 unselected boundaries。再用 homogeneous transparent causal problem 消去 lift 的 bulk forcing。所得解具有指定 $c$。取其原 $B$-source traces 给出 (4.5) 的一个解，证明满射。整个 argument 发生在实际相容 source ranges 上；不声称任意 ambient boundary distribution 都有光滑响应。

$\mathcal M^{-1}$ 也可以先用 Laplace transform 定义于共同无极点半平面。在选用 relation 而非 graph 的一般情形，(4.6) 表示解同一个线性匹配问题，而不强行把每个中间 relation 写成 everywhere-defined inverse。

### 4.5 保留 boundary action 得到 defect

若保留选中 faces 的真实 potential，记其识别后之和为 $V_\Gamma(q)$，则

$$
S_\#=S_{1,\rm bulk}+S_{2,\rm bulk}+S_{\rm exterior}-V_\Gamma(q),
$$

相应条件是

$$
q_2=Jq_1,\qquad
\Pi_1+J^*\Pi_2-\frac{\delta V_\Gamma}{\delta q}=0.
\tag{4.8}
$$

这是一个真正的 defect/interface theory。它可以有自己的 closed binary composition，但不属于“移除之后的透明 theory 与 closing choice 无关”这一命题的比较对象。

如果 boundary action 含 dynamical boundary field、boundary kinetic term 或非局域记忆，必须明确移除哪些场与 coupling。保留时的输出应继续包含这些真实 interface degrees of freedom [8]；不能只删一个 Robin 系数就宣布它们消失。

---

## 5. 定理 A：封闭二元重建与被移除 realization 的独立性

### 5.1 二元操作的定义

对两个 §2 对象与一组本次选中的 paired components $\Gamma$，定义

$$
\mathfrak T_{B_1}(R_1)\boxtimes_{\Gamma,J}\mathfrak T_{B_2}(R_2)
:=\operatorname{Close}\circ\operatorname{Reconstruct}\circ
\operatorname{Match}_{\Gamma,J}\circ
(\operatorname{Open}_\Gamma\times\operatorname{Open}_\Gamma).
\tag{5.1}
$$

其具体内容是：只打开选中 components，按原 $B_i$ 构造 quartet；用 geometric traces 实施 (4.1)；重建 causal problem；将输出理解成 $R_\#=R_1\#_{\Gamma,J}R_2$ 上、只带尚存 physical boundaries 的 standalone action/domain。最后使用该完整理论的 observable recipe。

**Close 不表示在内部接缝上重新施加 D/N/Robin。** 接缝现在是内部，没有 boundary source，也没有独立 boundary variable。Close 表示输出不再携带临时 source family；剩余边界按其原 $B$ 关闭。相关 trace labels 仍可作为内部几何 observable，但不是 ports。

### 5.2 定理 A 的精确 statement

假定 §2 的模型条件、光滑几何／bundle sewing，以及 selected boundary actions 的完整 removal。令 $B_{\rm ext}$ 为未选中 components 原有的 realizations。则：

1. (5.1) 输出一个 §2 同类 standalone theory $(R_\#,B_{\rm ext})$。
2. (4.6) 构造的 $G_\#^{R/A}$ 与由输出作用量、domain 独立构造的 $G_{B_{\rm ext}}^{R/A}(R_\#)$ 相同。
3. 在 selected faces 上换用另一套 admissible D/N/Robin closing realizations，再完整移除它们，仍得到相同的输出 action/domain、$G^{R/A}$ 和 $E$。
4. 若允许的 Wick class、输出态／Wick representative 规则及复合场 prescription 相同，则输出 observable algebras 按 §9 的 assembly map 自然同构。

第 3 项不允许改变 retained physical boundaries、真实保留的 defect action、gluing map、metric/bundle jets 或输出 operator domain；这些改变本来就能改变理论。

### 5.3 输出 closed form 的直接构造

令 $\mathscr H=L^2(\Sigma_1)\oplus L^2(\Sigma_2)$。移除选中 faces 上的 Dirichlet restrictions 与 Robin form terms，定义

$$
\begin{split}
\mathscr V_\#=\{(u_1,u_2)\in H^1(\Sigma_1)\oplus H^1(\Sigma_2):\;&
q_2=Jq_1\text{ on }\Gamma,\\
&q=0\text{ on remaining }D\text{ components}\},
\end{split}
\tag{5.2}
$$

以及

$$
a_\#(u,v)=\sum_{i=1}^2\int_{\Sigma_i}
(\nabla u_i\cdot\nabla v_i+m^2u_iv_i)
+\sum_{e\in\mathrm{remaining\ Robin}}\int_e q_u\sigma_e q_v.
\tag{5.3}
$$

不管 selected faces 原来是 D、N 还是 Robin，(5.2)–(5.3) 完全相同。这里不能从原 $a_{B_1}+a_{B_2}$ 仅限制 trace 后不删项；那样会保留 Robin defect。

trace continuity 使 $\mathscr V_\#$ 在分片 $H^1$ 中闭合。$\sigma_e\ge0$ 及 trace inequality 使 $a_\#$ 的 form norm 与相应 $H^1$ norm 等价，且 $a_\#\ge m^2\|u\|^2$。区域内部紧支撑函数给稠密性。因此 $a_\#$ 确定正 self-adjoint $K_\#$。

### 5.4 与独立 standalone 输出的比较

设 $U$ 为 piecewise field 到 glued field 的几何 assembly。分片 $H^1$ 场的一阶分布导数中的 face delta，其系数正是 trace jump；(5.2) 消去该项。反向限制一个全局 $H^1$ 场得到同一 matching。因此

$$
U\mathscr V_\#=\mathscr V_{B_{\rm ext}}(\Sigma_\#),
\quad
 a_\#(u,v)=a_{B_{\rm ext},\Sigma_\#}(Uu,Uv).
\tag{5.4}
$$

由 closed-form representation 的唯一性，

$$
UK_\#U^{-1}=K_{B_{\rm ext}}(\Sigma_\#).
\tag{5.5}
$$

积分分部在 selected smooth seam 上给 $\Pi_1+J^*\Pi_2=0$，在剩余边界给原 N/Robin condition。没有把它们事先作为一个未证明的 global propagator 输入。

谱演算立即给

$$
UG_\#^{R/A}U^{-1}=G_{B_{\rm ext},R_\#}^{R/A},
\qquad UE_\#U^{-1}=E_{B_{\rm ext},R_\#}.
\tag{5.6}
$$

$K_\#\ge m^2$ 也证明输出仍在正 standalone 类中。

### 5.5 为什么 quartet 重建确实给同一个算符

对于一个 smooth causal bulk source $f$，(4.6) 构造的分片场满足：各区域的 bulk equation；所有未打开边界的原 $B$；selected faces 的 field matching 和 flux balance；以及 retarded/advanced support prescription。弱积分分部表明 assembly 后恰是 (5.3) 的 sourced wave problem。由该问题唯一性，它必须等于 (5.6) 的 response。

反过来，将 (5.6) 的解限制到各区域，取 $b_i=B_i(q_i,\Pi_i)$。区域 source completeness 使它们具有 (3.3) 的唯一表示，且满足 (4.5)。所以这里的 comparison 是双向的，不是只构造了一个可能的 candidate。

这一证明同时给出 closing-realization independence：替换 $B_i$ 改变的是解的 source coordinates 和辅助 homogeneous kernel，不改变 removal 后最终求解的 PDE/domain。故重建的 response 相同。定理 A 证毕。

### 5.6 何处使用已有 finite-sewing 结果

(5.4) 的 piecewise form assembly 是旧版 §3 的 form lemma 加上“只删除本次 selected boundary terms，保留 exterior terms”的扩展。它本身说明当前一次 sewing 后的输出是什么；它还没有证明下一次从这个封闭输出重新 opening 会产生正确的 $H,\rho,D$。后一点是下节的新引理。

---

## 6. 定理 B：重新 opening 与真正的 binary associativity

### 6.1 重新 opening 引理

设

$$
C=\mathfrak T_1\boxtimes_\Gamma\mathfrak T_2
$$

已经是一个封闭 standalone theory，$\Lambda$ 是其尚存 physical boundary 的一个子集，且现在才决定将它用于下一次 sewing。

**引理。** 从 $C$ 的实际 action/domain 出发，对 $\Lambda$ 重新构造 sourced problem，所得完整 quartet 等于以下辅助计算的结果：在原两片中临时加入对应 exterior source，保留 $\Gamma$ 上已完成的透明 matching，然后求解两片 sourced problems 并装配。等号包括所有 $G,H,\rho,D$ blocks 和同一 geometric exterior traces，不仅是 homogeneous $G$。

形式地，

$$
\operatorname{Open}_{\Lambda}(\mathfrak T_1\boxtimes_\Gamma\mathfrak T_2)
\simeq
\operatorname{Sew}^{\rm response}_{\Gamma}
\bigl(\operatorname{Open}_{\Gamma\cup\Lambda_1}\mathfrak T_1,
\operatorname{Open}_{\Gamma\cup\Lambda_2}\mathfrak T_2\bigr).
\tag{6.1}
$$

右边只是证明引理时使用的暂时全源描述，不是对象必须永久保存的一组 ports。

**证明。** 固定任意 bulk source $f$ 及 $\Lambda$ 上任意 admissible causal boundary source $b_\Lambda$。左侧解的限制满足各片方程、$\Gamma$ 上内部 matching、$\Lambda$ 上指定 sourced realization 及其余所有 homogeneous physical boundaries。反向 assembly 也成立：内部 flux terms 相消，保留下来的恰是 $C$ 的 action 及 $\Lambda$ source variation。

两边因此是同一个 sourced problem，causal uniqueness 给 field response 相同。分别令 $(f,b_\Lambda)=(f,0)$ 和 $(0,b_\Lambda)$，得到 $G$ 和 $H$ 的 equality；再取相同的 exterior geometric/conjugate trace，得到 $\rho$ 和 $D$ 的 equality。所有 source directions 都参与这个论证，不能只从无源解空间或 $G$ 的 equality 猜测其余 blocks。证毕。

对于 nonlinear theory，在有 smooth sourced solution maps 的同一存在域上，此证明先给全部非线性 source maps 相同，再给它们各阶 Fréchet derivatives 相同，见 §11。

### 6.2 三对象二元结合律

固定同一最终几何 quotient、同一组 paired side occurrences、同一 removal/retention policy 和最终 physical boundaries。假设两个括号化的中间结果都 admissible。则

$$
\boxed{
(\mathfrak T_1\boxtimes_{\Gamma_{12}}\mathfrak T_2)
\boxtimes_{\Gamma_{(12)3}}\mathfrak T_3
\ \cong\
\mathfrak T_1\boxtimes_{\Gamma_{1(23)}}
(\mathfrak T_2\boxtimes_{\Gamma_{23}}\mathfrak T_3).
}
\tag{6.2}
$$

下标表示每一步实际可见的 remaining boundary occurrences。若最终网络还含 $1$ 与 $3$ 的接缝，第二步必须把所有这次需要完成的 paired faces 一起包含；不能让两边实际粘合不同的几何。

**证明。** 左括号第一步由定理 A 得到 closed action/domain $C_{12}$；其面向区域 $3$ 的 physical boundary 仍施加原 $B$，并未预先开放。第二步按定义现在才移除该 closing realization。重新 opening 引理将其完整 response 等同于原三片在 $\Gamma_{12}$ 已透明匹配、其余本次 selected faces 已加源的辅助问题。右括号同理。

这两种辅助问题最终有同一个 form domain

$$
\mathscr V_{\rm fin}=\{(u_1,u_2,u_3):\text{所有最终 geometric trace matchings，且最终 exterior }D\},
\tag{6.3}
$$

和同一个 form

$$
a_{\rm fin}=\sum_i a_{i,\rm bulk}
+\sum_{e\in\rm final\ exterior\ Robin}a_e
+\sum_{\rm deliberately\ retained\ defects}a_{\rm defect}.
\tag{6.4}
$$

在纯透明主定理中最后一项为空。每个 bulk action 恰计一次；每个最终内部 closing term 恰被移除一次；任何未参与 sewing 的 exterior term 始终保留。由 form equality／causal uniqueness 得相同的 final $K,G,E$，其几何装配给自然同构。

在相同输出 Wick 与 renormalization prescription 下，§9、§12 将这一同构提升到 observable algebras，得到

$$
(\mathfrak A_1\boxtimes\mathfrak A_2)\boxtimes\mathfrak A_3
\cong\mathfrak A_1\boxtimes(\mathfrak A_2\boxtimes\mathfrak A_3).
\tag{6.5}
$$

这就是两个真实闭合中间 theory 的 binary associativity，而不是定义阶段始终保留所有 open sources。

### 6.3 四对象 coherence

associator 在每个 observable coefficient 上是“同一个最终几何场标签的重新分组”。沿四对象 pentagon 任一路径，最后对标签的映射均为同一 assembly。kernel contractions、equation ideals 和相同 prescription 也随之一致，故 pentagon 交换。若不同节点使用不同 Wick representatives，插入对应的 smooth Wick-change maps；它们的 cocycle law 给同一结果。

这不要求把所有括号化对象当作集合上字面相等；不同的 quotient/coordinate presentations 通过上述 canonical isomorphisms 比较。这里的自然性针对保留 geometry、action、boundary realization 和 quantum prescription 的结构同构，而不是任意抽象 algebra homomorphism。

### 6.4 旧 finite-successive theorem 的准确地位

旧版 §7.3 给出的 statement 是：给定完整共同 trace/collar 数据后，最终 form 和 response 消元不依赖消元顺序。它在本证明中只充当

$$
\text{共同最终 domain／已打开 response 的 coherence lemma}.
\tag{6.6}
$$

新证明另外需要两个在旧 presentation 中未被单独完成的步骤：一是每次操作真正输出带 remaining $B$ 的 closed standalone theory；二是 (6.1) 的 reopening compatibility，且必须比较完整 source maps。没有这两个步骤，旧 theorem 不能被直接改名为 (6.2)。

### 6.5 部分运算的共同定义域

在 §2 的非负 Robin、光滑完整组件类中，正性和 closed-form 条件沿有限二元操作保持，因此没有额外 stability obstruction。对于负 Robin、不定 boundary kinetic terms、非光滑 quotient、非局域 $J$ 或 nonlinear blow-up，$\boxtimes$ 只能是部分运算。

一般结合律的准确含义是：当两种括号化各步都在 admissible class 中，且构造同一个最终 action/domain 时，输出自然同构。最终 theory 存在不自动保证任意不稳定的中间参考 theory 也可用。

这个限制有实际例子。取 $m=0.8$，第一片长度 $a=0.2$、外端 Robin $\sigma=-1$、待粘端 Dirichlet；由 $|u(0)|^2\le a\int|u'|^2$，其空间 form 仍严格正。第二片长度 $2$、待粘端 Dirichlet、外端 Neumann，也严格正。透明粘合后得到长度 $2.2$、保留 $\sigma=-1$／Neumann 的 interval。对 form-domain trial function $u(x)=e^{-x}$，

$$
a_{\rm out}[u]=\frac{1+m^2}{2}(1-e^{-4.4})-1<0.
\tag{6.7}
$$

所以两个正 standalone inputs 的输出未必仍有正 $K$，除非控制 retained boundary terms。这里 classical semibounded wave problem 仍可存在，但本文的 stationary ground-kernel prescription 不再适用；这不是声称 inverted-mode free algebra 无法量子化。非负 Robin 子类的选择确实消除了这种具体的中间／输出正性问题。


---

## 7. 五种 mixed boundary realizations 的显式区间 benchmark

### 7.1 几何 relation 先独立求出

两个区间长度为 $a,b$，本节先取 retained outer endpoints 为 Dirichlet。$x_i$ 都从各自 outer endpoint 朝待粘端计距。时间 Laplace transform 中

$$
\kappa=\sqrt{s^2+m^2},\qquad\operatorname{Re}s>0,\quad\operatorname{Re}\kappa>0.
$$

定义

$$
h_\ell(x)=\frac{\sinh\kappa x}{\sinh\kappa\ell},\qquad
d_\ell=\kappa\coth\kappa\ell,
\tag{7.1}
$$

$$
g_{\ell D}(x,y)=
\frac{\sinh(\kappa x_<)\sinh(\kappa(\ell-x_>))}{\kappa\sinh\kappa\ell}.
\tag{7.2}
$$

对任意 $f_i$，令 $A_i=\langle h_i,f_i\rangle$。该区域全部 geometric trace solutions 满足

$$
u_i=g_{iD}f_i+h_iq_i,\qquad \Pi_i=A_i-d_iq_i.
\tag{7.3}
$$

(7.3) 是用于算出坐标表的恒等式，不表示必须把 Dirichlet 当作 fundamental input。

### 7.2 各自自然的 quartet

在每种 standalone closure 及其自然 source chart 中，直接由 (7.3) 解得

$$
\begin{array}{c|cccc}
B&G_B&H_B&\rho_B&D_B\\\hline
D&g_D&h&h^*&-d\\
N&g_D+hh^*/d&-h/d&-h^*/d&1/d\\
R_\sigma&g_D+hh^*/(d+\sigma)&-h/(d+\sigma)&-h^*/(d+\sigma)&1/(d+\sigma)
\end{array}
\tag{7.4}
$$

这里 $h^*$ 表示空间 source pairing，不是对 Laplace parameter 做复共轭。时域 reciprocity 仍是 retarded/advanced adjoint relation。

例如 Robin standalone 的 $b=0$ 允许 $q=A/(d+\sigma)$，所以其 $G_R$ 确实不同于 $G_D$。但 opening 后，$b$ 可调整，(7.4) 描述完整 relation (7.3)。

### 7.3 D/D、D/N、N/N、R/R、R/D 的 matching equations

令两侧 source-response variables 为 $(b_i,r_i)$，取 $J=1$。透明 matching 分别是

$$
\begin{array}{c|cc}
B_1/B_2&\text{field matching}&\text{bulk response balance}\\\hline
D/D&b_1=b_2&r_1+r_2=0\\
D/N&b_1+r_2=0&r_1+b_2=0\\
N/N&r_1=r_2&b_1+b_2=0\\
R_{\sigma_1}/R_{\sigma_2}&r_1=r_2&b_1+b_2-(\sigma_1+\sigma_2)r_1=0\\
R_\sigma/D&r_1+b_2=0&b_1-\sigma r_1+r_2=0
\end{array}
\tag{7.5}
$$

把 (7.4) 分别代入五组不同方程，全部得到

$$
q_1=q_2=\frac{A_1+A_2}{d_1+d_2}.
\tag{7.6}
$$

因此

$$
\boxed{
\widehat G^\#_{ij}(x,y)
=\delta_{ij}g_{iD}(x,y)+\frac{h_i(x)h_j(y)}{d_1+d_2}.
}
\tag{7.7}
$$

这同时重建同区与跨区 blocks。利用

$$
\coth A+\coth B=\frac{\sinh(A+B)}{\sinh A\sinh B},
$$

跨区 block 变为

$$
\widehat G^\#_{12}(x,y)=
\frac{\sinh\kappa x\sinh\kappa y}{\kappa\sinh\kappa(a+b)}.
\tag{7.8}
$$

左区 $x\le y$ 时，同区 block 为

$$
\widehat G^\#_{11}(x,y)=
\frac{\sinh\kappa x\sinh\kappa(a+b-y)}{\kappa\sinh\kappa(a+b)}.
\tag{7.9}
$$

二者都是长度 $a+b$ 的独立 uncut Dirichlet resolvent。解析 Laplace inversion 唯一性给 retarded equality，transpose 给 advanced equality。SymPy 对五种 source equations 分别求解并验证 (7.6)，不是只检查最后给出的共同公式。

### 7.4 保留 Robin action 的反例

若 R/R 时错误地使用 $b_1+b_2=0$，则

$$
q=\frac{A_1+A_2}{d_1+d_2+\sigma_1+\sigma_2}.
\tag{7.10}
$$

其相对于透明结果的改变，恰是保留 quadratic interface potential $V_\Gamma=\tfrac12(\sigma_1+\sigma_2)q^2$ 的效果。因而 closing-realization independence 不是“所有 Robin 系数神奇地不重要”，而是**其整个 closing contribution 已被真正移除**。

### 7.5 任意 retained D/N/Robin 外端的闭合 kernel

为检验中间结果不是悄悄带着 open ports，另直接构造一般 closed interval。对长度 $L$，在两端写

$$
b_e=\alpha_e q_e+\beta_e\Pi_e,
\quad
(\alpha,\beta)_D=(1,0),\quad
(\alpha,\beta)_N=(0,1),\quad
(\alpha,\beta)_R=(-\sigma,1).
\tag{7.11}
$$

坐标 $x\in[0,L]$ 下 $\Pi_L=u'(0),\Pi_R=-u'(L)$。令

$$
\begin{split}
f_L(x)&=\beta_L\cosh\kappa x-\frac{\alpha_L}{\kappa}\sinh\kappa x,\\
f_R(x)&=\beta_R\cosh\kappa(L-x)-\frac{\alpha_R}{\kappa}\sinh\kappa(L-x),\\
\mathcal W&=
\left(\beta_L\beta_R\kappa+\frac{\alpha_L\alpha_R}{\kappa}\right)\sinh\kappa L
-(\alpha_L\beta_R+\beta_L\alpha_R)\cosh\kappa L.
\end{split}
\tag{7.12}
$$

则

$$
\widehat G_B(x,y)=\frac{f_L(x_<)f_R(x_>)}{\mathcal W},
\qquad
\widehat H_{B,L}(x)=-\frac{f_R(x)}{\mathcal W},\quad
\widehat H_{B,R}(x)=-\frac{f_L(x)}{\mathcal W}.
\tag{7.13}
$$

$H_{B,e}$ 满足自己的 source 为 $1$、另一端 source 为 $0$。取它们的端点值、outward response 及 (3.1) 的 $r$，直接给全部 $\rho,D$。

附带代码的 `ClosedInterval` 对象只存 $L,m,B_L,B_R$。一次 binary sewing 后，将其验证为新的 closed interval；下一次再由 (7.12)–(7.13) 为该实际闭合输出构造 $H$，并与分片 auxiliary-source computation 比较全部 exterior traces。五种 mixed pairs 都保留非零 exterior Robin 系数；另对四区间的全部五种 binary parenthesizations逐步重复此过程。

因此数值检查不仅比较“所有 ports 一开始开放”的线性代数，也实际比较每个 closed intermediate 的新 sourced responses。连续算符结论由定理 A/B 证明，数值只是独立的显式核验。

---

## 8. Self-sewing、非平凡 $J$ 与定向

### 8.1 Self-sewing 不是 $\mathfrak T\boxtimes\mathfrak T$

同一 region 的两个 boundary occurrences 要粘在一起时，只有一份 bulk field、一份 action 和一份 closed $G_B$；临时打开的是两个 boundary slots。记作 $\operatorname{Sew}_{s,\bar s}\mathfrak T$ 更清楚。把它写成两个独立 copies 的二元乘积会改变 theory。

应用 (3.3) 时，$H$ 有两个 source columns，$D$ 是包含 off-diagonal entries 的双边界 response matrix。这些 off-diagonal entries 是同一 region 内传播的结果，不能丢掉。

### 8.2 一个 interval 到 circle／twisted circle 的完整公式

先以 D/D source coordinates 计算长度 $L$ 的单 interval。令

$$
h_0(x)=\frac{\sinh\kappa(L-x)}{\sinh\kappa L},\qquad
h_L(x)=\frac{\sinh\kappa x}{\sinh\kappa L},
$$

$$
\Pi=A-\mathcal Dq,\qquad
\mathcal D=\begin{pmatrix}d&-c\\-c&d\end{pmatrix},\quad
d=\kappa\coth\kappa L,\quad c=\kappa\operatorname{csch}\kappa L.
\tag{8.1}
$$

对实线 bundle 的 $\varepsilon=\pm1$，条件为

$$
q_L=\varepsilon q_0,\qquad \Pi_0+\varepsilon\Pi_L=0.
\tag{8.2}
$$

消去一个共同值给

$$
\widehat G_\varepsilon(x,y)=g_D(x,y)+
\frac{[h_0(x)+\varepsilon h_L(x)][h_0(y)+\varepsilon h_L(y)]}{2(d-\varepsilon c)}.
\tag{8.3}
$$

令 $\Delta=|x-y|\in[0,L]$，同一 kernel 可独立写为 twisted image sum：

$$
\boxed{
\widehat G_\varepsilon(x,y)=
\frac{e^{-\kappa\Delta}+\varepsilon e^{-\kappa(L-\Delta)}}
{2\kappa(1-\varepsilon e^{-\kappa L})}.
}
\tag{8.4}
$$

$\varepsilon=1$ 是 periodic circle，$\varepsilon=-1$ 是非平凡实线 bundle 的 antiperiodic sector。谱分别为

$$
m^2+(2\pi n/L)^2,\qquad
m^2+((2n+1)\pi/L)^2.
\tag{8.5}
$$

从任意 D/N/Robin endpoint pair 的 (7.13) 出发，同时打开两个端点并解 (8.2)，也得到 (8.4)。代码对全部 $4\times4$ 个 endpoint choices、两种 twists、多个复 Laplace 参数和观测点逐项检验；每次始终只有一份 standalone interval kernel。

### 8.3 非平凡 bundle map：不要求 $J$ 与 Robin 系数交换

对两个实分量取正交矩阵 $J$。在 (7.3) 的标量 bulk operator 作用于各分量的模型中，透明结果为

$$
q_1=\frac{A_1+J^*A_2}{d_1+d_2},\qquad q_2=Jq_1.
\tag{8.6}
$$

允许两侧为任意非负对称矩阵 Robin coefficients $\sigma_i$；通过 $q_i=(d_i+\sigma_i)^{-1}(A_i-b_i)$ 和完整 (4.3)，$\sigma_i$ 仍然消去，不需要 $[J,\sigma_i]=0$。代码使用随机非交换正矩阵作这一检查。

交换 side labels 后 $J\mapsto J^{-1}$，新参考 trace 为

$$
q_2=\frac{A_2+JA_1}{d_1+d_2}=Jq_1.
\tag{8.7}
$$

这就是 coorientation／side exchange 的相容性。对 complex scalar 的 unitary phase $J=e^{i\vartheta}$，也可将其视为两个实分量的旋转，而不引入 gauge theory。

### 8.4 非平凡几何 map 与 orientation reversal

取平直 cylinder $[0,L]_x\times S^1_P{}_y$。自粘条件

$$
\phi(L,y)=\phi(0,y+a)
\tag{8.8}
$$

给一个斜平移识别的 flat torus。对 $k=2\pi r/P$，相容模式满足

$$
p_x=\frac{2\pi n+ka}{L},\qquad
\omega^2=m^2+k^2+p_x^2.
\tag{8.9}
$$

这是一个不等于 identity 的 geometric $J$；closing-realization independence 只比较保持同一个 $a$ 的 constructions，不宣称改变 $a$ 后 spectrum 不变。

把 map 改为 $y\mapsto-y$，输出是 smooth Klein bottle。$J$ 的偶 sector 在 $x$ 方向 periodic，奇 sector antiperiodic。实标量作用量以 metric density 积分，在非定向空间上仍有定义；没有 chiral/gauge obstruction 被引入本模型。Tangential reflection 的 Jacobian 用绝对值，不能额外给整个 scalar action 乘负号。

上述 maps 保持 time coordinate 和 collar metric。任意混合时间的 $J$ 可能产生 closed causal curves 或破坏指定的 causal problem，因而不属于定理 A 自动允许的 maps。

### 8.5 Self-sewing 与 binary sewing 的顺序

例如两个 intervals 可先沿一个端点 pair 二元粘成一个 closed interval，再 self-sew 剩余两个端点；也可在一次 binary operation 中把两个 endpoint pairs 同时透明匹配，直接得到 circle。两种描述最终具有相同的 field identification、form 和 action multiplicity。

重新 opening 引理同样适用于两个 slots 属于同一 cluster 的情况：不是增加 field copies，而是给该 cluster 两个实际 boundary components 加源。由此，self-sewing、binary sewing 和其混合顺序在共同 admissible final geometry 上一致。它们是一个带 binary composition 和 self-contraction 的几何操作体系，不应通过复制对象来假装 self-contraction 也是普通二元输入。

---

## 9. 沿用的 observable class 与自由量子重建

### 9.1 不重新追求最大函数类

保留旧版的 fixed-coefficient microlocal polynomials：

$$
F(\phi)=\sum_{k=0}^N\frac1{k!}\langle f_k,\phi^{\otimes k}\rangle,
\qquad f_k\in\mathcal E'(R^k)_{\rm sym},
\tag{9.1}
$$

$$
\operatorname{WF}(f_k)\cap
(\overline V_+^{\,k}\cup\overline V_-^{\,k})=\varnothing.
\tag{9.2}
$$

因果锥包含零 covectors，但排除全零 tuple。时间支持紧致。$N$ 限制单个 observable 的场次数，不限制 modes 数。这个 polynomial 类避开一般逐配置 microcausal smoothness 的缺陷，并包含在 equicausal 类中 [3]。

对于真正的 physical boundary，$\mathcal E'(R^k)$ 的含边界版本必须明确：用 local collar extension 中支持在 $\overline R^k$ 的分布，或等价的 extendible/one-sided trace calculus。只有在该 calculus 中证明了 kernel contractions，才把相应 boundary coefficients 列入。不能仅凭内部的 (9.2) 就默认所有物理边界限制合法。

### 9.2 给定完整 closed realization 的 algebra recipe

取

$$
W_B(t,t')=\frac{e^{-i\sqrt{K_B}(t-t')}}{2\sqrt{K_B}},
\qquad W_B-W_B^T=iE_B.
\tag{9.3}
$$

定义

$$
F\star_{W_B}G=
\sum_{r\ge0}\frac{\hbar^r}{r!}
\langle F^{(r)},W_B^{\otimes r}G^{(r)}\rangle,
\quad F^*=\overline F.
\tag{9.4}
$$

对普通 polynomials 该和有限。每条 $W$ contraction 的两端分别具有相反的因果频率方向，(9.2) 排除了分布乘积可能的零 covector sum，并使输出仍满足同一条件。三个 polynomials 的两种结合顺序枚举同一批 Wick contractions，故 (9.4) 结合；首阶反对称部分给 Peierls bracket。因此旧版 free closure proof 保持不变。

令 $\mathcal J_B$ 是在声明的 bulk equation 与 physical $B$ 上恒为零的该类函数。使用第 9.3 节允许的 bisolution cutoff/contraction continuity 时，

$$
\mathfrak A_B^{\rm cl}(R)=\mathcal P_{\mu,B}(R)/\mathcal J_B,
\quad
\mathfrak A_B^{\rm q}(R)=
(\mathcal P_{\mu,B}(R)[[\hbar]],\star_{W_B},*)/\mathcal J_B[[\hbar]].
\tag{9.5}
$$

没有给 equation locus 引入辛形式。完整 vanishing ideal 的 quantum stability 也不能只用一句“$W$ 是 bisolution”代替：需将其收缩写为沿 smooth homogeneous solution directions 的极限。

### 9.3 Boundary microlocal 输入及 interval 的直接证明

**条件 Q。** 所用 $W_B$ 在内部及被纳入的 one-sided/timelike trace calculus 中具有定向的 microlocal spectrum condition；有限阶 trace/jet pullbacks 和 (9.4) contractions 存在；smooth spectral cutoffs 在允许配对的 normal distribution topology 中收敛。这里也要求声明的 boundary polynomial domain 包含实际使用的能量／复合场。

对于内部紧支撑的 polynomial kernels，静态 positive-frequency spectral construction 与内部 wave equation 给所需定向性质。对于任意 curved reflecting boundary 的全 trace calculus，条件 Q 是一个独立 PDE/microlocal 输入，而不是本文由一个字母 $B$ 自动证明的事实。反射奇性本来就不同于 boundaryless Hadamard kernel 的奇性 [4]。

**引理 9.1。** 在 smooth $1+1$ compact intervals 上，对任意 D/N/有限非负 Robin endpoint choices，(9.1)–(9.2) 的 collar-supported polynomial calculus满足条件 Q；同样适用于有限平直可分离 product models。

**证明。** 空间 Sturm–Liouville modes 在每个 collar 中是有限个 $e^{\pm ik_nx}$ 的线性组合，且 $\omega_n^2=k_n^2+m^2$。它们可以用同一函数延拓过端点。归一化 coefficients 及其有限 jet derivatives 至多多项式增长；$k_n$ 至多有有限个例外，渐近为 $n\pi/L+O(1)$。Robin 非负保证 $k_n^2\ge0$。

在 $W_N$ 的有限 mode sum 中，每项的联合 Fourier frequency 具有形式

$$
(-\omega_n,\pm k_n;\ \omega_n,\pm k_n).
\tag{9.6}
$$

它们位于同一个左右频率定向的闭 causal cone 中，并满足 $\tau_1+\tau_2=0$；该 cone 不含单腿非零而另一腿为零的点。取紧支撑 smooth cutoff。在与该闭 cone 分离的 Fourier cone 上，cutoff Fourier transform 的快速衰减与 mode coefficients 的多项式界给

$$
\sup_{\zeta\in C}(1+|\zeta|)^p
|\widehat{\chi(W-W_N)}(\zeta)|\longrightarrow0
\tag{9.7}
$$

对任意 $p$ 成立；取足够高的衰减阶即可对 $n>N$ 求和。同样控制有界 smooth test families 的分布 seminorms。有限阶微分只增加有限多项式幂，因此论证同时处理 normal/time derivatives。有限 tensor powers 与允许的 contractions 在此 topology 中连续，给条件 Q。高维平直 product 只增加多项式 spectral counting，仍可选更高衰减阶。

若 $F\in\mathcal J_B$，每个有限 $W_N$ 的各条腿都是 smooth homogeneous $B$ solution，所以 $F$ 在 equation locus 上沿这些方向的全部 derivatives 为零。因此 $F\star_{W_N}G$ 与 $G\star_{W_N}F$ 在该 locus 上为零。用 (9.7) 的合法收缩极限得到 $\mathcal J_B[[\hbar]]$ 的两侧 ideal 性。证毕。

这不是把弱分布收敛误当成乘积收敛，也不是用有限模代数代替原 continuum algebra。

### 9.4 本次 sewing 时新建的 joint collar labels

独立 closed regions 的 algebraic tensor product 不包含全部跨 seam 的 distributional coefficients；尤其不能把任意 $f_k$ 乘 characteristic functions 来分片。

实际 reconstruct 阶段使用本次 geometric sewing 的 collar charts，把两侧 test labels 的 smooth jets 按 $J$ 和坐标过渡识别，构造输出的 smooth test space。对其多点版本取 compactly supported distribution dual，并施加同一 (9.2)。这只使用 regions 的 kinematics 和本次 $J$，不使用一个预先输入的 global Poisson algebra。

任意输出 polynomial coefficient 可在有限 product collar/interior cover 上用 smooth partition of unity 分解为这些 labels；反向 assembly 也存在，故 coefficient classes 双射。新建的 collars 是输出 manifold 的普通几何 charts，不是尚待以后 sewing 的 open ports。

在 smooth 输出中，timelike submanifold $C$ 上的

$$
\int_C b\,P(j^r\phi|_C)
\tag{9.8}
$$

满足 (9.2)：其 multi-diagonal conormals 的 covector sum 属于 spacelike $N^*C$，而非零同向 causal covectors 的和不可能 spacelike。故旧版 timelike-trace membership 结果仍适用于已经成为内部的 seam。它与第 9.3 节的 reflecting physical-boundary proof 是两件事。

### 9.5 定理 C：自由 classical/quantum reconstruction

在定理 A 的动力学条件与实际使用的 boundary 条件 Q 下，令 $\Theta$ 为上述 geometric coefficient assembly。则

$$
\boxed{
\mathfrak A_{B_1}(R_1)\boxtimes_{\Gamma,J}\mathfrak A_{B_2}(R_2)
\ \simeq\
\mathfrak A_{B_{\rm ext}}(R_1\#_{\Gamma,J}R_2)
}
\tag{9.9}
$$

同时作为 classical Poisson algebra 与 formal free quantum $*$-algebra 成立。五种 mixed interval realizations 都满足全部假设，包括 trace polynomials。

**证明。** 由定理 A，$K_\#$ 与输出 $K$ unitary equivalent，故 spectral construction给

$$
UE_\#U^{-1}=E_{\rm out},\qquad
UW_\#U^{-1}=W_{\rm out}
\tag{9.10}
$$

的相应 kernel statement。对 (9.4) 每个有限 contraction 作变量替换，得到

$$
\Theta\{F,G\}_\#=\{\Theta F,\Theta G\}_{\rm out},\qquad
\Theta(F\star_\#G)=\Theta F\star_{\rm out}\Theta G.
\tag{9.11}
$$

weak transmission 与输出 field equation 等价，因此 $\Theta\mathcal J_\#=\mathcal J_{\rm out}$。第 9.3 节保证 quantum ideals，故可取商。第 9.4 节给系数双射，因而这是整个已选 polynomial class 的 reconstruction，不只是线性 CCR。证毕。

### 9.6 Closing-realization independence 的量子含义

每次输出都用它自己的完整 $K_{\rm out}$ 构造 $W_{\rm out}$，或者使用同一输出 theory 的相容 Wick class。若同一 dynamics 的两个 representatives 满足 $W'=W+s$、$s$ smooth symmetric bisolution，则

$$
\alpha_s=\exp\left(\frac\hbar2
\left\langle s,\frac{\delta^2}{\delta\phi^2}\right\rangle\right)
\tag{9.12}
$$

给通常的 $*$-isomorphism，且 $\alpha_{s_1}\alpha_{s_2}=\alpha_{s_1+s_2}$。

**不能把 $W_{\rm out}-W_B$ 直接代入 (9.12)。** 它们通常有不同的 antisymmetric parts 和反射奇性。这一步是 reconstruction 新 quantum product，不是旧 standalone product 的普通 Wick representative change。

若只给最终 $E$ 而不指定 quantum positive-frequency/Wick 或 renormalization datum，一般不能唯一指定某个具体量子态／数值真空能。定理比较的是相同输出选择下的 algebras，或其 Wick-equivalence classes，不是所有原 boundary vacua 的等价。

---

## 10. Coincidence、能量与物理 boundary contributions

### 10.1 Wick composite 不等于直接取 $W(x,x)$

采用 (9.4) 不允许把 $\phi(x)\star\phi(y)$ 未经 subtraction 直接限制到 $x=y$。Local Wick symbols、derivative composites 和 stress tensor 仍由指定的 Hadamard/point-splitting 或等价 prescription 定义；允许的有限项属于 theory 的 renormalization data [5]。

例如 $Q_f=\tfrac12\int f\phi^2$，

$$
Q_f\star_WQ_g=Q_fQ_g+
\hbar\iint f(x)g(y)\phi(x)W(x,y)\phi(y)
+\frac{\hbar^2}{2}\iint f(x)g(y)W(x,y)^2.
\tag{10.1}
$$

同区、跨区和被允许的 boundary trace contractions 均使用重建后的 $W_\#$。定理 C 同时比较最后的 double contraction，不只是首阶 commutator。

### 10.2 Standalone Robin theory 的能量包含 surface term

取 $\chi\in C_c^\infty(\mathbb R)$，$\int\chi=1$。定义

$$
\boxed{
H_{B,\chi}=\frac12\int dt\,\chi(t)
\left[\|\dot\phi\|^2+
\int_\Sigma(|\nabla\phi|^2+m^2\phi^2)+
\sum_{e\in\Gamma_R}\int_e q\sigma_eq\right].
}
\tag{10.2}
$$

这是沿用旧版 time-smoothed quadratic energy 的必要 physical-boundary 修正。Dirichlet、Neumann 没有相应的 Robin potential term。

沿 closed solutions，bulk energy 的时间导数为

$$
\frac{dH_{\rm bulk}}{dt}=\int_{\partial\Sigma}\dot q\,\partial_n\phi
=-\int_{\Gamma_R}\dot q\,\sigma q,
\tag{10.3}
$$

恰被 surface energy derivative 抵消。因此 (10.2) 的 on-shell class 与 $\chi$ 无关。

把完整 form variation 包括在内，on shell 有

$$
H_{B,\chi}^{(1)}=-\chi'\dot\phi+2\chi K_B\phi,
\qquad E_BH_{B,\chi}^{(1)}=\dot\phi.
\tag{10.4}
$$

第二式直接由 (2.7) 的 sine/cosine 演化及对 $\chi'$ 积分分部得到。因此

$$
\{F,H_{B,\chi}\}_B=\langle F^{(1)},\dot\phi\rangle.
\tag{10.5}
$$

若漏掉 Robin surface energy，第一式会留下真实 boundary work，不能获得该 closed-theory generator。

### 10.3 量子能量生成元

在 $W_B$ ground normal ordering 中以同一个 quadratic symbol 定义 $H_B^W$。两个正频 mode 的 energy bilinear 为零：空间 form 包含 surface term，并满足 $a_B(e_n,e_m)=\omega_m^2(e_n,e_m)$；与两个时间导数的 $-\omega_n\omega_m$ 项逐个相消。故将 $H_B^{(2)}$ 的两条腿同时与同向 $W_B$ 收缩得到零。

先在有限 spectral sum 上验证，再用引理 9.1／条件 Q 取合法极限，得到

$$
\frac1{i\hbar}[F,H_B^W]_{\star_{W_B}}
=\langle F^{(1)},\dot\phi\rangle
\quad\text{on shell}.
\tag{10.6}
$$

这证明实际 free energy 可计算，而不是把它排除到仅含线性场的 algebra 之外。一般 curved physical boundary 上的所有 local boundary stress limits仍取决于相应 boundary renormalization prescription；不能把存在一个 total spectral Hamiltonian等同于证明了全部 local stress extensions。

### 10.4 Sewing 时哪些能量项被删除

应在 prequotient field labels 上先移除 selected closing surface energy，然后使用新 $W_\#$。Retained exterior Robin energies不变；透明 seam 没有额外 surface potential。若有意保留 $V_\Gamma$，输出能量必须包含它。

所以能量的准确 assembly statement 是

$$
H_{\rm out}^{\rm ren}=
\operatorname{Ren}_{\rm out}\left[
\sum_i H_{i,\rm bulk}+H_{\rm retained\ exterior}
+H_{\rm retained\ defect}\right],
\tag{10.7}
$$

不是两个旧 standalone normal-ordered Hamiltonians 的不加修改之和，也不是它们的旧 vacuum expectation values 之和。

### 10.5 显式的 renormalized vacuum interaction energy

对长度 $L$ 的 $1+1$ interval，设 $m>0$。以下数值设 $\hbar=1$，恢复时整体乘 $\hbar$。减去 bulk vacuum term 与两面各自的 isolated-wall self energies 后，定义 interaction part

$$
E_{\rm int}(L;m;B_L,B_R)
=\frac1{2\pi}\int_0^\infty d\xi\,
\log\left[1-r_L(\kappa)r_R(\kappa)e^{-2\kappa L}\right],
\quad\kappa=\sqrt{\xi^2+m^2},
\tag{10.8}
$$

其中

$$
r_D=-1,\qquad r_N=1,\qquad r_{R_\sigma}=\frac{\kappa-\sigma}{\kappa+\sigma}.
\tag{10.9}
$$

其推导可直接从 (7.12) 的 Robin secular determinant 分解读出：

$$
\mathcal W_{RR}=
\frac{(\kappa+\sigma_L)(\kappa+\sigma_R)e^{\kappa L}}{2\kappa}
\left[1-\frac{(\kappa-\sigma_L)(\kappa-\sigma_R)}
{(\kappa+\sigma_L)(\kappa+\sigma_R)}e^{-2\kappa L}\right].
\tag{10.10}
$$

相对于 bulk 与 isolated-wall reference 的 frequency determinant 只剩方括号。对 vacuum $\tfrac12\operatorname{Tr}\sqrt K$ 作 Euclidean frequency contour representation 得 (10.8)。指数衰减保证 UV 有限；$m>0$ 和非负 Robin 参数避免本例的不稳定极点。这一 subtraction convention 不声称固定了全部可另选的单墙有限能量。

DD 时还得到

$$
E_{\rm int}^{DD}=-\frac m{2\pi}\sum_{n=1}^\infty\frac{K_1(2mLn)}n,
\tag{10.11}
$$

其质量趋零极限为 $-\pi/(24L)$，DN 则为 $+\pi/(48L)$。这些极限用于核验能量表达，不用于声称含零模的 massless ground state 已定义。

在代码中的输出 interval $L=1.8,m=0.8,\sigma_L=0.2,\sigma_R=0.6$，

$$
E_{\rm int}=-0.000874334378438664.
\tag{10.12}
$$

内部原先选 D/D、D/N、N/N、R/R、R/D 均重建这个同一输出；其 interaction energy 也相同。若把最终 retained exterior 改成 D/D，则同一 $L,m$ 下为 $-0.00602164327801737$。这恰好显示：**被移除的 closing choice 不重要，最终保留的 physical realization 仍然重要。**

---

## 11. Nonlinear boundary conditions 可以推广到什么程度

### 11.1 正确的 nonlinear source map

对 boundary potential

$$
S_\partial=-\int_\Gamma V(q),\qquad
\Pi-V'(q)=0,
\tag{11.1}
$$

自然 opening 是

$$
b=\Pi-V'(q),\qquad r=-q.
\tag{11.2}
$$

它定义非线性 sourced solution map，而不是一个与背景无关的 quartet。在选定 background $\bar\phi$ 上，其一阶 variation 为

$$
\delta b=\delta\Pi-V''(\bar q)\delta q.
\tag{11.3}
$$

这里应使用选定输出 background 的各片限制；它们一般不满足原 homogeneous closing condition，而满足 background source $\bar b_i=\bar\Pi_i-V_i'(\bar q_i)$。Retarded/advanced 限制施加于 $\delta b_i$，不要求这个背景 source 本身在整个过去为零。

所以 linearized quartet 是 Robin-type，但系数依赖 background。更高响应包含 $V'''$, $V^{(4)}$ 等；仅把线性 $D$ 换成一个数值矩阵而不保留这些 derivatives 不足以定义 nonlinear Peierls structure。

### 11.2 局部 classical independence 定理

假设 nonlinear sourced problems 在一个明确的共同存在域上唯一、smooth，linearized sourced problems 也 well posed；选中 closing actions 及其全部 derivatives 都被移除。则同一 geometric transparent relation 给同一个 nonlinear 输出 solution map，并给相同的全部 linearized causal responses。

**证明。** 各候选 constructions 的装配解满足相同的输出 action、bulk equations、geometric matching、retained physical boundaries 与相同 causal/initial prescription。唯一性给解相同；smooth dependence 使对 bulk/boundary sources 的任意有限阶 derivatives 相同。这与线性定理的证明结构一致，但不将 nonlinear existence 或 smooth dependence 从“同样的记号”里推出来。证毕。

例如 $V_i(q)=\tfrac12\sigma_iq^2+\tfrac14g_iq^4$。在 (7.3) 的静态线性 bulk example 中，

$$
b_i=A_i-d_iq-\sigma_iq-g_iq^3.
$$

透明条件必须是

$$
b_1+b_2+(\sigma_1+\sigma_2)q+(g_1+g_2)q^3=0.
\tag{11.4}
$$

因此所有 closing contributions 以及它们对 $q$ 的各阶 derivatives 都消去；反之保留它们就得到 nonlinear interface potential。代码验证了该 cancellation 及前三阶导数。

### 11.3 一个真实的 smooth-opening nonlinear example

在 $1+1$ massless half-line $x\ge0$，写

$$
\phi(t,x)=F(t-x)+G(t+x),\quad
q=F+G,\quad\Pi=\partial_x\phi=-F'+G'.
$$

$G$ 是给定的 incoming wave。条件 (11.2) 等价于

$$
\boxed{q'(t)+V'(q(t))=2G'(t)-b(t).}
\tag{11.5}
$$

因此 smooth source opening 化为一个普通 ODE。对 $V\in C^\infty$，给定相容初值后，存在唯一的局部 smooth solution，且其 source dependence smooth。若 $V(q)=\tfrac12\sigma q^2+\tfrac14gq^4$、$\sigma,g\ge0$，则

$$
\frac{d}{dt}|q|\le |2G'-b|
$$

在非零点成立并可按通常弱意义延拓，故有限时间内有界驱动不导致 $q$ blow-up。其一阶源响应明确为

$$
\delta q(t)=e^{-\int_{t_0}^tV''(q)}\delta q(t_0)
+\int_{t_0}^t d\tau\,
 e^{-\int_\tau^tV''(q(s))ds}
\bigl[2\delta G'(\tau)-\delta b(\tau)\bigr].
\tag{11.6}
$$

由 $F=q-G$ 恢复 bulk solution，故这不是只有形式 boundary equation 的例子。这里是 classical massless finite-time example，不调用主定理的 massive ground-state construction。

### 11.4 Homogeneous well-posedness 不等于 opening chart 正则

将 Dirichlet 写成 $q^3=0$，得到同一个 homogeneous boundary condition；但若把它机械地 opening 为 $q^3=b$，则在 $q=b=0$ 处逆映射不是 smooth，不能定义通常的 linear response quartet。应该使用 regular chart $q=b_D$，或直接使用正确的 nonlinear trace relation。

一般 nonlinear $B$ 需要 regular source parametrization：边界方程在所选源方向上为 submersion，并有可逆的 linearized causal IBVP。多分支、退化、boundary gradient terms 或真实 boundary dynamics 都可能改变这个条件。

### 11.5 不偷换 observable closure 的强度

对一个确切的 nonlinear theory，$E_\phi$ 依赖 $\phi$，两个线性 observables 的 Peierls bracket 已可能不是有限 polynomial。因而旧版固定 polynomial class 不自动是 exact nonlinear Poisson algebra。

本文不为解决这一点重新追求 maximal class。保留两个不同 statement：第 11.2 节是确切、局部的 nonlinear **solution/response independence**；observable algebra 使用 polynomial interactions 的形式耦合展开，每个固定阶数仍为有限次数 coefficient functionals，并按下一节重整化。任意 nonperturbative nonlinear boundary algebra 的完整函数类闭合需要额外分析，没有在这里被误写成已经完成。

---

## 12. Renormalized quantum composition：确定的结论与 boundary 扩展

### 12.1 重建后再定义相互作用 products

自由 $\star_W$ 与 time ordering $T_{\mathcal R,n}$ 不同。用 renormalized relative $S$-matrices 定义

$$
S_{\mathcal R}(V)=\sum_{n\ge0}\frac1{n!}
\left(\frac i\hbar\right)^nT_{\mathcal R,n}(V^{\otimes n}),
$$

$$
R_{V,\mathcal R}(F)=
\left.\frac\hbar i\frac d{d\epsilon}\right|_0
\left[S_{\mathcal R}(V)^{-1}_{\star}
\star S_{\mathcal R}(V+\epsilon F)\right].
\tag{12.1}
$$

这里先在 off-shell insertions 上处理 renormalized field-equation/contact relations；不能先将所有 EOM insertions 商为零，再对它们 time order。相互作用代数也不是将 nonlinear classical vanishing ideal 直接用于自由 $\star_W$ 的 quotient [6,7]。

式 (12.1) 的 $S$-matrix 中间表达可以含有限阶负幂 $\hbar$；连接到指定 insertion 的 relative-$S$ graph 至少有与 interaction vertices 同数的 contractions，因此实际 interacting fields 的 connected expansion 落在非负 $\hbar$ 次幂。

Quantum opening 是修改已标记的 action/realization，再按 (4.6) 等重建自由参考 causal problem，并使用新 theory 的 Wick/renormalized products。它不是将原 $W_B$ 的全部反射 image contractions 保留，再凭一个 formal quotient 希望它们自动消失。

### 12.2 “完整移除”在 quantum 层的具体要求

一个 closing boundary term 应带着它的 renormalized definition 和 physical-support tag。选中 face 移除时，需同步移除：该面专有的 essential restriction、quadratic/nonlinear boundary potential、仅为该 physical boundary realization 所需的 boundary counterterms，以及它们对 composite insertions 产生的 contact terms。若选择保留某些项，必须把它们记为真实 defect couplings。

不能只令 renormalized Robin parameter $\sigma$ 为零，却留下 $\hbar c_\Gamma\phi^2$、boundary field renormalization 或 finite insertion contacts，然后宣称透明独立性。Robin $\phi^4$ 的具体一圈计算已显示实际 surface counterterms 与有限选择的存在 [9]；那篇结果不是任意维数、任意边界作用量的 all-order theorem。


对**保留**的 physical boundary，重新选择输出 ground kernel 也不能暗中改变已指定的 interaction。一个具体例子是用共同局部 boundary subtraction $H_\partial$ 定义同一个 $:q^4:_{H_\partial}$。若 $d_B=(W_B-H_\partial)|_{\rm diag}$ 存在，则它在 $W_B$-normal-ordered symbols 中为

$$
q^4+6\hbar d_Bq^2+3\hbar^2d_B^2
\tag{12.1a}
$$

（另有已经声明的有限局部项）。输出改用 $W_{\rm out}$ 后，应相应使用 $d_{\rm out}$，不能只保留原来裸写的 $q^4$ coefficient。这是保留同一局部物理 prescription 的插入运输，不是在整个 spacetime 上把 $W_{\rm out}-W_B$ 当成同一 dynamics 的 smooth Wick shift。Interval 的第12.4节给相应 logarithmic subtraction；一般边界仍需所声明的 local renormalization input。

在同一个 dynamics 内，若两套 schemes 满足

$$
S_{\mathcal R'}=S_{\mathcal R}\circ Z,
$$

则 interactions 和 insertions 要同时按

$$
V\mapsto Z(V),\qquad F\mapsto DZ(V)F
\tag{12.2}
$$

运输 [7]。这一公式用于同一目标 theory 的 scheme comparison；它不能取代不同 physical boundary realizations 之间的 exact causal reconstruction。

### 12.3 定理 D：相容重整化下的形式量子二元重建

假设定理 A/C 的自由输入成立，并对每个实际 standalone/intermediate output 的剩余物理边界给定以下数据：smooth bulk interactions 在新 seam collars 上有相容 jets；相应 renormalized time-ordered products 存在；同一局部 extension rule、有限参数和所用 Ward normalization 与 geometric assembly 相容；boundary removal/retention 完整且只按真实剩余边界／defect 标签决定。

则 reconstructed interacting polynomial-generated algebras 在 coupling/$\hbar$ 上逐阶与独立输出 theory 同构。重新 opening 与两个 binary parenthesizations 在相同 final data 下给相同的 formal algebra；其 associator满足 §6 的 coherence。

**证明。** 自由 $E,W$ 已由定理 A/C 一致。远离所有相应 collision strata，graph distributions 由 kernels 和低阶 causal factorization 决定，因此在 assembly 下相同。对 renormalization order 归纳：需要 extension 时，两种呈现有相同的局部 metric、coupling、bundle 和真实 boundary/defect jets；使用同一个 extension rule 及有限参数，故在 collision strata 上也相同。于是

$$
\Theta T_{\mathcal R,\#}(F_1,\ldots,F_n)
=T_{\mathcal R,\rm out}(\Theta F_1,\ldots,\Theta F_n).
\tag{12.3}
$$

$\Theta$ 保持自由 $\star$、formal inverse 和导数，故也保持 (12.1)。各阶 renormalized graphs 的未收缩 legs 给 admissible polynomial coefficients；生成子的有限 products 由自由 closure 保持，完成 formal algebra comparison。每个 closed intermediate 的下一次 opening 重新使用其 action 和 remaining-boundary tags，§6 的 sourced equivalence 以及上述 induction 使两条路径一致。证毕。

**这个 theorem 的范围不能缩写掉。** 标准 smooth boundaryless scalar time-ordering existence theorem [6] 足以支持无真实物理边界的 smooth 输出；它不自动证明所有 closed intermediate physical boundary theories 的 extension。在后者尚未验证时，定理 D 是明确的条件性 reconstruction theorem，而不是新的一般 boundary renormalization existence theorem。

此外，若各片 interaction coefficient 在 seam 上不平滑匹配，则输出本来就是 piecewise coupling/interface theory。也不能把任意 sharp characteristic-function insertion 当成已由 smooth-coupling theorem 覆盖。

### 12.4 一个可实际证明的 $1+1$ nonlinear boundary-potential sector

下面给出比“一般条件性”更具体的一步。取 massive compact interval 的 free N/有限 Robin reference，保留端点 field $q_e(t)$，采用 $W_B$-normal-ordered、无时间／法向导数的 finite boundary polynomials

$$
V=\sum_e\int dt\,g_e(t)\,{:P_e(q_e(t)):}_{W_B},
\qquad g_e\in C_c^\infty(\mathbb R).
\tag{12.4}
$$

这里不是 Dirichlet 上恒为零的 $q$ potential，也不包含 derivative boundary interactions。

**引理 12.1：有限图的 logarithmic extension。** 对这些 insertions，每个 finite-order Wick/Feynman contraction graph 在边界时间变量中局部可积。Normal ordering 消去单 vertex tadpoles 后，保留最小 scaling degree 的 extension 不需要新的 UV divergent multi-vertex counterterms。因此它们定义逐形式阶的 boundary-potential relative-$S$ observable sector。

**证明。** Robin/N endpoint mode values 有界。利用 Sturm–Liouville asymptotics，边界 kernel 的大 $n$ 项为

$$
W_{ef}(\tau)=\sum_n c_{ef,n}e^{-i\omega_n\tau},
\quad \omega_n=(n+\eta)\pi/L+O(n^{-1}),
\quad c_{ef,n}=\frac{C_{ef}\varepsilon_{ef}^n}{n}+O(n^{-2}),
\tag{12.5}
$$

其中 $\eta$ 是由端点类型决定的整数／半整数偏移，$\varepsilon_{ef}=\pm1$ 编码两端传播。有限个低 modes 不影响 singularities。对 compact $\tau$，将 $\omega_n$ 换成 leading frequency 的误差也为 $O(n^{-2})$。故 kernel 是

$$
-C_{ef}e^{-i\eta\pi\tau/L}
\log\bigl(1-\varepsilon_{ef}e^{-i\pi(\tau-i0)/L}\bigr)
+\text{continuous remainder}.
\tag{12.6}
$$

它在 coincidence 与有限时间窗中的 echo times 至多 logarithmically singular。这里直接对已经存在的 boundary field kernel 作时间排序；不是对 bulk inverse kernel 作未经证明的 null/diagonal pullback。Feynman time ordering 在同一时间变量中也至多给 logarithms 和 bounded one-sided pieces。

任意 finite graph 是有限个 $\log|t_i-t_j-\tau_{ij}|$ 型因子的乘积，加上较正则项。每个因子在 compact 多时间域内属于任意有限 $L^p$；选取足够大的 $p$ 并用 Hölder，即得有限乘积属于 $L^1_{\rm loc}$。所有 partial collision scalings 至多是对数增长，scaling degree 为 $0$，小于任何非空 collision diagonal 的正 codimension。因此 minimal-scaling-degree extension 唯一，不能再加入具有更高 scaling degree 的 delta counterterm。

时间 smearing 使 integrals 有 compact support。剩余 polynomial field legs 的 coefficient wavefront 不会出现全部同向 causal frequencies：每个 contraction network 的 time-frequency covectors 总和为零；推送到固定 timelike boundary 后，附加法向 conormals 是 spacelike。故 finite-order coefficients 落入第 9 节允许的 polynomial calculus。Time ordering 的 causal factorization／adjoint relations 在非 collision 区域成立，局部可积且同一 scaling degree 的 extension 将这些等式延拓到全部分布。由 (12.1) 得 relative-$S$ sector。证毕。

例如两个 $q^4/4!$ vertices 的 $r$ 条 contractions 系数为

$$
\frac{\binom4r^2r!}{(4!)^2}
=\left\{\frac1{36},\frac18,\frac16,\frac1{24}\right\}_{r=1,2,3,4}.
\tag{12.7}
$$

它们分别乘 $\hbar^rW_F^r$；$S$-matrix 二阶的整体 $1/2!$ 尚须另计。代码核验全部系数及 log powers 的可积性，而非只检查单 contraction。

**边界。** 引理处理无导数 boundary-potential insertions 的 time-ordering UV 问题；不证明任意 derivative stress/flux insertions 的全部 contact/Ward normalizations，也不提供 nonperturbative stationary interacting ground state。把 $g_e$ 改成永恒常数、加入 $\dot q^2$ 或 $\partial_n\phi$ vertices、提高 spacetime dimension，都会需要新的分析。它也不允许忽略弱 boundary field equation 中的 layer-source/contact interpretation。

### 12.5 Interacting energy 的当前范围

自由 total energy、其 boundary terms 及 renormalized vacuum interaction energy 已在 §10 实际构造。对 interacting stress，必须同步指定 composite renormalization 和源做功／boundary work 的 Ward identities；Hollands–Wald 的已知 conservation theorem 有 spacetime dimension $>2$ 的条件 [10]。不能把它直接用作 $1+1$ 非线性边界 stress 的全阶证明。

因此本文在 $1+1$ 新增的是上述无导数 boundary-potential observable sector，不把它夸大为“所有 interacting energy/flux 的边界 contact terms 已全部解决”。在某个模型上完成那些 Ward normalizations 后，定理 D 的比较／结合律证明可以直接使用它们；缺的将是该 boundary quantum theory 的本地构造，而不是 mixed D/N/R sewing 的几何逻辑。

---

## 13. Spacelike cuts：Cauchy matching，而不是关闭 timelike wall 后再拆墙

### 13.1 Standalone time slab 不应把全部 Cauchy data 固定为零

在 $[t_0,t_1]\times\Sigma$ 的 field theory 中，timelike exterior boundaries 仍有自己的 physical $B$。但 spacelike caps 的 Cauchy data 应遍历允许的数据空间；它们不是需要像反射墙那样用 D/N/Robin关闭的 physical timelike boundary。

Retarded response 在某个过去 Cauchy surface 上取零，是**response prescription**，不是声明整个 theory 的所有物理解都具有零初值。若把一个 temporal cap 的 $q,p$ 都固定，通常只挑出一个 classical solution；若在前后两 caps 随意施加 temporal Dirichlet，则是另一种 two-time boundary value problem，未必具有 causal propagator。

### 13.2 正确的 sewing data 与传播

对共同 spacelike cap $\Sigma_*$，透明 matching 是完整 Cauchy jet：

$$
\phi_+|_{\Sigma_*}=\phi_-|_{\Sigma_*},\qquad
\partial_t\phi_+|_{\Sigma_*}=\partial_t\phi_-|_{\Sigma_*}.
\tag{13.1}
$$

用 outward temporal normals 写作用量时，两侧 temporal response signs 相反，给同一个未来定向导数的相等。这里不是仅匹配一个 Dirichlet history 再反演 DtN。

正静态 $K_B$ 下，Cauchy evolution 是

$$
U(t_b,t_a)=
\begin{pmatrix}
\cos(\sqrt K\Delta t)&K^{-1/2}\sin(\sqrt K\Delta t)\\
-\sqrt K\sin(\sqrt K\Delta t)&\cos(\sqrt K\Delta t)
\end{pmatrix}.
\tag{13.2}
$$

它满足真正的 temporal composition

$$
U(t_2,t_1)U(t_1,t_0)=U(t_2,t_0).
\tag{13.3}
$$

跨 cap 的 retarded source response 为

$$
G^R(t,t')=
U_{11}(t,t_*)G_-^R(t_*,t')+
U_{12}(t,t_*)\partial_{t_*}G_-^R(t_*,t'),
\quad t>t_*>t'.
\tag{13.4}
$$

这由 Cauchy uniqueness 得到；静态情况下直接是 sine addition identity，代码作了符号验证。

### 13.3 Observable algebra 的关系是 time-slice identification

两段相邻时间 slab 不代表两套独立的 Cauchy degrees of freedom。对于完整空间切片，它们的 on-shell observable algebras 通过 Cauchy/time-slice evolution 识别；不能默认输入是两套物理独立 tensor factors。

本模型还可直接构造 time-strip representative。取 $\eta(t)$ 从 $0$ 平滑过渡到 $1$，过渡支持在共同 cap 的一个小 collar 内。对 homogeneous solution，

$$
\phi=-E_B[L,\eta]\phi.
\tag{13.5}
$$

证明只需注意 $G_B^R[L,\eta]\phi=\eta\phi$，$G_B^A[L,\eta]\phi=(\eta-1)\phi$。因此将 observable 的每条场腿替换为 (13.5)，得到只依赖该 time strip 的 on-shell-equivalent representative。时间 cutoff 不改变 homogeneous physical $B$；其 causal kernel contractions 在本模型的 admissible domain 中保持 polynomial degree 与所需 microlocal conditions。$W_B$ 的每条腿同样满足 (13.5)，故对应的 Wick products 一致。更一般的函数类版本可参照 time-slice/equicausal 结果 [3]。

这不要求任意 Wick composite 都有 sharp equal-time restriction；可以始终使用 smooth time strip 和原 observable class。

### 13.4 与新的 standalone picture 的关系

它们共同使用“完整 standalone dynamical problem → 几何匹配 → 完整输出 theory”，但 spacelike operation 应记作 Cauchy composition $\circ_C$，而非 (5.1) 的 timelike boundary-realization removal。没有一个待移除的 Robin wall，也没有 corresponding NtD/DtN source-chart independence 问题。其 binary associativity 由 Cauchy evolution／time-slice compatibility证明，而不是由 timelike feedback inverse 证明。

---

## 14. Null cuts：characteristic filling 与其额外数据

### 14.1 为什么一个普通 null face 不是一套可任意选择 D/N/Robin 的 wall

null normal 同时 tangent to the hypersurface。标量 action 的 conormal response 与沿 generators 的切向 derivative 相联系，不给与 $q$ 独立的一套 normal control。

在 $1+1$ Minkowski 坐标 $u=t-x,v=t+x$ 中，

$$
S=\int du\,dv\left(\partial_u\phi\partial_v\phi-\frac{m^2}4\phi^2\right).
$$

在 $u=c$ 的两侧，boundary variation 分别为 $\pm\partial_vq\,\delta q$。一旦 $q_-=q_+$，response sum 就是

$$
\partial_vq_- -\partial_vq_+=0.
\tag{14.1}
$$

它自动消失，不能反演成决定 $q$ 的 two-sided feedback equation，也没有额外确定横向 integration constant。这是 characteristic degeneracy，不是需要换成 Neumann chart 才能修好的 Dirichlet 奇点。

### 14.2 一个完整的 characteristic standalone problem

对 rectangle $u\ge u_0,v\ge v_0$，设

$$
\phi(u_0,v)=f(v),\qquad\phi(u,v_0)=g(u),\qquad
f(v_0)=g(u_0)=c.
\tag{14.2}
$$

bulk equation $4\partial_u\partial_v\phi+m^2\phi=F$ 等价于 Volterra equation

$$
\begin{split}
\phi(u,v)={}&f(v)+g(u)-c\\
&-\frac{m^2}4\int_{u_0}^u\!du'\int_{v_0}^v\!dv'\,\phi(u',v')
+\frac14\int_{u_0}^u\!du'\int_{v_0}^v\!dv'\,F(u',v').
\end{split}
\tag{14.3}
$$

有限 rectangle 上迭代的积分算子第 $n$ 次有 $(U V)^n/(n!)^2$ 控制，因此 Neumann/Volterra series 收敛，给解存在唯一性及 smooth source dependence。这里“完整”指保留整个相容 incoming characteristic-data space，而不是把所有物理解固定成 $f=g=0$。零 incoming data 再次只是 retarded response 的特定 prescription。

单独给 $u=u_0$ 这条 null plane 的 trace 在这个问题中不够：质量为零时 $\phi=F_0(u)+G_0(v)$，该 trace 看不到任意满足 $F_0(u_0)=0$ 的 $F_0$。但这不意味着任何 single characteristic hypersurface 都不可能给完整数据：适当 characteristic cone／partial Cauchy hypersurface 可在额外 support、domain-of-dependence 条件下给 well-posed Goursat problem [11,12]。

### 14.3 Null sewing 的 feed-forward kernel

令 $\mu=m/2$、$U=u-u_0,V=v-v_0$。归一化算子 $P=\partial_u\partial_v+\mu^2$ 的 Riemann kernel 为

$$
\mathcal R(U,V)=J_0(2\mu\sqrt{UV})
=\sum_{n=0}^\infty\frac{(-\mu^2UV)^n}{(n!)^2}.
\tag{14.4}
$$

无源解可写成

$$
\phi(u,v)=c\mathcal R(U,V)
+\int_{u_0}^u\mathcal R(u-s,V)g'(s)ds
+\int_{v_0}^v\mathcal R(U,v-s)f'(s)ds.
\tag{14.5}
$$

对原 $L$，以 $dt\,dx=\tfrac12du\,dv$ 为 source measure 的 retarded kernel 为

$$
G_L^R=\frac12\theta(U)\theta(V)J_0(m\sqrt{UV}).
\tag{14.6}
$$

如果改用 $du\,dv$ 积分，系数为 $1/4$；(14.4) 对归一化 $P$ 的 kernel 系数则为 $1$，三者不能混用。

现在沿 $u=c$ 分成前后两块。第一块先产生 outgoing trace $q_c(v)$，它与第二块其余 incoming data一起决定第二块。对于跨区 source，

$$
G_{21}^R=H_{2,\rm char}^R\,\gamma_cG_1^R,
\qquad G_{12}^R=0
\tag{14.7}
$$

在上述因果方向和完备 incoming data 下成立。Advanced blocks 反向。故跨区 Peierls bracket 仍然可以非零，尽管 (14.1) 没有可用的 DtN feedback inverse。

一个真正的 filling composition identity 是

$$
\mathcal R(a+U,V)=\mathcal R(U,V)+
\int_0^V\mathcal R(U,V-s)\partial_s\mathcal R(a,s)ds.
\tag{14.8}
$$

它将第一条 strip 的 trace 作为第二条 strip 的输入，而不仅是把一个 double integral 切成两段。由 (14.5) 与 uniqueness 得到；代码另外用 Bessel kernels 直接数值核验。

### 14.4 Corner/regularity 信息不能被 field trace 替代

Null interface 上的 $q$ matching 不自动消去所有 transverse derivative jumps。例如 massless $(u-c)_+$ 是连续、分片 smooth 的弱解，却不跨 $u=c$ 光滑。输出若要求 smooth solution class，还必须保留 compatible incoming data 在相交 corner 处的 jets，并验证这些条件沿 generators 传播。

因此 null composition 的对象至少包括：characteristic support/domain、完整 incoming data 或对应的 filling prescription、交角／零模／constraint compatibility，以及目标 regularity。它不能由一个单独标量 $q$ 或一个任意 “Neumann condition” 替代。

### 14.5 量子 null trace 与 bulk observable algebra 要分开

$W$ 的 wavefront 可能与 null hypersurface 的 conormal 相交，因此普通 $q=\phi|_{\mathcal N}$ 的量子 pullback 一般没有定义。Timelike-trace proof 中“conormal 是 spacelike”的关键一步在这里失效。某些 generator derivatives、radiative data 或经过零模处理的 characteristic algebra 可以有良定义，但必须另构造。

这不强迫放弃原 bulk observable class：characteristic data 可以先只作为 PDE transmission data，用 (14.7) 重建 bulk $E$，在存在相容 Hadamard/Wick construction 时重建 smooth-spacetime-smeared bulk observable algebra。不能把辅助的 classical null traces 自动宣称为其中全部合法的 quantum boundary observables。

### 14.6 与 standalone-to-composition picture 的正确关系

Null filling 也可以每次输出一个完整的 characteristic field problem，再在下一次需要时取其 outgoing data。但这里保留的是新对象的真实 incoming-data domain 与因果结构，而不是预先储存所有未来 ports。

它不是“移除一个 homogeneous physical null Robin wall”：这样的 wall 与 (14.2) 的 complete characteristic problem 是不同的类型。完整 incoming data 在特定几何中可由一条合适 characteristic hypersurface提供，也可需要两条相交 null sheets，不能不检查就套用同一个边界数据数量。

---

## 15. 能统一什么，不能统一什么

### 15.1 一个共同的 conditional reconstruction lemma

三类 cut 可以共用以下 proof principle。给定完整 standalone problems、本次 geometric gluing relation 和目标 regularity，假设：

- 每个允许的 sourced 输出解与满足 matching 的 regional sourced solutions 双射，且 respects retarded/advanced prescription；
- source maps 及实际使用的 trace maps 有所需连续性／microlocal domain；
- 输出重新属于同一声明的完整动力学类型，后续重新取 source response 与分片计算相容；
- quantum 层还有相容的 $W$、coefficient labels 与 renormalization prescription。

则 causal uniqueness 给 $G_{\rm comp}^{R/A}=G_{\rm out}^{R/A}$，进而给 Peierls/Wick/renormalized reconstruction；同一 sourced problem 的重新分组给相应的二元 coherence。

这是一个共同的 **source-complete reconstruction lemma**。它不预设 CPS，也不需要把每一种接口都包装成 DtN。

### 15.2 这个 lemma 不使三个实际 operations 相同

$$
\begin{array}{c|c|c|c}
\text{cut}&\text{standalone 数据}&\text{composition 机制}&\text{主要存在性条件}\\\hline
\text{timelike}&\text{physical }B\text{ closed theory}&
B\text{ opening + two-sided matching}&\text{sourced IBVP / feedback inverse}\\
\text{spacelike}&\text{全部相容 Cauchy data}&
\text{Cauchy evolution / time-slice identification}&\text{Cauchy well-posedness}\\
\text{null}&\text{完整 characteristic incoming data}&
\text{characteristic propagation / filling}&\text{Goursat/CIVP + support/corner data}
\end{array}
\tag{15.1}
$$

所以，若“同一个 abstract operation”指包含不同类型 initial-boundary problems 的 geometric sourced reconstruction，可以统一其比较定理。若指本文 (5.1) 中那一个以 selectable physical timelike closing realization 为输入、再移除它的操作，则不能覆盖后两者：spacelike data 是完整 Cauchy jet，null response 是退化的 characteristic relation，而不是同一 trace/control space 上不同参数值的 D/N/Robin chart。

真正的共同对象应允许声明 boundary causal type 和完整 initial/characteristic domains。它不能通过删除这些类型信息而变得更普适；也不能以“所有 boundary pairs 都是 $(q,\Pi)$”掩盖数据独立性和求解方向的差别。

---

## 16. 旧版结果的迁移与剩余问题

### 16.1 哪些仍成立，哪些地位改变

| 旧版内容 | 新版地位 |
|---|---|
| Observables 是 off-shell configurations 上的泛函；Peierls/Wick/renormalized 区分 | 保留，§1、§9、§12 |
| 固定反射壁括号不能不变地 quotient 成透明括号 | 保留，解释为何 $\boxtimes$ 不是裸代数 quotient |
| Polynomial microlocal class 与自由 Wick closure | 保留，不追求新的最大／最小类；物理边界的 domain 另行核验 |
| Dirichlet quartet 及 $D_1+D_2$ feedback formula | 变为一般 source-chart formalism 的 D/D 特例，§3–§4 |
| Joint trace、collar labels 与 independent uncut comparison | 保留；collars 在实际 geometric sewing 时构造，不作为永久 open ports |
| 旧 form assembly theorem | 升级为保留 exterior $B$、移除 selected surface terms 的一次 closed-binary lemma，§5 |
| 旧 §7.3 finite-successive-sewing | 只作共同最终 domain／已打开 response 的消元 coherence lemma，§6.4 |
| 旧含 $G,H,\rho,D$ 的永久 regional composition object | 被封闭 marked theory (1.1) 取代；quartet 只在实际 opening 时出现 |
| Timelike trace membership | 仍适用于 smooth 输出中的内部 seam；不能自动当作 reflecting physical-boundary theorem |
| 自由 total energy | 保留并加入真实剩余 Robin surface energy，§10 |
| Smooth bulk formal renormalized sewing | 保留为带完整 boundary prescription 的条件性扩展；不能冒充一般 boundary renormalization existence |
| Scalar self-sewing／orientation | 保留 action 只计一次的原则，并检验一般源坐标、twist 与非平凡 $J$，§8 |
| Spacelike/null 可用同一 timelike DtN 逻辑解释 | 不采用；分别是 §13、§14 的不同类型操作 |

### 16.2 新的核心证明链

$$
\boxed{
\begin{array}{c}
\text{closed action + physical realization}\
\downarrow\
\text{selected sourced opening，允许 D/N/R 不同坐标}\
\downarrow\
\text{geometric trace matching + 完整 closing removal}\
\downarrow\
\text{new closed standalone action/domain/kernel}\
\downarrow\
\text{reopening compatibility of all response blocks}\
\downarrow\
\text{genuine binary associativity}\
\downarrow\
\text{same polynomial Peierls/Wick/renormalized algebra recipe}
\end{array}}
\tag{16.1}
$$

closing-realization independence 比较的是上图第三步以后得到的同一输出问题。它既不等于第一步的各 theory 等价，也不等于量子态的无损拼接。

### 16.3 真正剩余的问题

**一般 physical-boundary quantum domain。** 本文的 interval／平直 product 验证给出 trace-inclusive free Wick theorem；任意 curved reflecting boundary、glancing propagation、corner-supported coefficients 的完整 one-sided microlocal calculus 仍需针对相应模型建立。它不是再次优化函数类，而是验证既定函数类的边界实现。

**一般 boundary／defect renormalization。** 高维、导数 boundary interactions、dynamic boundary fields、sharp strata 的 time-ordered extensions、有限 surface counterterms 以及 stress/flux Ward identities 并未由定理 D 的比较证明自动构造。第 12.4 节是一个受限但实际的 $1+1$ positive result；它不解决全部这些问题。

**更一般 nonlinear admissibility。** 高维 nonlinear sourced IBVP 的 trace loss、local smooth dependence、global existence、分支和退化 source charts 需要新的 estimates。第 11 节已经将需要证明的条件定位到 nonlinear opening，而不是把它们藏在 $D^{-1}$ 的记号中。

**Corners、partial faces 与非局域 action。** 部分组件 opening 可能产生新的 intersections；必须使用 joint trace image、corner compatibility 和所有真实 lower-stratum action terms。若 quotient 有 conic singularity，还需指定 self-adjoint domain；若 boundary action 耦合多个 faces，需指定可相容的 removal policy。主定理为避免这些未解输入，只选择完整 smooth components。已经在旧模型中证明的 joint-$H^1$ form assembly 并未失效：在同一 joint trace domain 上，加入 retained boundary form、删除 selected form 后，energy/operator 层的比较仍可使用。尚不能从该 energy lemma 自动推出的是所有 corner sourced maps 的 smooth regularity 和完整 quantum boundary extension。

**Characteristic quantum realization。** Null filling 的 classical benchmark 完成了具体源传播，但一般 null quantum trace algebra、zero-mode sector 和 characteristic Hadamard reconstruction 是独立问题。可以先对 bulk-smoothed observables作 composition，而不把所有 null traces都量子化。

**不存在由本文自动得到的结论。** 任意 abstract algebras 的 canonical pushout、独立 regional states 的 canonical sewing、所有 interacting theories 的非微扰 quantum construction，以及无条件的 Hilbert tensor factorization，都不是这组定理的结论。

这些剩余项不影响已完成的 mixed D/N/Robin 连续重建和 closed-binary associativity；它们界定的是向更广模型及 boundary quantum sectors 推广的范围。

---

## 附录 A. 执行检查与可复现性

`checks/verify.py` 使用 SymPy、NumPy、SciPy。它直接采样连续 interval Laplace kernels，没有用有限差分网格近似 PDE。当前结果记录于 `checks/results.json`，共 42 组全部通过。

检查包括五套不同 source equations 的独立符号求解；Robin defect 反例；非交换矩阵 source-chart transformation；一般 closed interval 的 homogeneous/sourced boundary conditions；五种 mixed binary kernels；closed outputs 重新 opening 的 $H,D,\rho$；四区域全部五种 closed binary parenthesizations；单 interval 全部 D/N/Robin endpoints 的 periodic/antiperiodic self-sewing；一次双接缝 binary closure 与先 closed-binary 再 reopening/self-sewing 的 cycle comparison；非平凡 $J$ 与 side reversal；斜平移／反射识别；nonlinear potential removal 及 derivatives；quartic Wick contraction coefficients；Robin能量边界平衡；Cauchy evolution；null Riemann/Volterra/feed-forward identities；以及 renormalized vacuum energy。

所有检查是公式／continuum kernel samples 的核验。PDE existence、microlocal contraction continuity、renormalization existence 的证明力来自正文的论证或明确引用／假设，而不是一个数值误差阈值。

运行：

```bash
python checks/verify.py
```

输出 JSON 包含每组误差、容差、适用范围和全部通过状态。没有隐藏的网络请求，也没有改写任何用户仓库。

---

## 参考文献与具体用途

[N0] *非规范场论的 observable-first 粘合：Peierls 代数、边界迹与重整化*，本次之前的 `observable_first_sewing.md`。特别是 §§3、5–9、11–12。本文替换其 composition-object presentation，不把旧 §7.3 直接改名为新的 binary theorem。

[N1] `GaoZ1en/obsidian_note`, `Articles/Quantization in AdS/gluing/README.md` 及其中标记的当前项目入口。用于确认项目的 observable-algebra、free-renormalized、scalar-closure 与 characteristic 分支；本 note 按本次明确提出的 standalone picture 重写，而非声称逐行审计所有旧稿。<https://github.com/GaoZ1en/obsidian_note/blob/main/Articles/Quantization%20in%20AdS/gluing/README.md>

[1] C. Dappiaggi, N. Drago, H. Ferreira, *Fundamental solutions for the wave operator on static Lorentzian manifolds with timelike boundary*, arXiv:1804.03434v3. 静态空间 realization、boundary triples 与 spectral fundamental solutions；本文对所用 local B 另保留有限传播／source completeness 条件。<https://arxiv.org/abs/1804.03434>

[2] G. Grubb, *The mixed boundary value problem, Krein resolvent formulas and spectral asymptotic estimates*, arXiv:1104.0785. 一般边值／resolvent-chart 技术背景；本文 mixed realization independence 的证明见 §§3–5，不引用此文作为二元量子 sewing theorem。<https://arxiv.org/abs/1104.0785>

[3] E. Hawkins, K. Rejzner, B. Visser, *A novel class of functionals for perturbative algebraic quantum field theory*, arXiv:2312.15203v3, 16 July 2026. Polynomial/equicausal 包含、closure 和 time-slice 范围；不由其无边界 formulation 自动推断全部 physical-boundary extensions。<https://arxiv.org/html/2312.15203v3>

[4] C. Dappiaggi, G. Nosari, N. Pinamonti, *The Casimir effect from the point of view of algebraic quantum field theory*, arXiv:1412.1409. 反射边界的 algebra／image singularities 与 Wick extension 的区别。<https://arxiv.org/abs/1412.1409>

[5] S. Hollands, R. M. Wald, *Local Wick Polynomials and Time Ordered Products of Quantum Fields in Curved Spacetime*, arXiv:gr-qc/0103074. Local composite fields 与有限 renormalization freedom。<https://arxiv.org/abs/gr-qc/0103074>

[6] S. Hollands, R. M. Wald, *Existence of Local Covariant Time Ordered Products of Quantum Fields in Curved Spacetime*, arXiv:gr-qc/0111108. Smooth boundaryless local extension theorem；不是一般 boundary/defect theorem。<https://arxiv.org/abs/gr-qc/0111108>

[7] R. Brunetti, M. Dütsch, K. Fredenhagen, *Perturbative Algebraic Quantum Field Theory and the Renormalization Groups*, arXiv:0901.2038. Relative $S$-matrices、finite renormalization 及 insertions 的同步运输。<https://arxiv.org/abs/0901.2038>

[8] B. A. Juárez-Aubry, R. Weder, *Quantum field theory with dynamical boundary conditions and the Casimir effect*, arXiv:2004.05646. Boundary dynamics 可包含真实额外自由度，不能无政策地从 composition 中擦除。<https://arxiv.org/abs/2004.05646>

[9] L. C. de Albuquerque, *Renormalization of the $\Phi^4$ scalar theory under Robin boundary conditions and a possible new renormalization ambiguity*, arXiv:hep-th/0507019. Robin 物理边界 surface counterterms 的具体一圈例子；本文不将它外推为一般全阶定理。<https://arxiv.org/abs/hep-th/0507019>

[10] S. Hollands, R. M. Wald, *Conservation of the stress tensor in perturbative interacting quantum field theory in curved spacetimes*, arXiv:gr-qc/0404074. 注意其 stress-conservation result 的 spacetime dimension $>2$ 条件。<https://arxiv.org/abs/gr-qc/0404074>

[11] C. Bär, R. Tagne Wafo, *Initial value problems for wave equations on manifolds*, arXiv:1408.4995. Cauchy/Goursat existence uniqueness 及 characteristic hypersurface/support 条件；不能简化成“任何单一 null face 都足够”或“永远需要两张 null sheets”。<https://arxiv.org/abs/1408.4995>

[12] U. Lupo, *On the global "two-sided" characteristic Cauchy problem for linear wave equations on manifolds*, arXiv:1708.04953. Characteristic continuation 的 support、存在唯一性与 regularity 限制。<https://arxiv.org/abs/1708.04953>
