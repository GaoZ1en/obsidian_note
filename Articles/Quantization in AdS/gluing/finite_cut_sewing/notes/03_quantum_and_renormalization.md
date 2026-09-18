# 微扰、复合场、逐区域重整化与尚未闭合的 Ward 条件

本篇将已经构造的结果与真正仍需证明的命题分开。保持同一个 polynomial observable class，不用“再取一个最大闭包”掩盖问题；也不把“选一套相容 prescription”写成已经证明这套 prescription 对全部边界 stress sources 存在。

## 1. 自由量子代数的精确含义

每个完整 standalone realization $B$ 给出 $E_B$ 和一个允许的 Hermitian positive-frequency bisolution $W_B$。它们满足

$$W_B-W_B^T=iE_B. \tag{1.1}$$

在固定分布系数多项式上，

$$F\star_{W_B}G=\sum_{r\ge0}\frac{\hbar^r}{r!}
\langle F^{(r)},W_B^{\otimes r}G^{(r)}\rangle. \tag{1.2}$$

每个普通多项式对只有有限 contractions；$[[\hbar]]$ 是形式完成。允许的系数排除所有外腿同时未来或同时过去的 causal covectors。Wick edges 的定向保证收缩存在且输出满足同一条件。三重乘积的不同括号化枚举同一组 contractions，因此结合律成立。

Cap-graph region 的 $W_B$ 可以由其独立 parent strip 的 $W$ 限制得到。其内部和实际 timelike side 上的局部定向性质继承区间证明；caps 处没有额外承诺 sharp composite restriction。此处使用的是同一个 region 的一种态／Wick representative，不是宣称不同 parent extensions 给相同态。

有限谱 cutoff 的每条腿都是真实 homogeneous solution；若一个 polynomial 在全部区域解上为零，则沿这些腿的全部导数为零。用原区间证明的 normal-distribution-topology 收敛，将有限 cutoff 的结论传到 $W_B$，得到完整 vanishing ideal 的两侧 $\star$-ideal 性。这里继承既有的区间分析输入，不将数值 mode truncation 当成证明。[N1 §9]

### 1.1 为什么完整 polynomial reconstruction 超过 CCR

令 $Q_f=\frac12\int f\phi^2$。其完整乘积是

$$\begin{aligned}
Q_f\star_WQ_g={}&Q_fQ_g+
\hbar\iint f(x)g(y)\phi(x)W(x,y)\phi(y)\,dxdy\\
&+\frac{\hbar^2}{2}\iint f(x)g(y)W(x,y)^2\,dxdy.
\end{aligned}\tag{1.3}$$

有限 mixed sewing 的 kernel equality 同时比较三项，包括跨区 double contraction。Coefficient labels 在新 smooth collars 上的双射给整个已选 polynomial class，而不是只给线性 field generators。

但是 $(1.3)$ 不能令 $x=y$ 得一个有限 $W(x,x)$。局域 $:\phi^2:$ 是已选择 subtraction 的新复合场标签，ordinary product 与局域 coincidence limit 是两种操作。

### 1.2 哪些观测量不自动被加入

本稿包含允许的 smooth spacetime-smeared jet polynomials、free stress/current、已构造的 charges 和合法 timelike traces。一个内部 null trace $\phi|_{u=0}$ 的泛函导数含 $\delta(u)$，其 null conormal 与相关 wavefront 可能相交。它不由自由 timelike-trace 定理覆盖。

每个有限厚度 smooth detector 都可属于原类，厚度趋零的极限却未必仍属于它。Weyl exponentials、任意 spectral projectors、Hilbert factorization、entropy 和一般 modular operators 也不是本有限 polynomial theorem 的结论。这里不为这些对象另造未验证的 completion。[1，N1 §§9、14]

## 2. Classical polynomial interactions：确实可以逐阶接入

取 smooth、适当紧支撑的 bulk interaction

$$S=S_0-\lambda\int g(x)P(\phi(x))d^2x, \tag{2.1}$$

边界仍为线性 D/N/Robin。选定完整 incoming data 后，retarded perturbative field 满足

