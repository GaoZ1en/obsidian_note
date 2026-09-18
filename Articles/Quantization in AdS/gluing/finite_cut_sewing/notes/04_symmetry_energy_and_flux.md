# 有限混合切割中的 symmetry、能量与 flux

本篇不重新定义 proper gauge，也不扩大已选择的 symmetry 名单。目标是证明既有的局域变分／Ward symmetry 如何与三种实际接口的数据一起组合，并明确每种 charge 的成员资格和证明范围。

## 1. 运输的是完整 sourced problem

令实际场变换为 $\Phi_g(\phi)=T_g\phi+s_g$，其中 $T_g$ 来自允许的时空/bundle map，$s_g$ smooth。对同一个 theory 的 symmetry，要保持 bulk action（允许已记录的局域 divergence）、真实剩余 boundary action、耦合和允许数据域。Changing $B$、moving a cap、改变 $J$ 则是完整问题之间的 covariance。

有限 mixed sewing 中额外需要运输 cap 数据和 junction jets。Spacelike 上运输完整 Cauchy jet；null 上运输全部 incoming traces、相交 seeds 和其递推。只运输 $q$ 而遗忘 null transverse seed，会将一个 smooth symmetry lift 变成可产生 kink 的错误数据变换。

若 source pairing 满足 $\langle f',T_gu\rangle=\langle f,u\rangle$，则 $f'=T_g^{-*}f$。由完整 sourced problem 的唯一性，

