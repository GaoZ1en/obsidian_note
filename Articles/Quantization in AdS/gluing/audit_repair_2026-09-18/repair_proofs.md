# 2026-09-18：完整预辛 sewing 的修订命题

基线 `6940ab5243b7d8f74bcfc2f2cf0138eeed50b240`。FC 指 finite_cut_sewing，PB 指 principal_bundle_sewing_v2。保留原 action、signature、D/N/Robin、relative Maxwell、CS level/取向及 proper 分支政策。FC 使用 $E=G^A-G^R$；PB 使用 $\Omega=\delta p\wedge\delta q$、$\iota_{X_F}\Omega=-\delta F$。历史审计 PASS 不是以下命题的假设。

## R0. 对象与依赖关系

独立记录为实际几何/场丛/global group、完整局域 action $S_R$、真实边界与联合源域 $B$、closing/removal 标签、完整规范作用及 $\mathcal G_{\rm prop}$、目标确实需要的 $Q_\partial,u$、observable prescription $\mathscr O$ 和对应层级的 $\mathsf q$。原对象分号后的 $\mathcal A_B,\mathfrak R$（FC 的 $\mathfrak A_B,\mathcal R_B$）改记为生成结构，不是额外独立字段；这不证明它们已存在或已计算完整。

区域与 sewing 保存完整 fields、固定源 fiber 的预辛形式、规范作用和 stabilizers，不用 $\mathcal S_B/\mathcal G_{\rm prop}$ 替代。原模型的 invariant presentation、PBW/Haar/rotor 是派生 observable/representation 比较。label 的评价零关系不是删掉 fields 的 gauge directions。

$S_R$ 在这里包含原有 bulk/boundary/corner 局域代表与相对变分规则。一般只给数值 action 或齐次 EOM 不保证唯一 corner symplectic structure。删去的是既定 $(L,\ell,\theta,C)$ 规则的重复缓存，不删尚未由规则确定的边界辛结构或 global phase-line choice。

## R1. 完整源关系的装配与 fresh reopening

### 命题

先由各区域自身 action/domain 定义源关系，再由独立未切分 action/domain 定义 target。固定一个有限允许装配和共同外部 tuple $d=(f,b,d_{\rm in})$。各片 fields 光滑到所用 faces，源与方程系数在同一光滑 atlas 中相容。非特征 seam 匹配场和 oriented conormal；null seam 匹配 trace 及未被其余 incoming 数据决定的 transverse seeds。junction 属于同一允许光滑 atlas，保留真实 defect，移除且只移除指定 closing。

则 matched 区域解关系与未切分解关系通过 restriction/assembly 双向对应，包括全部实际输出 traces。这个命题允许空 fiber、多值关系；不以存在或唯一性作输入。对 FC 已有独立 Green/lift 构造的相容域，另由存在与因果唯一性得到同一单值 $\operatorname{SolResponse}(d)$。有限次真正 closed-intermediate reopening 保持这个比较。

### 证明

给定 matched 区域解。FC (4.1) 的 distribution identity 与 typed matching 消去内部面源；R2 的非特征递推或 null seed transport 保证所声明光滑性。局域 EOM 和真实外壁条件装配后仍成立。人工 closing 已从 action 删除，故无额外 Robin/chiral-wall defect。

反向限制独立 target 的任意解，连同其 actual sources、incoming data 和 traces，得到每片独立源关系的合法元素，而不是要求 restriction 落进旧 homogeneous closed 解空间。标量上 restriction/assembly 互逆。规范情形保留 R3 的 arrows。这给关系比较，没有把“匹配解存在”当作证明。

在已构造的 FC 域，独立 target 的 Green/lift 方法提供一个解；限制它给 matching 方程的实际见证。任一其他 matched 解装配后满足同一完整 tuple，因果唯一性给相等。target 只用于验收/证明非空，不被用于定义 regional domain。其他几何若没有独立 source 存在性证明，只保留关系命题。

closed intermediate 保存完整 action/domain，不只留一个解。再 opening 重新生成相同局域方程的源关系。逐步用上述双向对应，任意两条合法程序都比较到同一最终关系。存在量化的重括号是关系结合律，不是新 PDE 存在性定理。源导数只沿合法可微曲线 $d(s)$，并另需该模型实际 smooth-dependence 结果；非法独立坐标方向的偏导不被定义。证毕。

### 删除响应缓存后的重建

