# Smooth Regional Observable Algebra Gluing for Polynomial Phi-n

**结论。** 对每个固定整数 $n\ge3$，在 [phi4 smooth regional observable algebra gluing](<phi4 smooth regional observable algebra gluing.md>)（以下记 [P4]）的同一 $1+1$ 维、固定时间开关、光滑边界与早期自由窗条件下，$\phi^4$ 的全阶形式 exact sewing 和有限时间局部实际 exact sewing 都成立。需要改变非线性递归、线性化势和小耦合估计；函数类、严格左逆与逐函数满射机制保留。奇偶性改变固定模型的变号对称性和势能下界，不改变这个局部重建定理。

本笔记讨论单项式势 $g\phi^n/n!$，$n$ 是固定整数。不是 $|\phi|^n$，也不把对全部 $n$ 的常数一致性或非整数幂在 $\phi=0$ 的光滑性当作前提。

## 1. Action、变分与 CPS

沿用 $\Sigma_i=[0,\ell_i]$、$y_i$ 朝 cut 增加、物理外端 Dirichlet，定义

$$
\begin{aligned}
S_{i,\lambda}^{(n)}[\phi_i]
&=\int_I dt\int_0^{\ell_i}dy_i
\left[\frac{\dot\phi_i^2-\phi_i'^2-m^2\phi_i^2}{2}
-\frac{\lambda g_i}{n!}\phi_i^n\right],\\
L_{i,0}\phi_i+\frac{\lambda g_i}{(n-1)!}\phi_i^{n-1}&=0.
\end{aligned}
$$

$g_i$ 在真正物理外端附近为零，在 artificial cut 按共同空间方向匹配全部 jets，时间支撑在 $J\Subset I^\circ$；$\sup K_\chi<\inf J$。所有这些是每个 $n$ 的同一模型条件，允许 cut 上的相互作用非零。

势项的变分没有导数，因此

$$
\begin{aligned}
\delta S_{i,\lambda}^{(n)}
&=-\int\left(L_{i,0}\phi_i+
\frac{\lambda g_i}{(n-1)!}\phi_i^{n-1}\right)\delta\phi_i
+\left[\int\dot\phi_i\delta\phi_i\,dy_i\right]_{t_-}^{t_+}
+\int\Pi_i\delta q_i\,dt,\\
\Pi_i&=-\phi_i'(\ell_i).
\end{aligned}
$$

先固定各自 history，再识别 $q_1=q_2=q$，最后允许共同 $\delta q$ 任意，仍得到 $\Pi_1+\Pi_2=0$。线性化算子为

$$
L_{\lambda,\phi}^{(n)}
=L_0+\mathcal V_\lambda^{(n)},\qquad
\mathcal V_\lambda^{(n)}
=\frac{\lambda g}{(n-2)!}\phi^{n-2}.
$$

这是实乘法势；两个线性化解的反对称 Green identity 中它相消。因此 fixed-history 辛流守恒、matching 上的内部通量抵消，以及 incoming $\Omega_i,\Omega$ 与 [P4] 完全相同。奇数 $n$ 时 $\mathcal V_\lambda^{(n)}$ 可以随背景改变符号；有限时间的线性能量估计不要求它非负。

## 2. 全阶形式解与实际小耦合

区域物理场由

$$
C_{i,\lambda}
=C_{i,0}
-\frac{\lambda}{(n-1)!}
G_{i,D}^R(g_iC_{i,\lambda}^{n-1})
$$

定义。设 $C_{i,\lambda}=\sum_{r\ge0}\lambda^rC_{i,r}$，则

$$
\boxed{
C_{i,r}
=-\frac1{(n-1)!}G_{i,D}^R
\left(g_i
\sum_{r_1+\cdots+r_{n-1}=r-1}
\prod_{\alpha=1}^{n-1}C_{i,r_\alpha}\right),\quad r\ge1.
}
$$

第 $r$ 阶只含更低阶的有限乘积，每一阶源仍是时间支撑在 $J$ 的 smooth function。零过去的线性方程唯一，因此这个公式直接证明任意固定 $n$ 的全阶形式 existence/uniqueness。前几阶为

$$
\begin{aligned}
C_{i,1}
&=-\frac1{(n-1)!}G_{i,D}^R(g_iC_{i,0}^{n-1}),\\
C_{i,2}
&=-\frac1{(n-2)!}G_{i,D}^R(g_iC_{i,0}^{n-2}C_{i,1}),\\
C_{i,3}
&=-G_{i,D}^R\left[
\frac{g_iC_{i,0}^{n-2}C_{i,2}}{(n-2)!}
+\frac{g_iC_{i,0}^{n-3}C_{i,1}^2}{2(n-3)!}
\right].
\end{aligned}
$$

实际版本用一维 $H^1\hookrightarrow L^\infty$，以及代数恒等式
$u^{n-1}-v^{n-1}=(u-v)\sum_{j=0}^{n-2}u^{n-2-j}v^j$，得到

$$
\begin{aligned}
\|u^{n-1}\|_{L^2}
&\le C^{n-2}\|u\|_{H^1}^{n-1},\\
\|u^{n-1}-v^{n-1}\|_{L^2}
&\le(n-1)C^{n-2}
\max(\|u\|_{H^1},\|v\|_{H^1})^{n-2}
\|u-v\|_{H^1}.
\end{aligned}
$$

对 $\|C_{i,0}\|_{\mathcal E}<M$ 的输入，充分条件可以取

$$
|\lambda|C_I|J|\,\|g_i\|_\infty
\frac{C^{n-2}(2M)^{n-2}}{(n-2)!}<\frac12,
$$

其中 $C_I$ 同时取足以保证 self-map 和 contraction 的常数。对固定 $n$，这总给一个非零的允许耦合区间。次数改变后的 $M^{n-2}$、embedding constants 和阶乘必须一起保留；不从这个充分界宣称允许半径随 $n$ 单调变化。

时间微分后的最高阶未知量满足 $L_{\lambda,\phi}^{(n)}$，其余源是低阶变分的有限乘积。故 [P4, §3.2] 的时间能量估计、Gronwall、空间递推与差商论证逐项适用，在同一个低阶存在域上给全部 ordinary-smooth jets 和全部 Bastiani mixed derivatives。这里只需低阶 contraction；不在每个 Sobolev 阶重新缩小 $\lambda$。

## 3. 函数类和重建机制为何保持

使用 [P4, §2] 独立定义的 $\mathcal H_\beta(Y)$、$\mathcal H(X)$，形式版本逐系数取 $[[\lambda]]$。区域输入仍为 action、history、response 和完整梯度结构；不是只有抽象区域代数的乘法/括号。

**完整转置。** 令

$$
G_\lambda^\epsilon
=(1+G_0^\epsilon\mathcal V_\lambda^{(n)})^{-1}G_0^\epsilon,\qquad
D\mathcal V_\lambda^{(n)}[h]
=\frac{\lambda g}{(n-3)!}\phi^{n-3}D\phi[h].
$$

每个背景及其有限阶变分光滑，$\mathcal V_\lambda^{(n)}$ 的时间支撑仍是固定 $J$。对内部 trace source，
$G_\lambda^\epsilon\gamma^*A\in C_t^\infty H_y^1$，
而 $\mathcal V_\lambda^{(n)}G_\lambda^\epsilon\gamma^*A\in C_c^\infty(J;L^2)$；
同一自由 $E_0$ 的时间平滑给 smooth incoming vector。高阶导数只增加乘法系数和响应的有限复合，因此 [P4, §4] 的转置正则性及固定支撑证明没有使用三次非线性的特殊恒等式。

Finite-jet 泛函的边界变分仍通过

$$
\partial_y^{r+2}\delta\phi
=\partial_t^2\partial_y^r\delta\phi+m^2\partial_y^r\delta\phi
+\sum_{j=0}^r\binom rj
(\partial_y^j\mathcal V_\lambda^{(n)})
\partial_y^{r-j}\delta\phi
$$

化为 $\delta q$ 与一阶 normal derivative。advanced boundary 解的转置以及
$a-\mathcal V_\lambda^{(n)}w$
的 bulk 项给 [P4, §4.2] 的同一个完整梯度公式，history 支撑在
$\operatorname{hull}(K_{\mathrm{test}}\cup J\cup K_\chi)$。因此同一 smooth bulk/boundary finite-jet observables、smooth functional calculus 和 pure-history smooth densities 仍属于选定的 family 类。

**严格左逆。** 从区域自由 quadratic form 定义 connected $G_0^R$ 后，取

$$
\begin{aligned}
\Phi_\lambda(z)
&=\psi_z-\frac{\lambda}{(n-1)!}G_0^R(g\Phi_\lambda(z)^{n-1}),\\
\mathsf R_\lambda z
&=(\mathsf T_1z,\mathsf T_2z,\kappa\gamma\Phi_\lambda(z)).
\end{aligned}
$$

所有 correction 在早期自由窗为零。因此
$\Delta_\lambda=\mathsf R_\lambda-\mathsf R$ 只改变晚期共同 history，
$\mathsf B\Delta_\lambda=0$，并且

$$
\boxed{\mathsf B\mathsf R_\lambda=1.}
$$

这个证明只用了 retarded support 和开关位置，与 $n$ 的奇偶性无关。强 patching 的递推把 $\partial_x^r(g\phi^3)/6$ 换成
$\partial_x^r(g\phi^{n-1})/(n-1)!$；连续场、匹配 normal flux 和 $g$ 的全部 jets 仍决定所有匹配 jets。

**Poisson closure 和 exact onto。** 完整 cut transpose 为

$$
A_\lambda(z)U
=\sum_i\mathsf T_i^\sharp V_i
+E_0\left(\gamma^*A
-\mathcal V_\lambda^{(n)}G_\lambda^A\gamma^*A\right).
$$

定义 $\Psi_\lambda=1+\Delta_\lambda\mathsf B$，
$\Psi_\lambda^{-1}=1-\Delta_\lambda\mathsf B$，两者的 density transposes 如 [P4, §7.1]。它们将自由 sewn Poisson structure 运输成

$$
\mathsf P_\lambda(y)
=D\mathsf R_\lambda(\mathsf By)A_\lambda(\mathsf By).
$$

所有 map/transpose 的正则性已在上面证明，所以运输确实作用在整个定义类上，给 Jacobi 和 Poisson closure。其完整梯度包含 [P4] 的 $D\mathsf P_\lambda$ 项；除下面的二次特殊情形，不能沿用常 operator 的梯度公式。

对每个 $G$ 直接取 $\widetilde G=G\circ\mathsf B$，仍有

$$
U_{\widetilde G}=\mathsf B^\flat X_G\circ\mathsf B,\qquad
\widetilde G\circ\mathsf R_\lambda=G.
$$

因此

$$
\boxed{
\frac{(\mathcal H_\beta(Y)[[\lambda]],\{\ ,\ \}_\lambda)}
{\ker\mathsf R_\lambda^*}
\cong\mathcal H(X)[[\lambda]].
}
$$

实际开域按 [P4, §8] 取
$Y_\lambda=\{\mathsf R_\lambda z+w:z\in U,w\in W\subset\ker\mathsf B\}$，
使用本节次数对应的小耦合界。所得同构是

$$
\mathcal H_\beta(Y_\lambda)/\ker\mathsf R_\lambda^*
\cong\mathcal H(U)
\cong\mathcal H(\operatorname{Sol}_{M,\lambda}^{U_M}).
$$

右端独立从 uncut action 和 incoming CPS 定义。空间 assembly 交换局域乘法
$g\phi^{n-1}$，所以解递归逐阶 intertwine，真实解由唯一性 intertwine；CPS 的辛对应由反对称 Green identity 给出。这证明全部所选函数类的 exact onto，未使用 dense range。

同一固定-support graph maps 给连续 split quotient。指定商后 bulk/finite-jet local net 的对应、有限传播和有限次物理 sewing 的结合性也保留：相应证明只用完整变分、jets 匹配、因果唯一性和有限次转置复合。严格局域 prequotient section、无限切分和任意 quantum extension 仍不在这个结论内。

## 4. 真正随次数改变的结论

| 命题 | 偶数 $n\ge4$ | 奇数 $n\ge3$ |
|---|---|---|
| 全阶形式 exact sewing | 成立，无真实耦合大小要求 | 成立，无真实耦合大小要求 |
| 固定有限时间、局部有界数据的小耦合实际 sewing | 成立，使用对应 $M^{n-2}$ 估计 | 同样成立，不需要势能下界 |
| 同步 $\phi\mapsto-\phi$ 是固定 $\lambda,g$ 模型的 symmetry | 成立 | 一般不成立 |
| $\lambda g\ge0$ 时相互作用势逐点非负 | 成立 | 不成立，非零系数下有一个场方向无下界 |
| 反射对称 | 须几何和 $g$ 同时反射对称 | 相同条件，与场次数奇偶无关 |
| 固定非恒定时间开关下的时间平移 symmetry | 一般不成立 | 一般不成立 |
| 任意大数据、任意真实耦合的存在 | 本文未证明 | 本文未证明 |

变号的判断来自 off-shell action：

$$
S_\lambda^{(n)}[-\phi]
=S_{(-1)^n\lambda}^{(n)}[\phi].
$$

故奇数 $n$ 的变号可以作为连同 $\lambda g\mapsto-\lambda g$ 的 covariance，但不是固定模型的 $\mathbb Z_2$ symmetry。对同步 sign/reflection 真正保 action 的情形，解唯一性、CPS 和 cut transposes 给 [P4, §10] 的 Poisson 等变重建。一般 canonical symplectomorphism 与物理 action symmetry 仍须区别。

能量及 work balance 改为

$$
\begin{aligned}
H_{i,\lambda}^{(n)}
&=\int\left[\frac{\dot\phi_i^2+\phi_i'^2+m^2\phi_i^2}{2}
+\frac{\lambda g_i}{n!}\phi_i^n\right]dy_i,\\
\frac{dH_{i,\lambda}^{(n)}}{dt}
&=-\Pi_i\dot q_i
+\frac{\lambda}{n!}\int\dot g_i\,\phi_i^n\,dy_i.
\end{aligned}
$$

matching 只消去内部 boundary work。偶数 $n$ 也不能因为瞬时势非负，就从这条有开关做功的公式直接宣称能量守恒或任意大数据定理。

势无下界有明确检验。若某个时间和空间小区间上 $\lambda g\ne0$，取该区间内非零、非负 $f\in C_c^\infty$，初始动量为零，$u=Af$。能量为

$$
H(Af,0)
=\frac{A^2}{2}\int(f'^2+m^2f^2)\,dy
+\frac{A^n}{n!}\int\lambda g f^n\,dy.
$$

奇数 $n$ 总能选择 $A$ 的方向令最高次项趋于 $-\infty$；偶数 $n$ 则在 $\lambda g<0$ 的区间选择 $f$ 得相同结果。这否定该能量在这些条件下的全局下界，不能单凭此计算断言每份数据都 blow up；更不影响上面已经证明的形式或局部实际 sewing。

自由 solution translations 对 $n\ge3$ 一般均被破坏：

$$
L_0(\phi+b)+\frac{\lambda g}{(n-1)!}(\phi+b)^{n-1}
=\frac{\lambda g}{(n-1)!}
\left[(\phi+b)^{n-1}-\phi^{n-1}\right],\qquad L_0b=0.
$$

保留的是 incoming CPS 的 canonical transformations；只有另外保持完整 action/response 和指定 local net 的变换才是物理 symmetry。

## 5. 二次势与有限多项式

$n=2$ 是可独立简化的线性情形：

$$
(L_0+\lambda g)\phi=0,\qquad
\Phi_\lambda=(1+\lambda G_0^Rg)^{-1}\psi.
$$

线性化势与背景无关，$\mathsf R_\lambda$ 是线性 map，所以 $\mathsf P_\lambda$ 仍是常 operator，$D\mathsf P_\lambda=0$。时间依赖实乘法势在每个有限 slab 有任意有限 $\lambda$ 的线性 energy estimate，不需要小数据 contraction；因此在 smooth compatible data 上可使用整个线性空间。时间平移依然需要 $g$ 的对应 invariance，正能量下界仍需另加条件。

对任意固定有限多项式

$$
V(t,y,\phi)=\sum_{n=3}^{N}\frac{\lambda_n g_n(t,y)}{n!}\phi^n
$$

只需所有 $g_n$ 共享上述时间窗、外端条件和 cut matching。方程中的非线性替换为 $\partial_\phi V$，线性化势替换为 $\partial_\phi^2V$。有限乘积/有限和保持所有转置 estimates；以多个耦合做形式展开，每个总次数仍只有有限项。实际 contraction 的充分条件取各非线性 Lipschitz 界之和小于 $1/2$。早期 correction 仍为零，故同一个 $\mathsf B$ 保持严格左逆。没有因此得到无限势级数或任意非多项式势的统一结论。

## 6. 核验与边界

**Verified:** 通过有限乘积、能量估计和完整转置，逐项证明固定整数 $n\ge3$ 对 [P4] 主定理的推广；显式给出递归、小耦合条件、symmetry parity 与能量无下界检验。二次势的常 Poisson operator 是另外给出的线性特殊结果。

**Assumptions:** [P4] 的一维有限区间、smooth data、外端 Dirichlet、固定 compact-time switching、cut 全 jets matching、早期自由窗；$n$ 为固定整数。真实版本的耦合半径和局部数据域可依赖 $n$、几何、时间窗与开关。奇偶性结论中的“非零系数”及符号条件按 §4 使用。

**Not verified:** 对次数 $n$ 的一致控制、高维相同能量范数、非整数幂、任意真实耦合的非线性全空间存在、无开关的同一 incoming section、严格局域 prequotient onto、无限多项式、形式级数收敛和量子重整化。这里没有将 $\phi^4$ 的经典重建结论理解为其特殊量子可重整化性质。

**Checked symbolically (2026-09-06):** Mathematica 对 $n=2,\ldots,9$ 分别检查 $D_\phi(\lambda g\phi^n/n!)$ 和第二次导数的归一化，全部为零 residual；通用 variable-potential CPS identity 经 xAct 的 full pipeline 检查为零。完整运行范围见 [P4, §11]。这些有限 $n$ 的检查只校验归一化；任意整数 $n$ 的结论由本笔记的阶乘恒等式、有限乘积递归和解析证明给出。
