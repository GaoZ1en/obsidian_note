# 非规范场论的 observable-first 粘合：Peierls 代数、边界迹与重整化

## 摘要与定理范围

本文给出不以相空间或辛形式定义可观测量的粘合构造。基本对象是离壳场配置上的分布系数多项式泛函；经典乘法是点乘，Poisson 括号来自完整边值问题的 Peierls response，量子乘法是 Hadamard–Wick 乘积。边界值作为同一场的 trace observable 纳入，而不是额外加入一套未经动力学定义的 canonical variables。

精确结果分为三层。

**自由定理。** 对正的 ultrastatic 标量场，在有限个静态区域沿 timelike faces 粘合、输出为光滑时空、接口没有真实物理作用量的条件下，构造含局域 Wick 多项式、timelike trace 多项式和总自由能量的经典／量子代数。区域 action 与 trace matching 独立决定 transmission operator；由此证明重建的 Peierls kernel、Wick kernel 和全部选定多项式系数代数与独立 uncut construction 同构。证明不是有限模截断结论。

**形式微扰定理。** 对平滑、紧支撑的 bulk polynomial interaction，在相同的局部重整化 prescription 下，粘合与 renormalized Bogoliubov construction 逐阶交换。这里的“量子理论”是形式耦合常数／$\hbar$ 展开，不是非微扰 $C^*$-completion。一般物理边界、独立 defect interactions 以及任意 boundary-supported time-ordered products 不由此自动覆盖。

**不能同时要求的更强版本。** 保持每个区域的 fixed-history Poisson bracket 不变，再仅通过识别 histories 与取商得到全局代数，一般不成立。独立反射区域的真空、Wick prescription 或有限 counterterms 也不能不经匹配就粘成同一全局量子理论。

全篇不使用 $\Omega$、Hamiltonian-gradient admissibility 或 $\Omega^{-1}$ 来定义代数。PDE、operator domain、causal response 和分布的 wavefront 条件仍然是必要输入。

---

## 1. Observable-first 到底改变了什么

设 $\mathcal C_R$ 是区域 $R$ 的离壳配置空间。一个 observable 是

$$
F:\mathcal C_R\longrightarrow\mathbb C,
$$

而不是 $\mathcal C_R$ 的一个元素。以下三个运算必须区分：

$$
(FG)(\phi)=F(\phi)G(\phi),\qquad
\{F,G\}=\langle F^{(1)},E G^{(1)}\rangle,
\qquad F\star_WG.
\tag{1.1}
$$

第一项是经典交换乘法，第二项是 Peierls 括号，第三项才是量子非交换乘法。重整化的 time ordering $T_n$ 又是第四种结构，不能与 $\star_W$ 混同。[1–4]

“observable-first”不等于“没有方程、边界条件或传播子”。恰恰相反，$E$ 是**所声明完整动力学问题**的 causal propagator。改变人工边界条件会改变 $E$，因此会改变同一批泛函之间的括号。

也不需要强行禁止提到方程的解。可以先在离壳配置上定义代数，再对场方程的 ideal 取商；这不是借助一个辛流形来定义 observable admissibility。

本文采用

$$
L=\partial_t^2+K,\quad
S_0[\phi]=\frac12\int dt\bigl(\|\dot\phi\|^2-a(\phi,\phi)\bigr),
\quad S_0^{(2)}=-L,
\tag{1.2}
$$

以及

$$
E=G^A-G^R,
\qquad W-W^T=iE.
\tag{1.3}
$$

这里 $G^{R/A}$ 是 $L$ 的 inverses；等价地，$E$ 是 action Hessian 的 retarded-minus-advanced inverse。这一选择给出通常的 $\{q,p\}=1$。

---

## 2. 为什么 fixed-history algebra 的普通取商不够

### 2.1 一个精确反例

在 $1+1$ 维平直时空，把 $x=0$ 暂时当作 Dirichlet wall。质量为零时，全空间 causal kernel 为

$$
E_0(\tau;x,y)
=-\frac12\operatorname{sgn}(\tau)
\theta\bigl(\tau^2-(x-y)^2\bigr).
\tag{2.1}
$$

右半空间 Dirichlet kernel 是

$$
E_D(\tau;x,y)=E_0(\tau;x,y)-E_0(\tau;x,-y),
\qquad x,y>0.
\tag{2.2}
$$

取 $x=y=1$、$\tau=3$，则

$$
E_0=-\frac12,\qquad E_D=0.
\tag{2.3}
$$

为避免把点场当成代数元素，可在这些点附近选择归一化 smooth test functions，支持小到上述严格 timelike 不等式在整个乘积支持上保持。两个涂抹括号仍分别为 $-1/2$ 与 $0$。

因此，假设一个保留单位元且保持同一物理场 label 的 Poisson map，试图把 fixed-wall observables 送到 uncut observables，就会要求

$$
0\longmapsto -\frac12\,1,
$$

这是不可能的。这个反例甚至不需要讨论 cross-region bracket：**同一区域内部的括号已经改变了。** 对 $m>0$，将每个 timelike kernel 乘相应的 $J_0(m\sqrt{\tau^2-r^2})$ 也得到非零差异。代码提供了独立数值检查。

### 2.2 正确的 composition 顺序

因此，真正的顺序是

$$
\boxed{
\text{identify histories}
\ \to\ \text{release them in the action/response problem}
\ \to\ \text{reconstruct }G^{R/A}
\ \to\ \text{define the new bracket/product}
\ \to\ \text{take the equation/matching quotient}.
}
\tag{2.4}
$$

最后的 quotient 可以是 Poisson／$*$-algebra quotient，但它使用的是 **released** bracket/product，不是旧的 Dirichlet one。

这与已有 regional response 逻辑一致：共同 history 的自由变分给出 response balance。需要替换的是 observable 的定义和 admissibility 条件，而不是把 release 这一步删除。[N1]

---

## 3. 从 regional action 独立构造 transmission operator

本节给出后面精确定理的 PDE 输入，并直接证明它适用于一大类静态非规范模型。

### 3.1 几何与 trace domain

取

$$
M=\mathbb R_t\times\Sigma,
$$

其中 $\Sigma$ 是光滑紧致 Riemannian manifold，先不保留物理外边界。有限个 Lipschitz cells $\Sigma_i$ 通过指定的 face maps 组成 $\Sigma$；允许自粘合及原先存在的多面角，但要求输出的 metric、field bundle 与坐标 atlas 光滑。这里不包含 conic quotient。

令

$$
\mathscr H_{\rm cut}=\bigoplus_iL^2(\Sigma_i),\qquad
\mathcal B_i=\gamma_iH^1(\Sigma_i).
\tag{3.1}
$$

$\mathcal B_i$ 是**联合 trace 的像**，不是各面的独立 trace spaces 之积。在矩形上，角点相容性属于此定义。这里使用 $H^1$ 是为了构造闭 quadratic form；observable 自身稍后定义在 smooth off-shell configurations 上，二者不能混淆。

共同 trace 的 form domain 为

$$
\mathscr V_{\rm com}
=\left\{(u_i)\in\bigoplus_iH^1(\Sigma_i):
\gamma_{\bar s}u_{r(\bar s)}=J_s\gamma_su_{r(s)}
\text{ on all paired sides}\right\}.
\tag{3.2}
$$

对于 scalar，$J_s$ 是 face identification 所诱导的 pullback。自粘合时复制的是 side occurrences，不是整个区域场。

定义

$$
a_{\rm cut}(u,v)
=\sum_i\int_{\Sigma_i}
\left(\nabla u_i\cdot\nabla v_i+m^2u_iv_i\right)d\mu_i,
\qquad m>0.
\tag{3.3}
$$