对完整合法 $d$ 选实现相容 wall/cap jets 的 off-shell lift $v(d)$，在 residual source 域与因果 inverse 已验证时，

$$u(d)=v(d)+G_0^R(f-Lv(d)).$$

再取实际 traces 重建 response。两个 lifts 的差 $h$ 具有齐次边界和零 incoming data；仅在这个域上，右逆加唯一性给 $G_0^RLh=h$，因此最终场相同。独立纯源块本身合法的子域可用 Green identity 重建 Poisson map、再取 traces 得 $\rho,D$；不能把这一子域公式当作一般 joint domain 的分块。

## R2. 非特征高阶 jets 可导出，null 不同

两侧 $C^\infty$ 标量解满足共同 $L\phi=f$，$f$ 跨 $x=0$ 光滑，且 $[\phi]=[\partial_x\phi]=0$。则

$$[\partial_x^{r+2}\phi]=(\partial_t^2+m^2)[\partial_x^r\phi]-[\partial_x^rf]$$

从 $r=0,1$ 递推全部 jets。切向导数由 trace 等式给出；在原有限规则 junction atlas 中逐阶拼接，分布面项全消失，得到光滑函数。spacelike 情形用

$$[\partial_t^{r+2}\phi]=(\partial_x^2-m^2)[\partial_t^r\phi]+[\partial_t^rf].$$

一般非特征二阶方程只需最高 normal 系数非零、conormal 与 tangential jet 能恢复第一 normal derivative。删去的是 on-shell 非特征 seam 的独立高阶字段，不是 off-shell observable 系数核的匹配或一般尖角 extension 定理。

null 面只有

$$\partial_v a_{r+1}=\tfrac14\partial_u^rf-\tfrac{m^2}{4}a_r.$$

尚需一个 integration constant；第二张完整 incoming sheet 已决定它时不再独立输入。massive kink 仍是 trace-only 的反例。只保留一个 corner 的全部 Taylor 系数也不等于给出完整 characteristic trace：平坦但非零的 smooth trace 是新攻击。有限 $C^k$ 目标可以减弱正则性要求，但本次不改变原 smooth 目标。

## R3. proper 箭头与全局分支

固定原 output bundle $P$ 与 $\mathcal G_{\rm prop}$。cut transitions $h_{ji}$ 必须呈现所选 bundle sector。为写到固定 $P$ 上的数值 map，可选与真实外 frames 相容的 presentation identification $\kappa:P_h\to P$；它不是新物理变量，也不提供 EOM 存在性。