$$G_{R'}^{R/A}T_g^{-*}=T_gG_R^{R/A},
\qquad E_{R'}=T_gE_RT_g^*. \tag{1.1}$$

Affine shift 运输背景；对 variations/quartet 使用其线性部分。它不改变 (1.1) 的类型。

在固定 Robin chart $b=\Pi-\sigma q,r=-q$ 中，内部正交变换给

$$b'=Ub+(U\sigma-\sigma U)q
=Ub+(\sigma U-U\sigma)r,
\qquad r'=Ur. \tag{1.2}$$

因此 opened covariance 允许 source–response mixing。$[U,\sigma]\ne0$ 时它不是原 closed Robin theory 的 stabilizer，但 selected Robin potential 完整删除后可以成为输出的 symmetry。D/N/Robin 混合 parametrization 并不改变几何匹配的条件

$$U_2J=J'U_1. \tag{1.3}$$

## 2. 新的 mixed naturality statement

设 $P$ 是一个有限 admissible mixed program，$gP$ 是将其几何、sources、boundary data 和 Ward labels 全部运输得到的程序。令 $\Theta_P$ 为独立自由重建同构。则

$$\Theta_{gP}\,\widehat\alpha_{g,P}
=\alpha_g\,\Theta_P. \tag{2.1}$$

**证明。** 每一步运输区域 action identity 和正确类型的数据。完整 sourced reopening 引理说明：从已 closed 的中间 theory 再次取源，与原 pieces 的 sourced calculation 一致；故该引理在运输后仍成立。归纳得到最终 kernel identity (1.1)。局域 affine substitution 保持固定 polynomial degree、允许的分布系数和 smooth collar identifications。每条 Wick contraction、equation ideal 也被运输，得到 (2.1)。

因此 T/C、T/N、C/N interchange 对这些 symmetry maps 自然。此证明针对每个实际有限变换和需要的局域无穷小 derivation，不声称无限维 symmetry 群在旧 graph topology 上联合连续；旧 note 对该问题的反例没有被推翻。[N2 §§7–8]

若是纯 recutting，$\alpha_g$ 应换成 identity，比较为 $\Theta_Q^{-1}\Theta_P$。不要把这种 description change 误当成一个必有非零 Noether charge 的新物理运动。

## 3. 离壳 Ward identity 的分片装配

局域规则 $X_\epsilon[\phi]$ 满足

$$\delta_\epsilon\mathcal L
=\mathcal E\cdot X_\epsilon+\partial_\mu\theta_\epsilon^\mu
=\partial_\mu k_\epsilon^\mu,
\qquad j_\epsilon^\mu=\theta_\epsilon^\mu-k_\epsilon^\mu. \tag{3.1}$$

真实 boundary action 和 improvements 同时进入这条 identity。每份 bulk action 只计一次，selected closing action 的变分随 action 一起移除。内部 oriented face terms 在完整 matched jets 上相消，或给声明保留的 defect/improvement contribution；有限 junction 的端点项也必须计入。

于是每个 finite program 最终得到同一个 assembled Ward identity。这个线性变分恒等式本身不要求 CPS，也不自动证明所有 currents 的 sharp flux 都属于量子代数。

## 4. 一个真实非零的弱 flux，而非错误的全梯度零量

对光滑守恒 current，$-\int j^\mu\partial_\mu\eta$ 在 $\eta$ 整体紧支撑且没有 sources 时为零。因此不能把它单独当作一次局部跨面测量。

正确的有限窗口定义取一个跨面的 smooth step $h$ 和独立的 compact window $\chi$：

$$\mathcal F_j[\chi,h]=\int_R\chi\,j^\mu\partial_\mu h. \tag{4.1}$$

在相应 smooth test domain 内，它是原 polynomial algebra 的一个元素。它通常非零，并满足

$$\mathcal F_j[\chi,h]
=-\int_R h j^\mu\partial_\mu\chi
-\int_R\chi h\,\partial_\mu j^\mu, \tag{4.2}$$

其中 actual physical boundary 的项按允许 trace calculus 另计。第一项是观测窗口两端/边缘的 charge transport，第二项是源做功或 Ward defect。若 $\sum_i h_i=1$ 在 $\chi$ 的支持附近，则 $\sum_i\mathcal F_j[\chi,h_i]=0$；这正是人工分区 flux 的抵消。

当 $h=h_\varepsilon(t\pm x-c)$ 时，每个 $\varepsilon>0$ 都是合法的平滑探针。这个公式适用于 null cut 的 finite-thickness balance，却没有证明 $\varepsilon\to0$ 的 quantum limit 存在。Classical smooth currents 可另取普通 surface integral；quantum sharp limit 必须另证。

## 5. 自由解平移的 Peierls generator 与中心项

对于指定 smooth $s$、$Ls=0$，完整 current 为

$$j_s^t=s\dot\phi-\dot s\phi,
\qquad j_s^x=\phi s'-s\phi',
\qquad \partial_\mu j_s^\mu=sL\phi-\phi Ls. \tag{5.1}$$

在 outward spatial wall 上，charge 的流入率为

$$-\Pi_\phi s+q\Pi_s. \tag{5.2}$$

第二项来自 quasi-symmetry improvement，不能丢掉。Matched $s$ 和 $\phi$ 的完整 traces 使各 internal face 的两项同时相消。

若区域包含适合该计算的完整 compact spatial section，取 $\chi\in C_c^\infty(\mathbb R)$、$\int\chi=1$，

$$Q_s[\chi]=\int dt\,\chi(t)\int_\Sigma(s\dot\phi-\dot s\phi).
\tag{5.3}$$

其 off-shell functional derivative 为

$$Q_s^{(1)}=-\chi' s-2\chi\dot s. \tag{5.4}$$

令 $S(t)=K^{-1/2}\sin(\sqrt Kt)$，$E(t,r)=-S(t-r)$。积分分部得到

$$EQ_s^{(1)}(t)=\int dr\,\chi(r)
\left[\cos(\sqrt K(t-r))s(r)+S(t-r)\dot s(r)\right]=s(t). \tag{5.5}$$

因此

$$\{F,Q_s\}=DF[s],
\qquad [F,Q_s]_\star/(i\hbar)=DF[s]. \tag{5.6}$$

量子等式精确，因为 $Q_s$ 线性，无高阶 contractions。对两个 parameters，

$$\{Q_s,Q_r\}=\int_\Sigma(s\dot r-\dot s\,r)=c(s,r),
\qquad [Q_s,Q_r]_\star=i\hbar c(s,r). \tag{5.7}$$

在 finite mixed sewing 中，双方由相同 smooth field 和 current 重建，故 charge 与 cocycle 在实际 matched domain 上相加。这个中心项不是 gauge redundancy，也不是自动的 renormalization anomaly；本稿不进一步讨论 proper gauge。

若某个 diamond 的 total spatial integral 不紧支撑于允许的观测域，则 (5.3) 不被强行认定为该小区域代数元素。局域 current smearings 和 (4.1) 仍可使用。

## 6. 自由能量与真实 Robin surface energy

在静态 complete strip，

$$H_{B,\chi}=\frac12\int dt\,\chi(t)
\left[\int_\Sigma(\dot\phi^2+\phi'^2+m^2\phi^2)
+\sum_{e\in R}\sigma_eq_e^2\right]. \tag{6.1}$$

Bulk energy 的 outward loss 为 $-\Pi\dot q$，由 Robin $\Pi=\sigma q$ 与 surface-energy derivative 抵消。On shell，

$$H_{B,\chi}^{(1)}=-\chi'\dot\phi+2\chi K_B\phi,
\qquad E_BH_{B,\chi}^{(1)}=\dot\phi. \tag{6.2}$$

最后一步与 (5.5) 相同，用 oscillator evolution identity 证明。Static ground-state Wick prescription 中，quadratic total energy 的双正频或双负频 bilinear 为零，故在 on-shell polynomial algebra 中

$$[F,H_B]_{\star}/(i\hbar)=DF[\dot\phi]. \tag{6.3}$$

Selected closing energy 随 opening 删除；真正 remaining boundary 或 retained defect energy 保留。不能将不同 isolated ground states 的 zero-point energies 直接相加。

一个局部 flat-space subtraction 与 $W_B$ ordering 可有有限 c-number 差；它改变真空能零点，但不改变 generator。Absolute vacuum energy 仍需 state 和 finite convention，不能仅凭 $E$ 固定。

## 7. Classical interactions 的源做功，和量子剩余条件

取 $S=S_0-\lambda\int gP(\phi)$，定义

$$e=\frac12(\phi_t^2+\phi_x^2+m^2\phi^2)+\lambda gP,
\quad j=-\phi_t\phi_x,
\quad T^{11}=\frac12(\phi_t^2+\phi_x^2-m^2\phi^2)-\lambda gP. \tag{7.1}$$

精确 off-shell identities 为

$$\partial_te+\partial_xj
=\phi_t(L\phi+\lambda gP')+\lambda g_tP,
$$
$$\partial_tj+\partial_xT^{11}
=-\phi_x(L\phi+\lambda gP')-\lambda g_xP. \tag{7.2}$$

所以 varying coupling 时不能宣称 energy/momentum 都守恒。Smooth partition 的人工 derivatives 必须在全体区域和中抵消；真实 $\partial g$ 留下。代码直接从 Lagrangian 变量检查两式。

量子情况下，ordinary Wick products 的闭合不自动固定 time-ordered stress contacts。本包 `03_quantum_and_renormalization.md` 给已算出的 single-vertex correction 和尚待构造的 boundary base normalizations。只有完成这些 Ward 数据，(7.2) 的 renormalized 版本才可用于无条件的全部 interacting mixed sewing。

## 8. 保留的 symmetry 扩展与未作的推广

常内部 $G$ 的可逆 wall $J$ 在同一 bulk theory 中融合为 $J_2J_1$。在 ordinary filled contractible junction，transition product 必须为 identity；在 noncontractible cycle 上，surviving root group 是相应 holonomy centralizers 的交。重排非交换 $J$ 与改变括号不是同一件事。

本稿不把任意 canonical map、仅保存解集合的变换、或单个 quantum state 不变性混成物理 symmetry。也不声称一般 local Ward generators 已经积分成有限局域作用。Free affine covariance 是本次明确完成的有限层；interaction 保留其中保持实际 $P$、$B$ 和 renormalized Ward prescription 的部分。

参照附带 `sources/symmetry_and_closed_sewing.md`，特别 §§2–5、8、10–12；本篇新增的是 typed cap/junction data 和 finite mixed-program naturality，不再借旧 $\Omega$-gradient 定义 observables。