trace 的连续性使 $\mathscr V_{\rm com}$ 在分片 $H^1$ 范数下闭合，而 $a_{\rm cut}$ 加 $L^2$ 范数等价于该范数。区域内部紧支撑 smooth functions 的直和给出稠密子空间。因此这是稠密定义的闭正 form，在 $\mathscr H_{\rm cut}$ 上唯一确定 self-adjoint operator $K_{\rm tr}$。这是通过 field equation 的弱实现定义的 operator，不是辛形式。

### 命题 3.1：弱 release 与透明 transmission

设 $U$ 将 piecewise field 装配到粘合后的 $\Sigma$。则

$$
U\mathscr V_{\rm com}=H^1(\Sigma),\qquad
a_{\rm cut}(u,v)=a_\Sigma(Uu,Uv),
\qquad UK_{\rm tr}U^{-1}=-\Delta_\Sigma+m^2.
\tag{3.4}
$$

**证明。** 分片 $H^1$ 函数的分布一阶导数可能带有 face delta，其系数正是 trace jump。共同 trace 条件使这些 delta 消失，因而装配后的函数属于 $H^1$。反过来，全局 $H^1$ 函数的限制满足同一 trace 条件。这是一个双向的局部 statement，可在有限 collar atlas 中拼起来。

bulk integrals 在该识别下逐项相加；spatial faces 的体积测度为零。于是两边 closed forms 完全相同，其代表的 self-adjoint operators 也相同。

在 smooth face 内对 form 积分分部，operator domain 进一步要求

$$
\partial_{n_i}u_i+J_s^*\partial_{n_j}u_j=0.
\tag{3.5}
$$

这是共同 boundary variation 的自然边界条件。对 corners 不分别加入没有定义的法向点值，而保留弱 form identity。输出光滑时，椭圆正则性给出预期的全局 smooth operator core。证毕。

**解释。** trace continuity 是 form domain 的条件；normal-response balance 是所关联 operator 的条件。二者在这里没有被合成一个手工 penalty，也没有预设全局传播子。

对于 $1+1$ 有限区间的固定外端 Dirichlet 条件，同一论证将 $H^1$ 换成相应 physical-boundary subspace。对 general physical boundaries 的量子局域复合场，后文仍需单独的 boundary microlocal/renormalization 输入；自由 interval 的内部 kernel 可直接用反射法核验。[5]

### 3.2 Causal 与 Wick kernels

由 $K_{\rm tr}>0$ 定义