局部 maps $g_i$ 满足 connection、transition、source covariance 后，普通 bundle descent 构造实际 $\operatorname{Desc}(g_i):P_h\to P_{h'}$。其目标作用为

$$g_{\rm as}=\kappa'\operatorname{Desc}(g_i)\kappa^{-1}.$$

cut arrow 标为 proper 当且仅当 $g_{\rm as}\in\mathcal G_{\rm prop}$。这是对已给群政策的成员检查，不是以 solution/algebra equivalence 作假设。换 presentation 必须同步运输该标记和 target labels；固定带标签 target 时，nonproper 的 $\kappa$ 改变是实际物理作用，不可作为无害 choice 遗忘。不能把 large identification 重置为 identity。opening 后允许的 cut-frame maps 不必是旧人工外壁上的 regional proper。

### 几何命题与证明

有限 collar 装配的 actual cocycle 和共同光滑 connection jets 给普通 bundle/connection；local EOM 与 variational matching 按 R1 给解关系比较，不假定一般 gauge PDE 的非空或唯一性。每个被标 proper 的 cut arrow 按上述公式产生原群中的 global arrow。反向限制任意 global proper map，得到满足 covariance 的局部 maps，代回公式恢复原 map。stabilizers 也按同一规则对应。保留所有 objects/arrows，不作 coarse quotient。此证明不要求 gauge action 自由、商光滑、常秩或群 normal；normality 只在另作 residual group quotient 时需要。

### U(1) interval 的完整可计算判据

两端 based map 取实 lift $\alpha(0)=0$，

$$n(g)=\frac1{2\pi i}\int_0^L g^{-1}dg=\frac{\alpha(L)}{2\pi}\in\mathbb Z.$$

identity-component proper 恰为 $n=0$：必要性由 winding 的 based-homotopy 不变性；充分性由 $g_s=e^{is\alpha}$、两端 $\alpha=0$ 的显式收缩。原政策 $K\subset\mathbb Z$ 则检查 $n\in K$；全部 based components 为 $K=\mathbb Z$。不需独立保存每片 homotopy。

原 $g_1=e^{2\pi ix/L}$、$g_2=e^{2\pi i(x/L-1)}$ 组装 $n=1$，修订规则拒绝其为 identity-component proper。real seam lift 的 $\lambda'=-2\pi$ 补偿 $Q_1'+Q_2'$。一般 G/拓扑的有效分支算法仍是模型义务；普通 descent 不自动提供它。

## R4. 完整预辛比较与未约化模型实现

### R4.1 固定源守恒对象

由原 $(\theta+\delta\ell)|_B=dC$，固定源 fiber 与相容 corners 上，

$$\Theta_{\Sigma_2}-\Theta_{\Sigma_1}=\delta S_{[\Sigma_1,\Sigma_2]}|_{\rm on\ shell},\qquad
\Omega_{\Sigma_2}=\Omega_{\Sigma_1}.$$

第二式是再次作用 $\delta$，不是将第一式右侧置零。真实边界场须同时满足其 EOM。跨 source fibers 一般有 symplectic flux，不将 reopened union 默认当作 conserved CPS。

### R4.2 seam 项从 action 计算

将片上 connection 用实际 presentation map 运输到同一 bundle chart。在 YM canonical potential $\int\langle E,\delta A\rangle$ 中代入 PB (2.7)，changing-frame 的项为 $\langle E,D_A\eta\rangle$。积分分部得到真实面项及 $-\langle D_AE,\eta\rangle$；后者由 Gauss（有 matter 时连同 matter）处理。前者是 transported corner contribution，不是新增任意 canonical pair。

以左区朝右的 $n$ 定向、右区 seam 外法向为 $-n$，$E_2^n$ 在右 frame 中，真实外端 identification 不变时 contribution 为

$$-\int_\Gamma\langle E_2^n,\delta h h^{-1}\rangle.$$

取 $A=-ia,E=-iE_{\rm real},h=e^{i\lambda}$、$\langle X,Y\rangle=-XY$，正好给原 Maxwell 的 $+\int E_x\delta\lambda$。非平凡 bundle 用实际 collars 做同一局域计算，不假定全球平凡化。

相同局域 variational representative 下，bulk integrals 相加，Gauss/transmission 及实际 seam terms 消去内部贡献：

$$\Theta_{\rm sew}=J^*\Theta_{\rm out}+\delta B,\qquad
\Omega_{\rm sew}=J^*\Omega_{\rm out}.$$

$B$ 仅记录已声明 exact potential convention；未完成这种局域计算的其他 action，不得把本式作为已支付假设宣布完成。YM/Maxwell 使用上面的积分分部，U(1) CS 使用 R4.5 的显式恒等式。全程保留退化方向。

pullback 等式不证明 $J$ 或 $dJ$ onto。某模型另证 $dJ$ onto 后才有

$$\ker\Omega_{\rm sew}=(dJ)^{-1}\ker\Omega_{\rm out}.$$

一方向直接代入；反向将任意 target tangent 提升，再用退化定义。Hamiltonian bracket 比较还需合法 $X_F$ 的 tangent lift；不能据形式 pullback 声称全部 observable 自动提升。

### R4.3 Maxwell：保留 gauge slice 的全部 fibers

保持 PB §6 的 slab、relative wall、rapid-mode 空间 $\mathscr S$。完整 Cauchy 对象用

$$a=a_T+d\chi,\quad E=E_T,\qquad
(a_T,E_T)\in\mathscr S\oplus\mathscr S,\quad \chi\in C_D^\infty(\Sigma).$$

原 $P_T$ 的 Dirichlet Poisson problem 算出 $a_T,\chi$，但不丢弃 $\chi$。时空解保留所有真外壁为零的 smooth gauge histories：

$$a(t)=a_T(t)+d_\Sigma\chi(t),\quad a_t(t)=\partial_t\chi(t),\quad
E=e^{-2}(\partial_ta-d_\Sigma a_t)=E_T(t).$$

$(a_T,E_T)$ 按原 (6.3) 演化。Gauss 与 $\delta\chi|_\partial=0$ 给

$$\Theta=\int E_T\delta a_T,\quad \Omega=\sum_\nu\delta p_\nu\wedge\delta q_\nu,$$

$\delta\chi$ 仍在 tangent space 中。反向用每个 transverse mode 的独立 field/electric variation 测试，零方向必须 transverse components 为零；因此该线性 cover 的 kernel 恰是 Dirichlet gauge directions/相应时空 histories。不是先 quotient。

opening 使用原 joint-source construction，不保持旧人工 homogeneous spectral domain。interval chain 的 real $\lambda_i$ 可用避开真外壁的 smooth collar extensions 运输到共同 frame。选一份 extension rule 得到 actual $J$，同时保留改变规则的 proper arrows；$\lambda=0$ 的 restriction 给线性 section，所以 $J,dJ$ onto。不同规则可给不同 raw representative，而由原 proper 联系，不宣称 full-field map 逐点无选择。

原 (6.12)、(6.13) 在完整 matched space 上为

$$\Theta_{\rm cut}=\sum_i\int E_i\delta a_i+\sum_i\int E_x\delta\lambda_i,
\qquad \widetilde F=\sum_i\int(f_i a_i+g_iE_i)+\sum_i\int\lambda_i f_x.$$

规范变分相消且 $J^*\Theta_{\rm out}=\Theta_{\rm cut}$。通过 section 提升 target Hamiltonian vector 得相同 bracket。原 $\mathcal N=\{(0,d\chi):\chi|_\partial=0\}$ 是 label 评价零关系，不是删 field gauge directions。有限组独立线性 labels 的满秩 evaluation 排除额外 polynomial relations；相同配对与 universal CCR/Weyl relations 给抽象量子同构，不选 vacuum。

compact U(1) 保留 raw connections 和完整离散 based 作用；仅在 invariant probes/下游表示中实施 integer characters 和原 rotor sector。不能从 infinitesimal kernel 推断离散分支。

### R4.4 YM2：从完整 fields 重建，不需要 global log

保持 PB §5 的 compact connected G、全部 based components proper、endpoint frames/coupling。完整 Cauchy 对象为所有 $(A_x,E)$ 满足 $D_xE=0$，附 canonical presymplectic form 与实际 based action。$(U,p)$ 是 derived invariant coordinates；原 PBW/Haar 目标不变，但不以 $T^*G$ 替代完整空间。

给任意 smooth $(A_0,E_0)$ 满足 Gauss，任选实际 smooth $A_t(t,x)$，两端为规定 histories $q_a,q_b$。令 $g(t_0,x)=1,\partial_tg=gA_t$，定义

$$\widetilde E=E_0,\quad \widetilde A_x=A_0+e^2(t-t_0)E_0,
\quad E=g^{-1}\widetilde E g,\quad
A_x=g^{-1}\widetilde A_xg+g^{-1}\partial_xg.$$

于是 $A_t^g=0$，temporal frame 中 $F_{tx}=e^2E_0,D_tE_0=0$，且
$D_x^{\widetilde A}E_0=D_x^{A_0}E_0+e^2(t-t_0)[E_0,E_0]=0$。变回原 frame 得原 YM equations/endpoint sources。有限时间 smooth ODE 提供 g。不同内部 $A_t$ choices 用保持端点的 gauge history 联系并全部保留。这给实际未约化 source constructor；不是只写 holonomy ODE。

同 holonomy 可由 based map 联系，但不推出全球 smooth holonomy section。U(1) 的这种 section 将给出从恒等到每个圆点连续选择的 path，从而收缩 $S^1$，不可能。禁止据此假定全局 $T^*G\times\mathcal G_{\rm prop}$；构造从实际 $A_0$ 出发，不需 global logarithm。

### R4.5 U(1) disk：current 不取代 bulk gauge fields

保留 PB §7.1 的无 puncture、extendible framing、relative zero sector，完整 fields 为全部 smooth flat $a=d\phi$。$\phi$ 的常数是不改变 a 的参数化重复；内部改变而边界不变则是实际保留的 proper direction。原边界 $\Omega$ 对它们退化。

给完整周期 $j_0,b$，按 (7.5) 演化 j；零平均给 boundary primitive。取任意 smooth disk extension，并调一份随时间的 scalar constant 使 $\partial_t\phi-v\partial_s\phi=b$，因为该等式的沿圆 derivative 已由 current PDE 保证。令 $a=d_{t,D}\phi$；保留全部 extensions 及 proper maps，不只留下 current quotient。

零 relative winding、corner jets 与外 framing 相容的 chord lift 可实际 extension。$\phi_2=\phi_1+\lambda$ 给

$$\phi_2'\delta\phi_2-\phi_1'\delta\phi_1
=\phi_1'\delta\lambda+\lambda'\delta\phi_1+\lambda'\delta\lambda.$$

这正是 (7.3a)。因此 full $\Omega$ pullback 与 current lifts (7.6) 成立，内部 gauge directions 未被 quotient。current CCR 比较不等于 charged vertex、torus handle 或任意 CS state sewing。

## R5. Observable、Wick、Hilbert、态与振幅分别验收

### R5.1 固定 target，分别证明两个箭头

FC 保留其原多点 coefficient class，joint smooth kernels 不等于旧区域代数的有限 tensor words。PB Maxwell 仍是有限 $\operatorname{Sym}(\mathcal L/\mathcal N)$；无限秩 bilocal 核不是反驳该较小已声明目标的实例。不可将 target 改成 sewing map 的像，也不可无声扩大 target。

每个实际 cut word 先有到独立 target 的评价 map；source relations 必须评价为零。target generators 的 actual lifts 给满射；normal forms 的 target images 独立才给 injectivity。“lifts 满足 target relations”首先给的是 target presentation 到 cut algebra 的另一个箭头，不能不检查方向。Maxwell 的完整线性 null、PB finite $M_k/M_2$ presentation 提供具体验收；一般 interacting presentation 仍未完成。

在 FC 的每个有限 polynomial degree，先给出 smooth product-collar cover 与原波前准入类，而非从 target 解空间取 image。局部分布 $t_\alpha$ 的 assembly 为 $t=\sum_\alpha t_\alpha$。subordinate partition $\sum\chi_\alpha=1$ 在相关 compact supports 的邻域成立，$t_\alpha=\chi_\alpha t$ 给 preimage。零和局部族满足

$$u_{\alpha\beta}=\chi_\beta t_\alpha-\chi_\alpha t_\beta,
\qquad u_{\alpha\beta}=-u_{\beta\alpha},
\qquad \sum_\beta u_{\alpha\beta}=t_\alpha.$$

故 kernel 由 overlap 上转移同一分布的 relations 生成。紧支撑于 chart 的分布才作零延拓；没有 sharp restriction。smooth multiplication 不增 wavefront，boundary coefficients 仍需原 Q 的 trace/extension 准入。这证明系数装配，不证明所有 contractions 或无限谱极限；后两者仍是独立分析输入。

### R5.2 W 的地位

线性 CCR 由实际反对称配对定义，不需先选 state。固定 Wick symbols/局域 composite 时需合法 product prescription。同一 dynamics 的允许 smooth symmetric bisolution s 给

$$\alpha_s=\exp\!\left(\frac\hbar2\langle s,\delta^2\rangle\right),\quad
\alpha_s(F\star_WG)=\alpha_sF\star_{W+s}\alpha_sG.$$

有限 polynomial degree 使该式逐项可定义；局域 diagonal 使用其独立已验证处方。positivity 是构造正 Gaussian 态时的额外验收，不从形式结合律推出。changing boundary dynamics 改变 E 时不能套 smooth-shift 等价。$\phi^4$ 的 $6\hbar c\phi^2+3\hbar^2c^2$ 必须连同 insertions 运输。

### R5.3 Gram/onto 引理

给 V、正半定 Hermitian G、实际线性 $C:V\to H=\bigoplus_{a=1}^rH_a$，满足 $\|Cv\|^2=G(v,v)$。则 $\ker C=\operatorname{rad}G$，并延拓成 Gram-completion 的等距映射，其像闭。

另若闭像在实际 target algebra 的有界 *-作用下 reducing、各 channel projection 保持闭像、各 $H_a$ 不可约且 $P_a\operatorname{Ran}C\ne0$，则 C onto。证明：每个 $P_a\operatorname{Ran}C$ 是非零闭 reducing 子空间，所以等于 $H_a$；有限和为整个 H。原 adopted CS realization 的这些分析性质不由本修订重新证明。

互不等价不可约通道是 projection 条件可由表示论推出的一组充分条件，不要求所有模型都如此。等价通道须检查实际 multiplicity map 满秩；$v\mapsto(v,v)/\sqrt2$ 是非满的新攻击。正 Gram 或各通道 projection 非零本身不够。$c_n\mapsto c_n/n$ 不是等距 map，故不反驳完成等距映射的闭像结论。

### R5.4 fixed cups、态与 lift

$F\mapsto-F$ 保留共轭但破坏 fixed $\sqrt2F_{00}=-1$ 时，第二份不是满足全部剩余前提的合法 realization；它只说明弱 braid/Ad tests 漏条件。完整 quantum prescription 已确定的 cups/intertwiners 不另算独立自由输入。

代数态满足 $\omega_{e^{i\alpha}\psi}=\omega_\psi$。相位属于向量 lift、群实现或带插入振幅，不是密度矩阵坐标。characters $e^{in\alpha}$ 的 multipliers 全平凡，只给 lift 不唯一；Pauli 对 $\mathbb Z_2^2$ 的实现才给 Ad 严格对易而实现者 commutator 为 $-1$ 的 projective 见证。

$|\psi_\pm\rangle=(4/5)\sum_{n\ge0}(\pm3/5)^n|n,n\rangle$ 有同 marginals，却有 $\langle a_1a_2\rangle=\pm15/16$。这证明未指定联合准备时的一般 state extension 非唯一，不自动满足每一种空间 sewing 约束。state/representation/amplitude 保留原目标，不借 algebra 同构宣布完成。

## 新增或精确化条件与弱化

| 条件 | 排除的失败 | 更弱形式／地位 |
|---|---|---|
| 在实际联合域比较完整 tuple | 纯源块角点加速度 $\pm2$ | 不要求直积；关系比较不要求唯一性；quartet 限在各块合法子域 |
| 非特征共同 smooth PDE/source、场/conormal matching | $u_+=x^2,u_-=0$ 的 forcing 跳跃 | 有限 $C^k$ 可减弱但改变目标；高阶 jets 不再独立输入 |
| 未由其余数据决定的 null seeds | massive kink；平坦非零的另一张 trace | 第二 sheet/wall 已决定的 seeds 可删；不普遍增加无限自由数据 |
| global proper 成员资格 | local small 组装 winding 1 | U(1) interval 总整数是精确判据；不额外要求逐片同伦 |
| 既有相对变分规则与实际 corner 运输 | 删 $p\delta\lambda$ 把 null 变 charged | 同步 exact 改进允许；不要求 Θ 守恒，不加 oscillator |
| 实际 Hamiltonian tangent lift | pullback 形式不保证 lift | Maxwell 线性 section 已给；不引入全局光滑商/常秩假设 |
| 完成与通道验收 | 正 Gram 非满；对角嵌入 | 正半定足够；可用直接 image 证明代替该充分准则 |
| symbols 或 Wick 等价类的区分 | 改 W 不运送 insertions | CCR 不需 W；positivity 在态层另验 |

原 $m>0,\sigma_e\ge0,v>0$ 保留为当前证明/正能量实现范围，不标普遍必要。本次不据负 Robin 平方完成或负 v transport 自动扩大整个 boundary quantum theorem。

## 未证明事项及影响

1. FC imported Q 的全部 reflecting-boundary microlocal 估计未重证；合法 contractions 上的运输不能升级任意边界 Q01。
2. 一般 smooth-extension、尖角、mixed null IBVP 和所有模型的 global proper 分支算法未构造。关系比较不替代 source 非空/连续性。
3. 一般奇异 gauge 空间的完整 Hamiltonian lifts/observable presentation 仍缺；不假设全局商光滑解决它。
4. FC 全部 interacting boundary stress/force/Ward base contacts 及 removal compatibility 未完成，P06/P07 仍未构造/条件性；formal coefficients 不证明实际耦合收敛。
5. adopted CS charged transport/onto 分析和所有 higher ribbon coherence 未重证；finite $M_k/M_2$ 不能代替一般 quantum YM/CS/thin Wilson/null 扩张。
6. 一般 state、representation、amplitude sewing 保留开放，不从 marginals、Haar benchmark 或代数同构推出。
7. 基线 PB 原 claims.json 未跟踪；本修订状态说明是新记录，不冒称恢复旧 JSON 或认证其 hash。旧 audits 的历史执行记录保持历史性质。

Verified: 解析证明见 R1–R5；实际符号回测见 `verify_repair.py` 及 `checks_result.json`，不以有限数值替代证明。

Assumptions: 原模型、符号、真实 B 与 sector 保持；本次精确化条件及弱化见表。

Not verified: 上述开放目标。Mathematica/xAct/Sage 没有在本环境执行；实际使用 SymPy，其他工具建议不记为通过。