$$\phi=\phi_0-\lambda G_B^R\bigl(gP'(\phi)\bigr). \tag{2.2}$$

设 $\phi=\sum_{n\ge0}\lambda^n\phi_n$，则

$$\phi_n=-G_B^R\left(g\,[\lambda^{n-1}]P'\Bigl(\sum_{r<n}\lambda^r\phi_r\Bigr)\right),\quad n\ge1. \tag{2.3}$$

每阶只有有限次先前 fields 的乘积，次数可随阶数增长。若 $P=\phi^4/4!$，

$$\phi_1=-\frac16G_B^R(g\phi_0^3),\qquad
\phi_2=-\frac12G_B^R(g\phi_0^2\phi_1). \tag{2.4}$$

对任意 finite admissible mixed program，零阶响应已相同。假定所有低阶 fields 在 smooth assembly 下相同，则 (2.3) 的 source 也相同；新的 complete-source reconstruction 给该阶相同。由归纳得到全部 classical formal coefficients 的程序独立性。

沿背景的线性化算子为 $L_\phi=L+\lambda gP''(\phi)$。其 Green expansion

$$G_\phi^\rho=G^\rho-G^\rho V_\phi G^\rho+
G^\rho V_\phi G^\rho V_\phi G^\rho-\cdots,\qquad \rho=R,A, \tag{2.5}$$

同样逐阶重建，故相应 Peierls bracket 一致。对平滑 local insertions 的 retarded-tree construction，其每阶系数是有限 field-degree 的分布核；admissibility 使用与 causal perturbation theory 相同的定向收缩条件，不是把整个任意 nonlinear functional 类自动量子化。

这不证明实际 $\lambda$ 下级数收敛。对于给定有界数据和有限时间，局部存在可由 (2.2) 在选定范数球中的 Volterra/contraction estimate 得到；其时间窗依赖 $P'$ 的 Lipschitz bound。全局 nonlinear existence 不是这里有限-cut theorem 的必要前提，也没有被本文宣称。

## 3. 一个能直接构造的 all-order 子问题：二维无导数势顶点

### 3.1 明确的输入范围

以下讨论是有限时间窗内的二维平直 scalar、静态 D/N/有限 Robin sides，以及不含 spacetime derivatives 的 finite polynomial vertices。每个 evaluated insertion 采用允许的 smooth test；在真实 temporal caps 附近不把 sharp characteristic-function action 当成代数元素。对于某个较大的 interaction action，可先在允许的局域测试域上给出这些 time-ordered recipes；完整 algebraic adiabatic/time-slice completion 是另一项说明，不能由下面的图估计自动推出。

每个 standalone problem 先选择其实际 $W_B$-normal-ordering。Vertex self-contractions 因此被固定。改变成共同局部 subtraction 时，需要第 4 节的有限转换，不能忽略 image terms。

### 命题 P：有限 potential graphs 的局部可积延拓

在上述范围，任意固定阶、没有导数顶点的 scalar contraction graph，其系数在所有内部或静态反射边界碰撞处局部可积。固定 self-contraction prescription 后，保持最小 scaling degree 的多顶点 extension 唯一，不需要额外的 primitive divergent multi-vertex delta counterterm。

**证明。** 二维平直 massive propagator 的短距离奇性是对数。静态 D/N reflection 给 direct 与 image 对数；Robin 的高频 reflection coefficient 与 Neumann 相差低一个频率阶，故不增加领先的奇异阶数。有限时间、固定正长度 strip 内只出现有限条可达 reflection branches。等价地，区间高频 spectral expansion 给这些对数与较正则的余项。[N1 §12.4；2]

在光锥坐标中，每条 branch 的领先项可局部写成 $\log|\ell(X_i,X_j)|$ 加有界的 $i0$/step 部分；$\ell$ 是非平凡的线性 null separation。任意有限 $p$ 下，这些 log 函数在 compact 多顶点域属于 $L^p$。有限个 factors 的乘积由 Hölder 不等式属于 $L^1$。Robin remainder 和 finite image subtraction coefficients 不恶化这个结论。

当一组顶点整体趋于同一点或同一 boundary stratum，每个 factor 至多对数增长；其 scaling degree 为零，而任何真正多顶点 collision 的 transverse codimension 为正。因此该局部可积 distribution 已是保持此 scaling degree 的唯一 extension。加入 delta 或其 derivative 会提高 scaling degree，不属于该最小 prescription。对所有 partial collision 同样论证。证毕。

**这条命题没有声称“没有重整化”。** Self-contractions、局部复合场定义和允许的有限 normalization 已在选择 vertex prescription 时处理。它也没有包括 derivative vertices、多个独立 stress sources，或更高维模型。

### 3.2 真正的有限分区相容性

给一个已经存在的完整 graph coefficient $t_G$，用 finite smooth partition $\sum_i\chi_i=1$ 分解每个 vertex test。则

$$\langle t_G,\prod_a g_a\rangle
=\sum_{i_1,\ldots,i_n}\langle t_G,\prod_a\chi_{i_a}g_a\rangle. \tag{3.1}$$

和是有限的，L1 延拓唯一，所以“先延拓再分区”和“在这些 smooth charts 中延拓后求和”相同。不同先后分区的 refinement 也给同一式子。将自由 finite-cut theorem 已重建的 kernels 代入，每条 edge 包括 cross-region edge 都一致，故此子问题的图结果与 mixed sewing 程序相容。

若只是计算已经局部可积的数值图积分，可以用 indicator functions 将积分域作有限分割，Fubini 仍成立。**这只是一条积分 bookkeeping identity，不把 $1_{R_i}g$ 升级成一个合法的 sharp null/spacelike observable insertion。** 真正的代数标签和带 contact 的 Ward 操作使用 smooth collar partitions。

因此，本节建立的是可逐区域计算的潜势图 prescription 及其有限分区／重建相容性；并没有证明“只输入原 closed algebras 的乘法，自动得到全部跨区 renormalized amplitudes”。Cross-region contractions 必须在 opening 后实际计算。

## 4. 独立 finite conventions 的转换，不能省略插入

在同一动力学中，若 $W'=W+s$、$s$ 是允许的 smooth symmetric bisolution，则

$$\alpha_s=\exp\left(\frac\hbar2\langle s,\delta^2/\delta\phi^2\rangle\right),
\quad \alpha_s(F\star_WG)=\alpha_sF\star_{W+s}\alpha_sG. \tag{4.1}$$

对局部常数差 $c$，

$$\alpha_c\phi^4=\phi^4+6\hbar c\phi^2+3\hbar^2c^2,
\qquad \alpha_d\alpha_c=\alpha_{c+d}. \tag{4.2}$$

所以两侧都写成“$\lambda\phi^4$”不代表 finite mass/vacuum/composite terms 已一致。它们需要 conversion tables，而不只是相同的耦合字母。

更一般地，同一个传播问题内的 finite-renormalization theorem 给

$$S_{\mathcal R'}(V)=S_{\mathcal R}(Z(V)),\qquad
F\mapsto DZ(V)F. \tag{4.3}$$

多个独立 local insertions 的 source expansion 还包含更高 derivatives $D^kZ$ 的 contacts。Ordinary $\star$-products 与将这些 insertions 再作独立 time ordering 是不同要求。[3]

在完整 opening 中，不能令 $s=W_{\rm out}-W_{B_i}$ 直接套 (4.1)：它们通常连 antisymmetric parts 都不同。正确的顺序是改变选中面的物理 action/domain，重建 $G_{\rm out},W_{\rm out}$，再重写相同物理 composite recipe。Selected closing terms 及其专有 counterterms/contact labels 一起删除；留下的任何项都是真实 defect data。

例如，用某个已声明的局部 subtraction $H$ 定义的 $:\phi^p:_H$，在 $W_B$ symbols 中为

$$\sum_{r=0}^{\lfloor p/2\rfloor}
\frac{p!}{(p-2r)!2^rr!}\hbar^r d_B^r\phi^{p-2r},
\qquad d_B=(W_B-H)|_{\rm diag}. \tag{4.4}$$

该式只在相应 diagonal subtraction 已定义的域内使用；真实边界处需 boundary-compatible prescription。删除 closing wall 后应重算 $d_{\rm out}$，包括 finite image contributions。不能仅把原来 W-normal symbol $\phi^p$ 原样相加。

## 5. 为什么 stress 是另一个问题：单顶点 contact 的完整计算

### 5.1 局部 pole

在二维局部 Euclidean 坐标中，只为计算短距离系数，取

$$C(z,w)=-\frac\hbar{4\pi}\log\!\left(\mu^2(z-w)(\bar z-\bar w)\right),
\qquad \mathscr T(z)=-\frac{2\pi}{\hbar}:(\partial_z\phi)^2:. \tag{5.1}$$

$\mathscr T$ 是一个归一化的局部 chiral label，不是直接把整个 massive Lorentzian stress 换成二维 CFT。对任意有限多项式 $P$，单、双 contractions 给

$$\mathscr T(z)P(\phi(w))\sim
\frac{\partial_wP(\phi(w))}{z-w}
-\frac\hbar{8\pi}\frac{P''(\phi(w))}{(z-w)^2}. \tag{5.2}$$

单 contraction 有两种选择；双 contraction 的组合因子是 $P''$，而不是人为插入一个质量 counterterm。完全收缩的 $\mathscr T\mathscr T$ 还给 $1/[2(z-w)^4]$，保留自由场中心项。[N3 的同一计算在本次重新核验]

用

$$\bar\partial\frac1{z-w}=\pi\delta^{(2)}(z-w),
\qquad \bar\partial\frac1{(z-w)^2}=-\pi\partial_z\delta^{(2)}(z-w), \tag{5.3}$$

并给一 vertex 权重 $-\int gP/\hbar$，其 pole contact 为

$$\bar\partial\mathscr T\big|_{\rm contact}
=-\frac\pi\hbar\left[g\partial P+\frac\hbar{8\pi}\partial(gP'')\right]. \tag{5.4}$$

于是

$$\Theta_{\rm loc}=\frac\pi\hbar g\left(P+\frac\hbar{8\pi}P''\right) \tag{5.5}$$

使 $\bar\partial\mathscr T+\partial\Theta_{\rm loc}$ 的这部分等于 $(\pi/\hbar)(\partial g)P$。常数 coupling 时为零；非恒定 coupling 时保留真实外源做功项。

对 $P=\lambda\phi^4/24$，局部 companion 的额外 polynomial 为 $\lambda\hbar\phi^2/(16\pi)$。**它不是一条可以无条件加进 Hamiltonian density 的公式。** 既有 canonical prescription 的 spatial stress correction 与这个 chiral contact 使用不同表示；必须连同 normalization 与 source contacts 一起转换，不能混用符号或把 trace anomaly 强行设零。

### 5.2 Smooth collar 分区真的消去人工 source

若 $g_1+g_2=g$ 是 smooth partition，则 (5.4)–(5.5) 对 vertex test 线性，故

$$\Theta_{\rm loc}[g_1]+\Theta_{\rm loc}[g_2]=\Theta_{\rm loc}[g],
\quad \partial g_1+\partial g_2=\partial g. \tag{5.6}$$

所有人工 partition derivatives 抵消，包括 $P''$ contact。该式对任意 finite smooth partition 和 refinement 成立，因而可用于不同 causal-type cuts 的共同 collar。若换成 sharp steps，$\delta'\times1_R$ 没有自动定义；本计算不允许略过这一点。

局部 polynomial Ward rule

$$L_\epsilon=\epsilon\partial_z-\frac\hbar{8\pi}\epsilon'\partial_\phi^2 \tag{5.7}$$

还满足 $[L_\epsilon,L_\eta]=L_{\epsilon\eta'-\eta\epsilon'}$，并与常数 Wick change 相容。代码在不同 polynomial degrees 上重算这两个等式。这是局部 single-stress normalization 的一致性，不是完整多重 stress Ward theorem。

## 6. Power counting 把欠账缩到哪里

设一组 collision 含 $s$ 个 kinetic stress insertions、$n$ 个无导数 bulk insertions，另有 $b$ 个分别标记的 linear boundary histories。每个 stress 最多两次 derivatives；每个 linear boundary history 最多一次。

相对于可支持在该 collision 的 delta，剩余的 scaling margin 为

| collision | ordinary coefficient | 再取一个 stress divergence |
|---|---:|---:|
| interior | $2(n-1)$ | $2n-3$ |
| straight physical boundary | $2n-1$ | $2n-2$ |

推导只数 relative coordinates 和 derivatives：interior 有 $2(s+n-1)$ 个相对坐标；boundary 有 $2(s+n)+b-1$ 个；减去 $2s+b$，最后的 divergence 再减 1。

当 $n\ge2$，一个**仅支持在 full collision 的新 primitive Ward defect**被正 margin 排除，前提是所有 proper subcollisions 已按同一 bound 和 Ward prescription 处理。对于 single-stress sector，这将递推的未知局部 normalization 缩到 free/single-potential base families。它不是已经计算了那些 boundary base families。

当 $n=1$，boundary divergence margin 为零。它容许 delta contact；即使 ordinary coefficient 无需新 subtraction，也不能推出其边界 Ward identity 没有新项。

具体例子是

$$G_D^E(\tau;r,s)=-\frac1{4\pi}
\log\frac{\tau^2+(r-s)^2}{\tau^2+(r+s)^2},
\quad \partial_rG_D^E|_{r=0}=\frac{s}{\pi(\tau^2+s^2)}. \tag{6.1}$$

右端对 $(\tau,s)$ 局部可积，但 $\int d\tau\,s/[\pi(\tau^2+s^2)]=1$，且 $s\to0^+$ 时趋于 $\delta(\tau)$。删除它会改变 boundary force/current Ward identity。程序核验了归一化及其对光滑 test 的极限；这不是一个可忽略的小系数。

若把 $J_\partial(t)=:\dot q(t)\Pi(t):$ 当成一个新的独立 time-ordered source，它有两次 derivatives 却只有一个时间变量，不能按两个独立 linear histories 计数。本文不借上述表格声称这一更强 sector 已完成。

## 7. 完整相互作用 mixed theorem 的准确条件

在自由定理 F 上，若每个实际 standalone/intermediate realization 都已有：

- 相应 local insertions 的 renormalized time-ordered products；
- 完整 boundary stress/force/current contact normalizations 和实际需要的 Ward identities；
- 保留／删除 closing terms 的相同 physical rule，以及全体 composite insertions 的有限 scheme conversion；

那么相同 reconstructed kernels 加相同局部 extension rule，逐阶给

$$\Theta_P T_{P,n}^{\rm ren}(F_1,\ldots,F_n)
=T_{M,n}^{\rm ren}(\Theta_PF_1,\ldots,\Theta_PF_n). \tag{7.1}$$

再用于 relative $S$-matrices、formal inverse 和 insertion derivatives，得到 interacting algebra、Ward maps 和不同 finite mixed programs 的相容性。这是可用的**条件性比较定理**。第 3 节实际构造了无导数势图的部分输入；第 5 节实际算出了局部单 stress/单 vertex 的 contact；第 6 节确定了还需解的边界 base problem。

**仍未完成的是：在所有输入及中间 physical boundaries 上，构造满足全部所需 stress/displacement/contact Ward constraints 的统一 normalization，并证明所有 scheme-removal maps 的完整相容性。** 它不能通过在 (7.1) 前写“选择相容 prescription”而消失。

标准光滑无边界背景的 time-ordering 存在性，和 Hollands–Wald 在 spacetime dimension $>2$ 的 stress normalization 定理，都不能直接替代这个二维 reflecting-boundary base problem。[4，5] 本文既不宣称它不可能，也不将仍缺的证明隐藏为已完成。

## 8. 对当前物理目标的结论

自由量子混合切割已包含实际能量/current observables、有限 Wick contractions 和弱 flux。Classical polynomial perturbation 可按 (2.3) 逐阶组合；二维无导数 potential graph 延拓及 finite smooth partition 也已给出构造。完整 interacting stress/current Ward-compatible composition 还没有达到同样无条件的证明等级。

这不是要求改 observable class 或改 symmetry definition，也不是要求转去 nonlinear BC。它是在既定类中，继续完成一个具体的 local boundary contact construction。

## 文献与输入

[1] Hawkins–Rejzner–Visser, *A novel class of functionals for perturbative algebraic quantum field theory*, arXiv:2312.15203v3. <https://arxiv.org/html/2312.15203v3>

[2] Dappiaggi–Nosari–Pinamonti, *The Casimir effect from the point of view of algebraic quantum field theory*, arXiv:1412.1409. <https://arxiv.org/abs/1412.1409>

[3] Brunetti–Dütsch–Fredenhagen, *Perturbative Algebraic Quantum Field Theory and the Renormalization Groups*, arXiv:0901.2038. <https://arxiv.org/abs/0901.2038>

[4] Hollands–Wald, *Existence of Local Covariant Time Ordered Products of Quantum Fields in Curved Spacetime*, arXiv:gr-qc/0111108. <https://arxiv.org/abs/gr-qc/0111108>

[5] Hollands–Wald, *Conservation of the stress tensor in perturbative interacting quantum field theory in curved spacetimes*, arXiv:gr-qc/0404074. <https://arxiv.org/abs/gr-qc/0404074>

[N1] 附带输入 `standalone_binary_observable_sewing.md`，特别 §§9、12。

[N2] 附带输入 `symmetry_and_closed_sewing.md`，特别 §12。

[N3] `GaoZ1en/obsidian_note`, *1+1 phi4 quantum observable algebra gluing.md*，blob `7cd6796e6ed661bbcb6d0dea4d9db200e85cb2ee`，已读取 *Which Collisions Need New Contact Data* 与 *A Stress Contact with One Quartic Vertex*。本文不将该 note 的两 vertex／两 loop benchmark 误称为完整全阶 boundary Ward theorem。