$$
G^R(t,t')=\theta(t-t')
\frac{\sin(\sqrt K(t-t'))}{\sqrt K},
\tag{3.6}
$$

$$
G^A(t,t')=-\theta(t'-t)
\frac{\sin(\sqrt K(t-t'))}{\sqrt K},
\qquad
E(t,t')=-\frac{\sin(\sqrt K(t-t'))}{\sqrt K},
\tag{3.7}
$$

以及静态 ground-state Wick kernel

$$
W(t,t')=\frac{e^{-i\sqrt K(t-t')}}{2\sqrt K}.
\tag{3.8}
$$

不需要先做 mode expansion 才能定义这些算符。正性、bisolution property、$W-W^T=iE$ 都由 spectral calculus 得到。光滑 ultrastatic 输出上的标准 Hadamard/microlocal 结果使这些 kernels 具有所需的频率方向。[3,6]

由命题 3.1 立即有

$$
UG_{\rm tr}^{R/A}U^{-1}=G_M^{R/A},\qquad
UE_{\rm tr}U^{-1}=E_M,\qquad
UW_{\rm tr}U^{-1}=W_M.
\tag{3.9}
$$

两端是独立构造：左边从 regional forms 与共同 trace 得到，右边从 uncut $-\Delta_\Sigma+m^2$ 得到。

---

## 4. Boundary observable 的完整 Peierls response

只处理 bulk source 会漏掉 history-dependent observable 的一阶变分。本节把它写全。

### 4.1 从固定 history 的四个 response blocks 出发

采用 outward action response

$$
\Pi_i=-\partial_{n_i}\phi_i.
$$

对给定 bulk perturbation $f_i$ 和共同 trace 变化 $\eta$，区域 retarded/advanced response 为

$$
u_i^\sigma=G_{i,D}^\sigma f_i+H_i^\sigma\eta,
\qquad
\delta\Pi_i^\sigma=\rho_i^\sigma f_i+D_i^\sigma\eta,
\quad \sigma=R,A.
\tag{4.1}
$$

令 $F$ 的一阶变分具有 bulk 与 boundary 两部分：

$$
\delta F=\sum_i\langle f_i,\delta\phi_i\rangle+
\langle a,\delta q\rangle.
\tag{4.2}
$$

这里先对平滑紧支撑的 bulk/face source 推导 retarded/advanced response；对于更一般的 distributional polynomial derivatives，稍后的代数通过合法的 $E,W$ contractions 定义，不预设每个分布源都具有 smooth retarded response。

这是泛函微分的分解，不是 Hamiltonian-gradient 条件。对 $S+\varepsilon F$ 做变分，得到

$$
Lu_i=f_i,\qquad
\sum_i\delta\Pi_i+a=0.
\tag{4.3}
$$

设

$$
\mathsf D^\sigma=\sum_iD_i^\sigma,
\qquad \mathsf K^\sigma=(\mathsf D^\sigma)^{-1}
\tag{4.4}
$$

存在于相应因果 history domain。这里的 inverse 是 retarded/advanced response inverse，不是无说明的频域除法；其存在可由 transmission problem 验证。于是

$$
\eta^\sigma=-\mathsf K^\sigma
\left(\sum_i\rho_i^\sigma f_i+a\right).
\tag{4.5}
$$

将 $G_D$ 记为 block diagonal，$H$ 为 column、$\rho$ 为 row，完整 response matrix 是

$$
\boxed{
\mathbb G^\sigma=
\begin{pmatrix}
G_D^\sigma-H^\sigma\mathsf K^\sigma\rho^\sigma
&-H^\sigma\mathsf K^\sigma\\
-\mathsf K^\sigma\rho^\sigma&-\mathsf K^\sigma
\end{pmatrix}.
}
\tag{4.6}
$$

因此应使用

$$
\mathbb E=\mathbb G^A-\mathbb G^R,
\qquad
\{F,G\}_{\rm rel}
=\left\langle(F_\phi,F_q),
\mathbb E(G_\phi,G_q)\right\rangle.
\tag{4.7}
$$

少掉 $F_q,G_q$ 相当于仍将被释放的 history 当成外参。

### 4.2 为什么这不是额外加入边界自由度

在输出的 smooth configuration space 上令

$$
\mathsf T\phi=(\phi,\gamma\phi).
\tag{4.8}
$$

boundary source $a$ 对应分布 source $\gamma^*a$。由 (4.3) 的弱 transmission identity 和 causal uniqueness，

$$
\boxed{\mathbb G^\sigma=\mathsf T G_{\rm tr}^\sigma\mathsf T^*,
\qquad \mathbb E=\mathsf T E_{\rm tr}\mathsf T^*.}
\tag{4.9}
$$

等式 (4.9) 的第一项按弱 boundary-value composition 解释：先解带 surface source 的 transmission problem，再取已证明存在的 trace。它不是对 inverse kernel 作一个未经检验的 Hörmander pullback。inverse kernel 在对角线上可含非特征方向的奇性；相比之下，$E$ 和 $W$ 的 timelike trace 可直接按其 wavefront 条件定义。

因而 $q-\gamma\phi$ 不是新的物理变量，而是同一 observable 的冗余 presentation。若同时保留 $p_i=-\partial_{n_i}\phi_i$，在 causal/Wick 层把 $\mathsf T$ 扩成 $(1,\gamma,\nu)$ 即可；不需要给 $q,p$ 预设 canonical bracket。带法向导数源或更高 codimension 源的单独 retarded/advanced self-response 还需规定合法的一侧 trace 或 extension，不能从这个写法自动推出。

量子 version 使用

$$
\mathbb W=\mathsf T W_{\rm tr}\mathsf T^*.
\tag{4.10}
$$

在允许的 microlocal class 中，graph relations 的所有导数均被 $\mathbb W$ 消去，因此它们生成两侧 $\star$-ideal。这里必须先使用 released kernel。

### 4.3 Trace bracket 确实不再是零

在 massive $1+1$ 全空间沿 $x=0$ 取 trace，有

$$
E_\Gamma(t,t')=-\frac12\operatorname{sgn}(t-t')
J_0(m|t-t'|).
\tag{4.11}
$$

对于 $b,c\in C_c^\infty(\mathbb R)$，

$$
Q_b=\int b(t)q(t)dt,
\qquad
\{Q_b,Q_c\}=\iint b(t)E_\Gamma(t,t')c(t')dt\,dt'.
\tag{4.12}
$$

它一般非零。固定 Dirichlet history 的 $q$ 则是中央参数。**同一 boundary label 在两种动力学实现中具有不同 bracket。**

---

## 5. 选择一个实际闭合的 function class

### 5.1 为什么不直接说“所有 smooth/microcausal functionals”

任意 smooth functional 的 distributional derivatives 未必能与 propagators 收缩。进一步，只有逐配置 wavefront 限制的通用 microcausal 定义还不足以保证括号对配置的光滑依赖；已有明确反例。Equicausal 条件修复了这种一致性问题。[2]

本节先选择更小但完全足够容纳 polynomial local composites 和能量的类：**固定分布系数、有限场次数的 microlocal polynomials**。它们的背景依赖本来就是有限多项式，不会触发上述一般非多项式失效。本文不把整个原有 smooth Hamiltonian family class 认作它的量子化。

### 5.2 定义

在 smooth spacetime $R$ 上令

$$
\mathcal C_R=C^\infty(R;\mathbb R).
$$

定义

$$
F(\phi)=\sum_{k=0}^{N}\frac1{k!}
\langle f_k,\phi^{\otimes k}\rangle,
\qquad f_k\in\mathcal E'(R^k)_{\mathrm{sym}},
\tag{5.1}
$$

且

$$
\operatorname{WF}(f_k)\cap
\left(\overline V_+^{\,k}\cup\overline V_-^{\,k}\right)
=\varnothing.
\tag{5.2}
$$

这里每个因果锥包含零 covector，但排除全零 tuple。支持在 spacetime 中紧致，尤其在有限时间 slab 上必须与 temporal endpoints 保持所声明的距离。

记该空间为 $\mathcal P_\mu(R)$。对于 cut presentation，不把 $R$ 当作一个预先定义了全局量子理论的对象，而使用由 regional interiors 与已配对 collars 构成的联合 smooth test space；在这些几何 charts 上逐核实施 (5.2)。§7 给出其独立定义及 surjectivity。

这个类包含

$$
\int_R f(x)\phi(x)^n d\mu,
\quad
\int_R f(x)\nabla\phi(x)\nabla\phi(x)d\mu,
\tag{5.3}
$$

以及任意有限 jet polynomial 的 smooth compact smearing。它也包含符合 (5.2) 的非局域 polynomial kernels，故并非只含 local functionals。

### 命题 5.1：经典与自由量子闭合

设 $W$ 是 Hermitian Hadamard bisolution，且 $W-W^T=iE$。则

$$
\mathfrak A^{\rm off}_{\rm cl}(R)
=(\mathcal P_\mu(R),\cdot,\{\ ,\ \}_E),
\tag{5.4}
$$

和

$$
\mathfrak A^{\rm off}_{\rm q}(R)
=(\mathcal P_\mu(R)[[\hbar]],\star_W,*),
\tag{5.5}
$$

均闭合，其中

$$
F\star_WG
=\sum_{r\ge0}\frac{\hbar^r}{r!}
\langle F^{(r)},W^{\otimes r}G^{(r)}\rangle,
\qquad F^*=\overline F.
\tag{5.6}
$$

对于两个普通 polynomial，这个和有限。

**证明。** 将每个 coefficient contraction 写为有限个顶点与有向 $W$-edges。每条 edge 的一端为未来方向，另一端为过去方向。Hörmander 乘积条件可能失效时，需要在某个输入 coefficient 的全部 legs 上出现同向因果 covectors，违反 (5.2)。对于输出 kernel，假设全部未收缩 covectors 都是未来方向：收缩中第二个输入顶点的收缩 legs 也被迫为未来方向，于是该输入违反 (5.2)。全部过去方向的情形在第一个输入顶点给出矛盾。因此 contraction 存在，输出仍满足 (5.2)。输出支持在输入 compact supports 的投影内。

每个输出仍具有固定分布系数及有限场次数，所以其配置导数的光滑性没有额外极限问题。三重乘积的两种结合次序均枚举同一批三顶点有向 contractions，给 associativity；共轭使每条 edge 反向，给 $(F\star G)^*=G^*\star F^*$。

首阶反对称部分为

$$
[F,G]_{\star_W}=i\hbar\langle F^{(1)},E G^{(1)}\rangle+O(\hbar^2).
\tag{5.7}
$$

associativity 的最低阶 antisymmetric consequence 给 Peierls Jacobi identity。点乘的 Leibniz rule 由一阶泛函微分直接得到。证毕。

这是固定 free Hessian 的证明；不能把其中“kernel 与背景无关”悄悄用于任意非线性理论。§11 单独处理形式微扰。

### 5.3 On-shell quotient 不引入辛形式

令

$$
\mathcal J_R
=\{F\in\mathcal P_\mu(R):F(\phi)=0
\text{ whenever the declared bulk equations and boundary relations hold}\}.
\tag{5.8}
$$

定义

$$
\mathfrak A_{\rm cl}(R)=\mathfrak A^{\rm off}_{\rm cl}(R)/\mathcal J_R,
\qquad
\mathfrak A_{\rm q}(R)=\mathfrak A^{\rm off}_{\rm q}(R)/\mathcal J_R[[\hbar]].
\tag{5.9}
$$

这里使用的是配置空间中的 equation locus，不要求它被赋予辛结构。线性 EOM probes $\phi(Lf)$ 与全部 observables 的 contractions 为零，因为 $W$ 是 bisolution。但要把整个 (5.8) 而不只是线性生成子用于 quotient，还需要以下证明。

### 引理 5.2：静态 compact 模型中的 vanishing ideal

在 §3 模型中，$\mathcal J_R[[\hbar]]$ 是两侧 $\star_W$-ideal。

**证明。** 使用 $K$ 的 smooth positive-energy spectral cutoff 得到有限秩 smooth bisolutions $W_N$。每个 $W_N$ 的每条腿是一个 smooth homogeneous solution。若 $F$ 在 equation locus 上恒为零，则它在该 locus 上沿任意有限组 homogeneous solution directions 的全部导数均为零。于是 $F\star_{W_N}G$ 与 $G\star_{W_N}F$ 在该 locus 上均为零。

必须在允许与 coefficient distributions 收缩的 topology 中取极限，而不是只用弱分布收敛。所需 cutoff convergence 可这样核查：在一个 compact coordinate chart 上，joint eigenmode 的大频率满足 $|\tau|\sim\sqrt K$、空间主符号 $|\xi|^2\sim\tau^2$。在与相应 future/past causal cones 分离的 Fourier cone 上，局部椭圆估计与 cutoff 的 Fourier 快速衰减给任意阶的逆频率估计。局部 eigenfunction Sobolev bounds 与多项式 spectral counting 使这些估计在求和后仍成立。故 $W_N\to W$ 在包含其 wavefront 的适当 closed cone 上以 normal distribution topology 收敛。有限 tensor powers 及与 (5.2) 系数的 admissible contractions 保持此收敛。

因此可将前述零值逐个 contraction 传到极限。固定 $F,G$ 只有有限项，故没有交换无限场次数求和的问题。证毕。

在 interval 上，这个 argument 可完全用 sine modes 的局部 Fourier tails 实现；已有项目 note 也给出了这一版本。[N2] 这里有限秩 cutoff 仅用于证明 ideal，不是代数定义或物理截断。

---

## 6. Boundary traces 是否属于同一 algebra

### 命题 6.1：timelike-stratum local polynomials 可纳入

设 $\iota:C\hookrightarrow R$ 为 smooth timelike submanifold，$b$ 在 $C$ 上平滑紧支撑。则

$$
B_b(\phi)=\int_C b\,P(j^r\phi|_C)
\tag{6.1}
$$

属于 $\mathcal P_\mu(R)$，其中 $P$ 是有限 polynomial。可以包含法向有限阶导数。

**证明。** $B_b^{(k)}$ 的 singular support 位于 $C$ 上的 multi-diagonal，其 conormal covectors 满足

$$
\sum_{j=1}^k\xi_j\in N^*C.
\tag{6.2}
$$

因为 $C$ timelike，$N^*C$ 是 spacelike。若 $\xi_j$ 全为未来因果 covectors，且至少一个非零，其和是非零未来因果 covector，不可能属于 $N^*C$；过去方向同理。有限微分不扩大 wavefront。故满足 (5.2)。证毕。

此命题适用于静态 face worldtubes，也适用于在光滑输出几何中形成的 timelike corner worldlines 等 strata。它不凭空增加 corner degrees of freedom：这些 labels 始终是同一 smooth field 的 traces。

**正则性边界。** corner point trace 在一般 $H^1$ 配置上未必存在。本命题的 observable domain 是 smooth off-shell configurations，而不是宣称这些 observables 连续于全部 energy-space configurations。PDE form regularity 和 observable regularity 是两项不同声明。

### 6.2 Quantum trace 与 pointlike notation

定义 $q(b)=\phi(\iota_*b)$ 后，

$$
[q(b),q(c)]_\star=i\hbar\langle b,\iota^*E\,\iota_*c\rangle.
\tag{6.3}
$$

同样可定义 smeared $:q^n:$、$:q\partial_n\phi:$ 等。这里 $q(t)$ 是 operator-valued distribution 的记号；没有 smearing 的单点 $q(t_0)$ 一般不是所定义 algebra 的元素。

对 free Wick composite 的相关 distributions，timelike pullback 的 wavefront 条件成立。因此沿界面的 coincident-field composite 可以定义，而不需要将界面视为一个独立量子场论。

### 6.3 不能推广为“所有边界数据都自动在代数里”

如果 $C$ spacelike，其 conormal 是 timelike，(6.2) 的排除论证失效。线性场的 Cauchy restriction 与任意 Wick composite 的 sharp equal-time restriction 是不同问题。以 $3+1$ 维 $:\phi^2:$ 为例，仅对空间做 smooth smearing、对时间作 delta restriction，其 vacuum two-particle norm 的高动量积分一般发散；额外的平滑时间 smearing 会改变这一结论。

null cut 还存在 characteristic restriction 和零模／约束问题。本文不把 timelike-stratum 定理搬到 spacelike/null faces。

**因此可统一 regional/global 的 observable 定义，但不能删掉边界的 causal type、trace topology 与 operator realization。**

---

## 7. 联合 regional labels 与非循环的 reconstruction theorem

一个真正的全局 polynomial kernel 可以横跨多个区域，或者其 singular support 恰好落在 seam。它未必是有限个 isolated-interior observables 的乘积。必须说明从哪一种 regional input 出发。

### 7.1 所使用的 joint label space

区域输入包含以下纯几何／动力学数据：各个 bulk cell、paired collar charts、field/jet identifications、联合 trace image、regional action 及四个 response blocks。没有加入目标全局 algebra。

先用这些 collar maps 构造 smooth test labels：interior chart 中是普通 smooth tests；跨 seam chart 中是两侧 jets 按给定过渡映射相容的 tests。令其 LF 空间为 $\mathscr D_{\rm cut}$。同样定义多点 test space，并取其分布对偶的紧支撑部分。准确说，$\mathscr D_{\rm cut}^\prime$ 是全部 distributions；所用 coefficient space 是其中的 compactly supported 子空间，等价于相应 $C^\infty$ 空间的连续对偶。

在这些 charts 中施加 (5.2)，得到 $\mathcal P_{\mu,\rm cut}$。还可以增加显式 trace labels $q$，但需对 $q-\gamma\phi$ 的 graph relations 取商；等价地，将每个 trace coefficient 推送为 bulk-supported current 后检查其 wavefront。这是**可在 regional geometric data 上检查的 coefficient 条件**，不涉及未知的全局 Poisson bracket。

这样得到的 joint class 不等于

$$
\bigotimes_i^{\rm alg}\mathcal P_\mu(R_i^\circ).
\tag{7.1}
$$

它明确保留了需要跨 seam 比较的 collar labels。也不能通过对任意 distribution coefficient 乘 $1_{R_i}$ 得到它：该乘积的 wavefront 条件可能失败。对于特定的 piecewise local integrals，sharp spatial cutting 可以直接定义且可能满足 (5.2)；这不证明任意 kernel 都可如此切割。

### 定理 7.1：自由 polynomial Peierls/Wick sewing

在 §3 假设下，以 $E_{\rm tr},W_{\rm tr}$ 在上述 joint class 上定义 released products。令 $\mathcal J_{\rm cut}$ 是其 equation/matching ideal。则 assembly 给出

$$
\boxed{
\mathfrak A^{\rm cl}_{\rm sew}
:=\mathcal P_{\mu,\rm cut}/\mathcal J_{\rm cut}
\ \cong\
\mathcal P_\mu(M)/\mathcal J_M,
}
\tag{7.2}
$$

和

$$
\boxed{
\mathfrak A^{\rm q}_{\rm sew}
:=\bigl(\mathcal P_{\mu,\rm cut}[[\hbar]],\star_{W_{\rm tr}}\bigr)
/\mathcal J_{\rm cut}[[\hbar]]
\ \cong\
\bigl(\mathcal P_\mu(M)[[\hbar]],\star_{W_M}\bigr)
/\mathcal J_M[[\hbar]].
}
\tag{7.3}
$$

**证明。**

第一，几何 assembly 在 compact smooth test spaces 上是一个 topology-preserving bijection。测试函数能在相容 collars 中拼接；任意 uncut test function 也可限制为这些标签。对 compactly supported distributions 取对偶，并使用 diffeomorphism 下的 wavefront transformation，得到两边 coefficient classes 的双射。

这也给出实际 surjectivity：对一个全局 $f_k$，在 $M^k$ 的有限 product collar/interior cover 上选 smooth partition of unity；每一项都是预先允许的 joint regional coefficient。此处使用的是 smooth partition，不是假定任意 distribution 可作 sharp face restriction。

第二，命题 3.1 和 (3.9) 给出由区域动力学构造的 kernel 与 uncut kernel 相同。故对每个有限 contraction，assembly $\Theta$ 满足

$$
\Theta\{F,G\}_{E_{\rm tr}}
=\{\Theta F,\Theta G\}_{E_M},
\tag{7.4}
$$

$$
\Theta(F\star_{W_{\rm tr}}G)
=(\Theta F)\star_{W_M}(\Theta G).
\tag{7.5}
$$

第三，弱 transmission equation 与 uncut field equation 在 $U$ 下等价，故 $\Theta\mathcal J_{\rm cut}=\mathcal J_M$。引理 5.2 使这两个 kernels 都是 quantum ideals，因而得到 quotient isomorphisms。证毕。

### 7.2 这个定理证明了什么，没证明什么

它不是“定义 sewn bracket 为目标 global bracket 的 pullback”。$K_{\rm tr}$、$G_{\rm tr}$ 与 $W_{\rm tr}$ 已从 regional action 和 trace domain 构造，然后才与独立 uncut operator 比较。

不过，它确实使用了比裸 isolated-interior algebras 更强的输入：joint collar/source labels 与 response data。因此它**没有**证明一个只以抽象 Poisson algebras 为输入的 universal pushout theorem，也没有证明任意旧 history-family 泛函都属于此新 class。

这不是隐藏的缺口，而是 theorem 的对象选择。§2 已排除保持原 fixed-history brackets 的裸代数版本。本文也没有把这种 algebraic closure 自动升级为一个完整 local net 的 time-slice／representation theorem；那些是不同的验收问题。

### 7.3 Finite successive sewing

只要每个中间 cluster 保留未粘合面的联合 trace 与 collar data，有限次 sewing 的最终 closed form 都是同一个 $a_{\rm cut}$ 在最终共同 trace domain 上的限制。因此最终 $K,E,W$ 与上述 coefficient identification 与次序无关。

由此得到 physical quotient 上的 associative composition。无需要求任意 off-matching extension 也彼此相同。更换 corner topology、operator domain 或 renormalization constants 则不属于同一个 composition problem。

---

## 8. Wick coincidence 与局域复合算符

### 8.1 不能直接计算 $W(x,x)$

局域 polynomial symbol $\int f\phi^2$ 在 quantum algebra 中表示一个 Wick composite，不表示把 $\phi(x)\star\phi(y)$ 直接令 $y=x$。后者包含未经定义的 $W(x,x)$。

取一个与 $W$ 有同一 Hadamard 奇性及相同局部 $i0$ prescription 的 subtraction parametrix $H_{\rm loc}$。在 $W$-normal-ordered representation 中，

$$
:\phi^2:_{H_{\rm loc}}(f)
=\int f(x)\phi(x)^2d\mu_x
+\hbar\int f(x)[W-H_{\rm loc}](x,x)d\mu_x
+\hbar C(f)\,1.
\tag{8.1}
$$

其中 $W-H_{\rm loc}$ 在对角线附近光滑，$C$ 表示允许的有限局域 renormalization。高阶 Wick powers 与导数复合场由同一 point-splitting／局部 Wick prescription 定义。[3,4]

free observable product 本身的 contractions 不等于 Feynman time ordering。正频 wavefront 条件使 $W^r$ 作为两点 distribution 可以定义；这不使 $W(x,x)$ 成为有限数。

### 8.2 一个包含 double contraction 的完整公式

令

$$
Q_f=\frac12\int f\phi^2,
\qquad Q_g=\frac12\int g\phi^2.
$$

则

$$
\begin{aligned}
Q_f\star_WQ_g={}&Q_fQ_g
+\hbar\iint f(x)g(y)\phi(x)W(x,y)\phi(y)\,dxdy\\
&+\frac{\hbar^2}{2}\iint f(x)g(y)W(x,y)^2\,dxdy.
\end{aligned}
\tag{8.2}
$$

全部三项都在 $\mathcal P_\mu[[\hbar]]$ 中。若 $f,g$ 位于不同 cells，使用的必须是 $W_{\rm tr}$ 的相应 cross block。由定理 7.1，每一项，包括 $\hbar^2$ 的 c-number contraction，都与 uncut construction 相同。

对 §6 的 timelike-trace Wick polynomials，同一公式以合法的 trace pullback 解释。因此自由定理不是只验证线性 CCR，也不是避开 coincident fields 后才成立。

### 8.3 改变 Wick representative

若同一完整动力学下 $W'=W+s$，其中 $s$ 光滑、对称且为 bisolution，则

$$
\alpha_s=\exp\left(\frac\hbar2
\left\langle s,\frac{\delta^2}{\delta\phi^2}\right\rangle\right)
\tag{8.3}
$$

给出

$$
\alpha_s(F\star_WG)=\alpha_sF\star_{W+s}\alpha_sG.
\tag{8.4}
$$

这是不同 Hadamard/Wick representatives 的等价，不是改变 commutator 的操作。

**不能取 $s=W_{\rm tr}-W_D$ 来直接套用。** 两个 kernels 的 antisymmetric parts 通常不同，差也可能包含反射奇性，根本不是同一理论内的 smooth symmetric change。应该先 release 重建理论，再比较该理论中的 Wick schemes。[5]

---

## 9. 能量在此代数中如何定义与粘合

### 9.1 Spacetime-smeared stress tensor

最小耦合 scalar 的经典 stress tensor 为

$$
T_{\mu\nu}
=\nabla_\mu\phi\nabla_\nu\phi
-\frac12g_{\mu\nu}
\bigl((\nabla\phi)^2+m^2\phi^2\bigr).
\tag{9.1}
$$

对 smooth compact $f^{\mu\nu}$，$T(f)$ 是 §5 的 finite-jet polynomial。量子版本通过对导数双场做 Hadamard subtraction 并加入允许的局域 curvature counterterms 定义；守恒要求相应 Ward prescription，而不是任意 normal ordering 都自动给同一局域 stress tensor。[3,7]

因此能量密度复合场的存在已经超出了只含线性场的 CCR algebra。

### 命题 9.1：总自由能量的 observable-first 表达

在 compact $\Sigma$ 上取 $\chi\in C_c^\infty(\mathbb R)$，$\int\chi=1$，并令

$$
H_\chi(\phi)=\frac12\int dt\,\chi(t)
\left(\|\dot\phi(t)\|^2+a(\phi(t),\phi(t))\right).
\tag{9.2}
$$

它是 $\mathcal P_\mu(M)$ 中的 spacetime-local polynomial。其 on-shell class 与 $\chi$ 无关，而且

$$
\{F,H_\chi\}=\langle F^{(1)},\dot\phi\rangle
\quad\text{on shell}.
\tag{9.3}
$$

**证明。** 方程 $\ddot\phi+K\phi=0$ 给

$$
\frac{d}{dt}\frac12(\|\dot\phi\|^2+a(\phi,\phi))=0,
$$

故 on-shell class 与 $\chi$ 无关。直接变分后，在 equation locus 上

$$
H_\chi^{(1)}=-\chi'\dot\phi+2\chi K\phi.
\tag{9.4}
$$

把 (3.7) 代入并对 $\chi'$ 积分分部，得到

$$
EH_\chi^{(1)}(t)
=\int ds\,\chi(s)
\left[\cos(\sqrt K(t-s))\dot\phi(s)
-\sqrt K\sin(\sqrt K(t-s))\phi(s)\right]
=\dot\phi(t).
\tag{9.5}
$$

最后一步是 wave equation 的演化恒等式，括号内与 $s$ 无关。代回 Peierls definition 即得 (9.3)。全程没有借用 canonical symplectic form。证毕。

### 9.2 Quantum generator

在静态 $W$-normal ordering 中，用同一个 quadratic symbol 定义 $H_W$。它与任意 polynomial 的两次及更高同向 Wick contractions 为零：对两个 positive-frequency modes，空间积分的 energy bilinear form 为零；不同 eigenvalues 正交，同一 eigenvalue 的两项相消。该恒等式通过 §5.2 的 cutoff limit 推广到允许的 distribution coefficients。

故

$$
\boxed{\frac1{i\hbar}[F,H_W]_\star
=\langle F^{(1)},\dot\phi\rangle\quad\text{on shell}.}
\tag{9.6}
$$

局部 covariant energy 与 $H_W$ 可相差由 renormalization prescription 决定的 c-number；该差不改变 generator，却改变 vacuum energy。

将 $a$ 分为 regional integrals，(9.2) 也分为区域能量积分。一个区域能量的一阶变分实际上含有

$$
\delta H_{i,\chi}\big|_{\Gamma}
=\int_\Gamma\chi\,\partial_{n_i}\phi_i\,\delta q
=-\int_\Gamma\chi\Pi_i\,\delta q.
\tag{9.6a}
$$

单独计算 regional energy bracket 时，这正是 §4 中不能漏掉的 boundary-source covector。相加后才由 $\Pi_1+\Pi_2=0$ 消去。在实际 smooth transmission fields 上，界面 energy flux 的 outward contributions 也抵消。因而在**同一个 released Wick／局域重整化 prescription**中，

$$
\Theta(H_{\chi,\rm cut}^{\rm ren})=H_{\chi,M}^{\rm ren}.
\tag{9.7}
$$

它不是“独立 Dirichlet vacua 的基态能量直接相加”。

### 9.3 一个可算的 finite vacuum energy

在长度 $L$ 的空间圆上取 periodic massive scalar，并用 infinite-line vacuum subtraction 固定 bulk vacuum convention。Poisson resummation 给

$$
E_{\rm Cas}(L,m)
=-\frac{m}{\pi}\sum_{n=1}^\infty\frac{K_1(nmL)}{n}.
\tag{9.8}
$$

推导如下。对 $\tfrac12\sum_n\sqrt{(2\pi n/L)^2+m^2}$ 使用 heat-kernel representation，并减去 Poisson-resummed 零 winding 项：

$$
E_{\rm Cas}
=-\frac{L}{8\pi}\sum_{k\ne0}
\int_0^\infty\frac{ds}{s^2}
 e^{-m^2s-k^2L^2/(4s)}.
\tag{9.9}
$$

积分等于 $4mK_1(m|k|L)/(|k|L)$，得到 (9.8)。$m>0$ 时指数收敛，且 $m\to0$ 给 $-\pi/(6L)$。因此在这个明确的 renormalization convention 下，

$$
H^{\rm ren}=H_W+E_{\rm Cas}(L,m)\,1.
\tag{9.10}
$$

这里的 $m\to0$ 只检查 vacuum-energy 公式的极限，不声称已经定义了含零模的 massless-circle ground state；主定理仍使用严格正的 $K$。

任何给同一圆、同一 metric 和同一 bundle monodromy 的有限区域粘合都重建相同 $K$，因而得到相同结果。这里已经同时指定 algebra、composite prescription 与用于求期望值的静态态，不能把这三项混成一个 bracket。

---

## 10. $1+1$ interval 的显式 reconstruction

这给出不依赖抽象 operator theorem 的检查，包含同一区域与跨区域 blocks。

取外端 Dirichlet 的两个区间，长度分别为 $a,b$，共同端点被释放。对 $\operatorname{Re}s>0$ 作时间 Laplace transform，令

$$
\kappa=\sqrt{s^2+m^2},\qquad\operatorname{Re}\kappa>0.
$$

若 $x$ 从各自外端向接口计距，则

$$
\widehat H_a(x)=\frac{\sinh(\kappa x)}{\sinh(\kappa a)},
\qquad
\widehat D_a=-\kappa\coth(\kappa a),
\tag{10.1}
$$

且

$$
\widehat G_{a,D}(x,y)
=\frac{\sinh(\kappa\min(x,y))
\sinh(\kappa(a-\max(x,y)))}
{\kappa\sinh(\kappa a)},
\quad
\widehat\rho_a(y)=\widehat H_a(y).
\tag{10.2}
$$

release 给

$$
\widehat G_{ij}
=\delta_{ij}\widehat G_{i,D}
+\frac{\widehat H_i(x)\widehat H_j(y)}
{\kappa[\coth(\kappa a)+\coth(\kappa b)]}.
\tag{10.3}
$$

由

$$
\coth A+\coth B
=\frac{\sinh(A+B)}{\sinh A\sinh B}
\tag{10.4}
$$

可知 cross block 恰好为

$$
\widehat G_{ab}(x,y)
=\frac{\sinh(\kappa x)\sinh(\kappa y)}
{\kappa\sinh(\kappa(a+b))},
\tag{10.5}
$$

其中 $y$ 从右外端反向计距。对于同一左 cell 且 $x\le y$，(10.3) 化为

$$
\widehat G_{aa}(x,y)
=\frac{\sinh(\kappa x)\sinh(\kappa(a+b-y))}
{\kappa\sinh(\kappa(a+b))}.
\tag{10.6}
$$

这就是长度 $a+b$ 的 uncut Dirichlet resolvent。Laplace inversion 的唯一性给 retarded equality；transpose 给 advanced equality，继而给 Peierls equality。SymPy 对 (10.5)、(10.6) 分别做了精确验证。

在半直线极限中，$D_++D_-=-2\kappa$，release 项恰好补回 fixed-wall Green function 中被减去的 image 项。这解释了 §2 的 bracket 改变。

---

## 11. 相互作用：形式量子定理与重整化相容性

本节将自由定理扩成明确的 formal statement。它不声称已经构造任意非规范相互作用理论的非微扰代数。

### 11.1 Classical linearized response

例如

$$
S=S_0-\frac\lambda{4!}\int g\phi^4,
\qquad
L_\phi=L_0+\frac\lambda2g\phi^2.
\tag{11.1}
$$

在一条指定 smooth background 上，$g$ 平滑紧支撑，$L_\phi$ 是 normally hyperbolic linearized operator。其 response kernels 的形式展开满足

$$
G_\phi^\sigma
=G_0^\sigma-G_0^\sigma V_\phi G_0^\sigma
+G_0^\sigma V_\phi G_0^\sigma V_\phi G_0^\sigma-\cdots,
\quad V_\phi=\frac\lambda2g\phi^2.
\tag{11.2}
$$

regional linearized equations 仍有 (4.1)–(4.6) 的形式，但每个 block 依赖背景。弱 flux matching 保证 assembled response 是同一 $L_\phi$ 的 causal solution，故由 uniqueness 得

$$
G_{\phi,\rm tr}^{R/A}=G_{\phi,M}^{R/A}.
\tag{11.3}
$$

这可在已证明 smooth well-posedness 的非线性存在域上使用，或者逐形式耦合阶使用。Jacobi 的背景导数不能省略：

$$
\delta G^\sigma=-G^\sigma(\delta L_\phi)G^\sigma
\tag{11.4}
$$

与 action 第三变分的对称性控制相关项。一般 smooth functional 的闭合仍需相应一致性条件，不能只援引自由 polynomial proof。[1,2]

### 11.2 Quantum algebra 不是给 $E_\phi$ 直接取指数

对于背景依赖的 Peierls tensor，直接写

$$
\mu\exp\!\left(\frac{i\hbar}{2}E_\phi^{ab}
\partial_a\otimes\partial_b\right)
$$

一般没有证明 associativity。本文使用已重整化的 perturbative construction，而不使用这条未经修正的公式。

在自由 Wick algebra 中，令

$$
S_{\mathcal R}(V)
=\sum_{n\ge0}\frac1{n!}
\left(\frac{i}{\hbar}\right)^n
T_{\mathcal R,n}(V^{\otimes n}),
\tag{11.5}
$$

$$
R_{V,\mathcal R}(F)
=\left.\frac\hbar i\frac d{d\epsilon}\right|_0
\left[S_{\mathcal R}(V)^{-1}_\star
\star S_{\mathcal R}(V+\epsilon F)\right].
\tag{11.6}
$$

这里先在 off-shell classical insertions 上定义 time ordering，再实施相应 renormalized field-equation/Ward relations。不能先把全部 EOM insertions 当成零，因为 time-ordered EOM insertions 有 contact terms。相互作用 quantum algebra 也不是把经典非线性 vanishing ideal 原样用于自由 $\star_W$ 的 quotient；引理 5.2 只证明了自由 theory 的 ideal statement。

这里 $F$ 首先取允许的 smooth local polynomial insertion。$T_{\mathcal R,n}$ 不是预设在全部 distributional $\mathcal P_\mu$ 上的 time ordering。[4,8]

定义 interacting observable algebra 为这些 renormalized fields 所生成的 $\star$-algebra，在耦合常数与 $\hbar$ 上作 coefficientwise formal completion。每个给定阶数只有有限类 graphs；经 Epstein–Glaser extensions 后，其未收缩 legs 给出符合 microlocal spectrum 条件的 finite-degree coefficient distributions。因此每阶落在自由 polynomial ambient algebra 中，ordinary observable multiplication 的闭合由命题 5.1 保证。这比仅仅说“取闭包所以闭合”多出实际的分布 admissibility statement。

在 (11.5) 的中间计算中，固定耦合阶允许有限阶负幂 $\hbar$；(11.6) 的 connected retarded expansion 才落在非负 $\hbar$ 次幂。理由是：含 $n$ 个 interaction vertices 且与一个指定 insertion 连通的图至少需要 $n$ 条 contractions，故其 $\hbar$ 次数至少为 $n-n=0$。这避免将含 $\hbar^{-1}$ 的 S-matrix 本身误认成普通 $[[\hbar]]$ 元素。

其 classical limit 由 tree retarded responses 给出，与 (11.1) 的 Peierls bracket 一致。更一般的 nonlinear functional completion 不在这个 polynomial-generated statement 中。

### 11.3 不能省略的 renormalization matching datum

自由 Wick kernels 相同，并不单独固定 interacting time-ordered products 在 total diagonals 上的有限 extension。所需输入是：

$$
\boxed{\text{在粘合后 smooth collar jets 上使用同一局部重整化规则与同一有限参数。}}
\tag{11.7}
$$

具体要求如下。

(1) bulk couplings、background fields、metric 和 bundle jets 在 seam 上真实光滑匹配。

(2) 先使用 released $W$ 构造 off-diagonal graph distributions。独立 reflecting $W_{i,D}$ 的 image singularities 不能被当作同一透明 theory 的 UV prescription。

(3) 各阶 diagonal extensions 采用相同 local covariance、scaling 和所选 Ward conditions，以及同一有限 local coefficients。

(4) 人工 seam 在 renormalized action 中不被赋予物理身份：不额外保留 $\delta_\Gamma\phi^2$、$\delta_\Gamma\phi^4$ 等 defect counterterms。若刻意保留它们，得到的是另一种 interface theory，而非原 smooth bulk theory。

如果 regional schemes 原本不同，有限 renormalization map 也必须作用于插入：例如 $S_{\mathcal R'}=S_{\mathcal R}\circ Z$ 时，$V$ 变为 $Z(V)$，$F$ 变为 $DZ(V)F$。只匹配 interaction coupling 而不匹配 composite insertion 的 contact terms 不够。[8,9]

### 定理 11.1：共同 prescription 下的 formal interacting sewing

在定理 7.1 的光滑无物理边界设置中，取 smooth compact bulk polynomial interactions，使用 (11.7) 的 prescription。则 assembly 给出所定义 interacting polynomial-generated algebras 的逐形式阶 $*$-isomorphism。

**证明。** 对 renormalized time-ordered order $n$ 归纳。远离 total diagonals，causal factorization 与较低阶 products 决定 graph distributions。由定理 7.1，全部 propagator blocks 已一致，故两种 construction 在这部分相同。

需要 extension 时，差只可能是支持在相应 diagonals 上、满足 scaling bound 的 local terms。将相同 jets 带入同一 local prescription，并指定相同的有限 coefficients，令两侧 extension 相同。在跨 seam collar 中，采用的是已装配的 smooth metric/field chart；不存在一个必须保留的物理边界。标准 scalar renormalization existence theorem 保证可以这样作出这些 extensions。[4]

因此逐阶得到

$$
\Theta T_{\mathcal R,\rm tr,n}(F_1,\ldots,F_n)
=T_{\mathcal R,M,n}(\Theta F_1,\ldots,\Theta F_n).
\tag{11.8}
$$

这不是先把 (11.8) 当作整个输入：输入是共同 local extension rule／有限 renormalization data；(11.8) 由 off-diagonal equality 与 extension induction 得出。

$\Theta$ 已是自由 $\star$-isomorphism，故它保持 formal $\star$-inverse、(11.5) 的 series 和 (11.6) 的 derivative。于是

$$
\Theta R^{\rm tr}_{V,\mathcal R}(F)
=R^M_{\Theta V,\mathcal R}(\Theta F).
\tag{11.9}
$$

它把生成子双向对应，并保持全部有限 products 及 coefficientwise formal completion，得到所声称 isomorphism。证毕。

### 11.4 为什么这不等于“独立区域 renormalize 后无需补充便可粘合”

若区域 interactions 被 sharp characteristic functions 截断，普通 smooth-coupling Epstein–Glaser theorem 不会自动适用。本文的跨 seam insertions 按 smooth collar labels 定义，或先把区域 densities 装配成 smooth coupling 再做 extension。不能在证明中悄悄把不允许的 sharp regional time ordering 当成已存在。

同样，free timelike trace Wick polynomials 的存在不证明所有 **boundary-supported time-ordered products** 已存在。Feynman distributions 在 coincidence diagonals 上可能违反直接 trace pullback 的条件。相互作用边界 composite 可以从已定义的 renormalized bulk composite 做满足 wavefront 条件的 restriction；任意独立 defect insertions 的多重 time ordering 则需额外的 extension theorem 和 defect renormalization data。

因此精確的 all-order statement 是：**smooth bulk interactions 的 formal observable algebra，在共同透明 prescription 下粘合。** 对全部独立边界 interaction sectors，本文不作同等强度声明。

### 11.5 Interacting energy

renormalized stress tensor 必须包括 interaction insertion 与相应 finite contact terms。对于 spacetime dimension $>2$ 的 scalar theory，可采用 Hollands–Wald 的条件得到 perturbative stress conservation。[7] 对有位置依赖的 coupling，Ward identity 还包含外源做功项；只有在 coupling 为常数的区域才可以去掉它。

维数 $2$ 不应直接引用该 $>2$ theorem 作为全阶证明。自由总能量已由 §9 在任意本节静态维数证明；$1+1$ interacting stress 的全阶选择需独立验证，有限阶模型计算不能自动升级为此定理。

---

## 12. 统一对象、适用范围与检验清单

### 12.1 本构造保留的增强对象

这里适合 composition 的对象可以记为

$$
\mathfrak O_R=
\left(
\mathcal C_R,\ \mathcal P_{\mu,R},\ \gamma_R,
\ \text{boundary realization},
\ G_R^{R/A},H_R^{R/A},\rho_R^{R/A},D_R^{R/A};
\ [W_R],\mathcal R_R
\right).
\tag{12.1}
$$

经典版本不需要末尾的 Wick／renormalization data。$[W_R]$ 表示同一动力学下允许的 Hadamard representatives，而不是必须指定一个物理真空。静态 ground kernel 是本文用于给出一个明确 realization 的选择。

这些数据也可全部表述为 source probes 的 retarded/advanced response operations；不必把 $\mathcal C_R$ 叫作 phase space。$\mathcal R_R$ 只在局域复合场与 time-ordered insertions 所需的层级使用。

regional 与 global 使用同一 algebra recipe。区别在于 boundary realization：一组人工边界仍被固定，还是已经释放成 transparent transmission。区分可不体现在两个不同的函数类名称里，却不能从动力学数据里删掉。

### 12.2 已证明与未证明的边界

| Statement | 本文状态 |
|---|---|
| fixed-wall brackets 不经改变即可 quotient 到 uncut algebra | 反例排除 |
| 固定分布系数 polynomial class 的 free Peierls/$\star$ closure | 命题 5.1 |
| smooth ultrastatic finite timelike sewing 的 operator/kernel equality | 命题 3.1、定理 7.1 |
| timelike-smearing 的 trace／finite-jet Wick polynomial membership | 命题 6.1、§8 |
| 固定分布系数 polynomial 代数的完整 reconstruction，而非仅 CCR | 定理 7.1，使用 joint collar labels |
| 自由总能量、generator 与共同 prescription 下的 energy sewing | §9 |
| 共享局部 prescription 的 smooth bulk formal interacting algebra | 定理 11.1 |
| 任意独立 regional renormalizations 自动唯一匹配 | 不成立；必须带有限 matching data |
| 整个旧 $\mathcal H_\beta$ 或全部 smooth nonlinear functionals 的量子化 | 未作此声明 |
| null/spacelike sharp composite boundary algebra、conic quantum Wick theorem | 不在本文精确定理内 |
| 一般真实物理边界／defect interaction 的全阶重整化 | 需要额外输入，未证明 |
| 任意非规范场论的非微扰 quantum gluing／Hilbert tensor factorization | 未作此声明 |

一个很直接的写作原则是：**将 Peierls response reconstruction 放在代数结构之前，而将完整的非多项式 completion 放在实际证明之后。** 当前 polynomial/Wick class 已经能量化复合场与能量，无需等到一个最大函数类被解决。

---

## 附录 A：正则性与 classical／quantum 逻辑的进一步分离

### A.1 为什么 polynomial 限制不是 finite-mode restriction

(5.1) 的有限 $N$ 限制的是一个 observable 的场次数，不是场的空间频率数。一个 $\phi^4$ observable 同时耦合无限多个场 modes，局域 energy density 也是如此。因此其 UV coincidence 问题仍真实存在，并由 distribution/Wick construction 处理。

### A.2 Equicausal enlargement 的位置

在一个已具有合适 causal/Hadamard kernels 的固定 free realization 上，可把 polynomial core 扩大到 equicausal class。[2] 但“每个 fiber 上 equicausal”不等于“任意 boundary-history-dependent family 在 release pullback 下仍 equicausal”。后者需要对 history directions、distribution topologies 及所有 mixed derivatives 的一致估计。本文不利用一个未证明的全 family extension 来支撑 (7.3)。

### A.3 Algebra、state 与 representation

(7.3) 是 $*$-algebra isomorphism，不是独立 regional Fock spaces 的 tensor-product identification。选定 state 后才讨论 expectation values、GNS representations、density operators 或 tracing out。即使两种 Wick representatives 等价，也不能推断任意选定 regional states 可同时扩成所指定的 global state。

### A.4 对其他非规范系统的扩展条件

多分量自由 bosonic fields 若具有非退化 normally hyperbolic Hessian、正的静态空间实现与相应 Hadamard matrix kernel，证明可加入 bundle indices 逐项重复。存在约束、退化 Hessian、fermionic grading、非局域边界条件或非正空间算子的系统，需要调整相应 hypotheses；“non-gauge”一个标签本身不是全部条件。

---

## 附录 B：执行过的检查及其证明力

附带 `verify.py` 检查：interval cross／diagonal resolvent 恒等式，半直线 image cancellation，massive／massless fixed-wall bracket 反例，含 boundary sources 的完整 Schur response matrix，连续 Schur elimination 的次序独立性，有限维 Wick associativity、CCR、Jacobi、自由能量生成元、smooth Wick-change intertwiner，以及 $\lambda^2$ 的 resolvent expansion；另核对 Wick square 的 double-contraction 系数与 circle Casimir 的 heat-kernel/Bessel 两种表达。

这些检查验证符号、系数和离散线性代数；它们**不是** continuum wavefront estimates、renormalization existence 或非线性 PDE existence 的数值证明。后者在正文中以具体证明、引用的定理或明确 hypothesis 出现。

---

## 参考文献

[1] R. Brunetti, K. Fredenhagen, P. L. Ribeiro, *Algebraic Structure of Classical Field Theory: Kinematics and Linearized Dynamics for Real Scalar Fields*, arXiv:1209.2148. 用于 observable-first classical framework；一般函数类的 admissibility 应同时参照 [2] 的修正。 <https://arxiv.org/abs/1209.2148>

[2] E. Hawkins, K. Rejzner, B. Visser, *A novel class of functionals for perturbative algebraic quantum field theory*, arXiv:2312.15203v3, 16 July 2026，特别是 §§4–7。用于一般 microcausal 缺陷、polynomial/equicausal 包含关系及 equicausal closure 的范围。 <https://arxiv.org/html/2312.15203v3>

[3] S. Hollands, R. M. Wald, *Local Wick Polynomials and Time Ordered Products of Quantum Fields in Curved Spacetime*, arXiv:gr-qc/0103074. 用于局域 Wick fields 与有限重整化自由度。 <https://arxiv.org/abs/gr-qc/0103074>

[4] S. Hollands, R. M. Wald, *Existence of Local Covariant Time Ordered Products of Quantum Fields in Curved Spacetime*, arXiv:gr-qc/0111108. 用于光滑无物理边界背景的 scalar time-ordered extension theorem；不是 sharp-boundary theorem。 <https://arxiv.org/abs/gr-qc/0111108>

[5] C. Dappiaggi, G. Nosari, N. Pinamonti, *The Casimir effect from the point of view of algebraic quantum field theory*, arXiv:1412.1409. 用于 reflecting-boundary algebras、image singularities 和 Wick extension 的区别。 <https://arxiv.org/abs/1412.1409>

[6] S. Hollands, R. M. Wald, *Quantum fields in curved spacetime*, arXiv:1401.2026. 用于 Hadamard、free states、复合场与 perturbative framework 的背景。 <https://arxiv.org/abs/1401.2026>

[7] S. Hollands, R. M. Wald, *Conservation of the stress tensor in perturbative interacting quantum field theory in curved spacetimes*, arXiv:gr-qc/0404074v2. 特别注意 stress conservation theorem 的 spacetime dimension $>2$ 条件。 <https://arxiv.org/abs/gr-qc/0404074>

[8] R. Brunetti, M. Dütsch, K. Fredenhagen, *Perturbative Algebraic Quantum Field Theory and the Renormalization Groups*, arXiv:0901.2038. 用于 renormalized relative S-matrices 与有限 scheme transformations。 <https://arxiv.org/abs/0901.2038>

[9] N. Drago, T.-P. Hack, N. Pinamonti, *The generalised principle of perturbative agreement and the thermal mass*, arXiv:1502.02705. 用于 quadratic splitting 与 perturbative agreement 的适用范围；不能将改变反射边界简单当成 smooth covariance shift。 <https://arxiv.org/abs/1502.02705>

[N1] `GaoZ1en/obsidian_note`, `Articles/Quantization in AdS/gluing/classical_gluing_formalism.md`, blob `0a8fdc8022303bc1d7a576def2bfa6a195a9de32`。本文对接其中的 joint trace／共同 history release／response balance 结构，不继承其 Hamiltonian-gradient 函数类定义。 <https://github.com/GaoZ1en/obsidian_note/blob/main/Articles/Quantization%20in%20AdS/gluing/classical_gluing_formalism.md>

[N2] `GaoZ1en/obsidian_note`, `Articles/Quantization in AdS/gluing/free scalar renormalized quantum observable algebra gluing.md`, blob `eddc723f60116389635eb16bb0291e8f31a7d9cb`。已有 free polynomial/interior equicausal、interval／smooth torus-Klein 结果及其边界限制。本文把 observable-first 的完整 boundary-source matrix 与 timelike trace membership 单独写出。 <https://github.com/GaoZ1en/obsidian_note/blob/main/Articles/Quantization%20in%20AdS/gluing/free%20scalar%20renormalized%20quantum%20observable%20algebra%20gluing.md>
