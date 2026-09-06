# Smooth Regional Observable Algebra Gluing for Switched Phi4

本文将 [smooth regional observable algebras and symmetries](<smooth regional observable algebras and symmetries.md>)（以下记 [S]）推广到跨人工 cut 可以非零的、平滑时间开关的经典 $\phi^4$ 相互作用。自由 trace/lift 的定义沿用 [S] 及 [classical regional observable algebra gluing](<classical regional observable algebra gluing.md>)（记 [N]）；非线性解、完整导数的转置、新括号和 exact onto 在本文重新证明。参考对话中的结论不作为证明前提。

**结果。** 在下述一维空间、光滑数据和固定开关条件下，全部所选 smooth-Hamiltonian families 有全阶形式 exact sewing；在固定有限时间、有界输入附近，足够小的真实耦合也有实际的局部 exact sewing。满射由每个函数的显式 extension 证明。物理场映射和 Peierls kernel 改变，incoming CPS 的辛形式保持原式。未匹配数据上的 Poisson extension 依赖辅助选择，商上的物理括号由作用量固定。

## 1. 区域作用量与接口条件

取 $\Sigma_i=[0,\ell_i]$，$i=1,2$，两份 $y_i$ 均朝 cut 增加；物理外端为 $y_i=0$，signature 为 $(-,+)$，$m>0$。在固定有限 slab $I$ 上定义

$$
\begin{aligned}
S_{i,\lambda}[\phi_i]
&=\int_I dt\int_0^{\ell_i}dy_i
\left[\frac{\dot\phi_i^2-\phi_i'^2-m^2\phi_i^2}{2}
-\frac{\lambda g_i(t,y_i)}{24}\phi_i^4\right],\\
L_{i,0}&=\partial_t^2-\partial_{y_i}^2+m^2,\qquad
\phi_i(t,0)=0,\qquad q_i(t)=\phi_i(t,\ell_i).
\end{aligned}
$$

没有真实 interface action，没有规范自由度，也没有额外物理 source。$g_i$ 是给定的实 smooth function，满足：

1. 时间支撑包含于固定闭区间 $J=[a,b]\Subset I^\circ$，物理外端附近恒为零。
2. 在人工 cut，以共同空间方向比较时匹配全部 jets：
   $\partial_{y_1}^r g_1(t,\ell_1)=(-1)^r\partial_{y_2}^r g_2(t,\ell_2)$，所有 $r\ge0$。不要求 $g_i$ 在 cut 消失。
3. 选定从 $0$ 增至 $1$ 的 $\chi$，令 $K_\chi=\operatorname{hull}(\operatorname{supp}\chi')\Subset I^\circ$，并要求 $\sup K_\chi<a$。所有场在 $\overline I$ 的一个固定邻域求解；history cutoff $\kappa=1$ 于该 slab，辅助延拓按 [S] 处理。

先变分，再识别两侧 history：

$$
\begin{aligned}
\delta S_{i,\lambda}
&=-\int\left(L_{i,0}\phi_i+\frac{\lambda g_i}{6}\phi_i^3\right)\delta\phi_i
+\left[\int\dot\phi_i\delta\phi_i\,dy_i\right]_{t_-}^{t_+}
+\int\Pi_i\,\delta q_i\,dt,\\
\Pi_i&=-\phi_i'(t,\ell_i).
\end{aligned}
$$

区域允许变分固定 $q_i$。粘合时先令 $q_1=q_2=q$，再允许共同 $\delta q\in C_c^\infty(I^\circ)$ 任意，由变分得到

$$
\boxed{\phi_1|_\Gamma=\phi_2|_\Gamma=q,\qquad
\Pi_1+\Pi_2=0.}
$$

势项无导数，故没有新增的 symplectic-potential、corner 或 normal-flux 项。固定 history 的两个线性化解 $h,k$ 满足

$$
\left(L_{i,0}+\frac{\lambda g_i\phi_i^2}{2}\right)h=0,\qquad
\left(L_{i,0}+\frac{\lambda g_i\phi_i^2}{2}\right)k=0.
$$

直接相减得

$$
\partial_t(\dot h\,k-\dot k\,h)
=\partial_{y_i}(h'k-k'h).
$$

固定 history 时 $h=k=0$ 于两端，故
$\Omega_i(h,k)=\int(\dot h\,k-\dot k\,h)\,dy_i$
守恒。共同-history 变分满足线性化 continuity/flux matching 时，两侧 cut 通量相消。

全文使用

$$
\iota_{X_F}\Omega=-dF,\qquad
\{F,G\}=dF(X_G)=-\Omega(X_F,X_G),\qquad
E_0=G_0^A-G_0^R.
$$

## 2. Incoming coordinates 与所选代数

令 $K_{i,D}=-\partial_{y_i}^2+m^2$，域为 $H^2\cap H_0^1$，$W_i=(1+K_{i,D})^{1/2}$，并取

$$
X_i=\bigcap_{s\ge0}
\left(D(W_i^{s+1})\oplus D(W_i^s)\right),\qquad
\mathcal Q=\bigcap_{s\ge0}H^s(\mathbb R).
$$

$X_i$ 是早期齐次 Dirichlet 解的 smooth Cauchy space。记该自由解为 $\psi_{z_i}$，定义

$$
\begin{aligned}
A_\chi&=\chi''+2\chi'\partial_t,\qquad
\mathcal P_i=-E_{i,D}A_\chi,\\
\mathsf S_iq&=(1-\mathcal P_i)H_{i,0}^R(\kappa q),\\
C_{i,0}(z_i,q)&=\psi_{z_i}+\mathsf S_iq.
\end{aligned}
$$

$\mathcal P_i$ 在齐次 Dirichlet solutions 上为恒等，$\mathcal P_i\mathsf S_i=0$。$\mathsf S_iq$ 属于 ordinary smooth fields；非零 trace 不属于 $D(K_{i,D}^\infty)$。后面的 interacting correction 在 cut 的高阶边界相容性也不能由齐次谱域代替。

$H_{i,0}^\epsilon$ 表示规定 Dirichlet history 的零过去/零未来自由解；$\rho_{i,0}^\epsilon a=-\partial_{n_i}G_{i,D}^\epsilon a|_\Gamma$ 是带上述 action 符号的 normal response。多端点 cluster 对每个端点分别使用这两个 maps。

区域先有独立 histories；识别它们后的变量为

$$
\begin{aligned}
Y&=X_1\oplus X_2\oplus\mathcal Q,\\
Z_K&=X_1\oplus X_2\oplus C_K^\infty(\mathbb R),\qquad K\Subset I^\circ,\\
\beta((V_1,V_2,A),(z_1,z_2,h))
&=-\sum_i\Omega_i(V_i,z_i)+\int A h\,dt.
\end{aligned}
$$

对开域 $D\subset Y$ 定义

$$
\begin{aligned}
\mathcal H_{\beta,K}(D)
=\{F\in C_B^\infty(D):\;&
DF(y)[h]=\beta(U_F(y),h),\\
&U_F\in C_B^\infty(D,Z_K)\},\qquad
\mathcal H_\beta(D)=\bigcup_K\mathcal H_{\beta,K}(D).
\end{aligned}
$$

$B$ 表示 Bastiani；每个 $F$ 的同一个 $K$ 控制所有背景及所有 mixed derivatives。对 smooth CPS 的开域 $U\subset X$，

$$
\mathcal H(U)=
\{G\in C_B^\infty(U):
DG=-\Omega(X_G,\cdot),\
X_G\in C_B^\infty(U,X)\}.
$$

这一定义保持 [S] 的大函数类；没有 factorial-growth、polynomial-density 或统一 finite-loss 条件。固定 $q_i$ 的区域代数是 $\mathcal H(X_i)$，实际小耦合时限制到解存在的开域。joint families 另有不可删除的 history-density 条件。独立 histories 到共同 history 的代入，其 transpose 将 densities 相加；任意共同-history 函数可延拓为只依赖 $q_1$ 的函数，因此这一步 exact onto。

在形式理论中取

$$
\mathcal H_\beta(Y)[[\lambda]],\qquad \mathcal H(X)[[\lambda]].
$$

每个系数是已定义的实际 smooth function；不同系数可有不同 $K$。模 $\lambda^{N+1}$ 的所有运算只涉及有限多个系数和有限次支撑扩大。若 $T_\lambda=T_0+O(\lambda)$，$F\circ T_\lambda$ 定义为在 $T_0$ 处的形式 Taylor substitution：每一阶只用有限阶 $D^kF$。不要求 $F$ analytic，不定义一个未指定微分学的“形式解空间上的全部函数”。

## 3. 非线性区域解与实际存在域

### 3.1 全阶递归

从区域 action、自由 Dirichlet Green map 和给定 history 定义

$$
\boxed{
C_{i,\lambda}(z_i,q)
=C_{i,0}(z_i,q)
-\frac{\lambda}{6}G_{i,D}^R
\bigl(g_iC_{i,\lambda}(z_i,q)^3\bigr).
}
$$

相互作用修正在 $t<a$ 为零；所以早期坐标仍为 $z_i$，且 correction 的两端 Dirichlet trace 为零。写 $C_{i,\lambda}=\sum_{r\ge0}\lambda^rC_{i,r}$，则

$$
\begin{aligned}
C_{i,r}
&=-\frac16G_{i,D}^R
\left(g_i\sum_{r_1+r_2+r_3=r-1}
C_{i,r_1}C_{i,r_2}C_{i,r_3}\right),\quad r\ge1,\\
C_{i,1}&=-\frac16G_{i,D}^R(g_iC_{i,0}^3),\\
C_{i,2}&=-\frac12G_{i,D}^R(g_iC_{i,0}^2C_{i,1}),\\
C_{i,3}&=-\frac12G_{i,D}^R
\left(g_i(C_{i,0}^2C_{i,2}+C_{i,0}C_{i,1}^2)\right).
\end{aligned}
$$

每一阶的源光滑，时间支撑在 $J$；零过去解唯一，因此归纳给唯一的全阶形式解。光滑性是在闭 cell 上的普通空间/时间意义；例如 correction 在 cut 的二阶法向导数可以非零。这个递归不需要任何 global interacting object。

### 3.2 真实耦合的同一时间窗

在包含 $\overline I$ 的固定有限时间窗上，令

$$
\|u\|_{\mathcal E}
=\sup_t\left(\|u(t)\|_{H^1}+\|\dot u(t)\|_{L^2}\right).
$$

零过去 Dirichlet 波解满足
$\|G_D^Rf\|_{\mathcal E}\le C_I\|f\|_{L_t^1L_y^2}$。
一维 $H^1\hookrightarrow L^\infty$ 给

$$
\begin{aligned}
\|u^3\|_{L^2}&\le C\|u\|_{H^1}^3,\\
\|u^3-v^3\|_{L^2}
&\le C(\|u\|_{H^1}^2+\|v\|_{H^1}^2)\|u-v\|_{H^1}.
\end{aligned}
$$

若 $\|C_{i,0}\|_{\mathcal E}<M$，取半径 $2M$ 的球，选择常数 $C$ 同时吸收两项估计及 $1/6$，则充分条件

$$
|\lambda|C|J|\,\|g_i\|_\infty(2M)^2<\frac12
$$

同时保证球被映回自身和严格 contraction。非齐次边界通过减去 $(y_i/\ell_i)q$ 处理；相容初值由相互作用之前的 $C_{i,0}$ 提供。局部 Lipschitz 估计也给能量类中、解存在期间的唯一性。

高阶正则性不重新要求一串趋于零的耦合半径。对时间求 $k$ 次导数后，最高阶未知量满足同一个线性化波方程，其乘法势为 $\lambda g_iC_{i,\lambda}^2/2$；其余源只含已控制的低阶时间导数及 $g_i,q$ 的导数。减去边界 lift 后作能量估计，Gronwall 给每个有限阶的界。随后反复使用

$$
\partial_{y_i}^2 C_{i,\lambda}
=\partial_t^2C_{i,\lambda}+m^2C_{i,\lambda}
+\frac{\lambda g_i}{6}C_{i,\lambda}^3
$$

恢复全部空间导数。由于 $g_i$ 在早期为零，初始时角的全部相容条件已由自由解满足。对背景和方向求导，最高阶变分仍满足这个线性化方程，源为低阶变分的有限乘积；同样归纳给所有 mixed derivatives 的局部连续估计。差商的余项满足相同能量估计，故这些变分就是实际 Bastiani derivatives。

因此同一个低阶存在域上有 ordinary-smooth 解及 Bastiani-smooth dependence；常数、输入 seminorm 和背景邻域可随输出阶及微分阶变化，允许 [S] 的正则性量词。真实小耦合定理的域将在 §8 明确选出，不能把所有任意大的区域输入都放进同一个存在域。

## 4. 完整梯度与转置正则性

这一节证明两个不同的事实：物理局域泛函属于区域 family 类；非线性 cut 的 pullback 对整个已定义函数类合法。

### 4.1 线性化传播的基本界

固定一个上述 smooth 背景 $\phi$，记乘法算子

$$
\mathcal V_\lambda=\frac{\lambda g\phi^2}{2},\qquad
L_\lambda=L_0+\mathcal V_\lambda,\qquad
G_\lambda^\epsilon=(1+G_0^\epsilon\mathcal V_\lambda)^{-1}G_0^\epsilon.
$$

所有 Green maps 都使用该问题自身的 Dirichlet 或 transmission 条件。形式 inverse 是有序 Neumann series；实际 inverse 是零过去/零未来的线性波解，由有界乘法势的能量估计及 Volterra 唯一性得到。线性化解为

$$
\delta\phi
=(1-G_\lambda^R\mathcal V_\lambda)\delta\phi_0.
$$

其所有参数导数可由

$$
DG_\lambda^\epsilon[h]
=-G_\lambda^\epsilon(D\mathcal V_\lambda[h])G_\lambda^\epsilon,\qquad
D\mathcal V_\lambda[h]=\lambda g\phi\,D\phi[h]
$$

和对应波方程归纳估计。

需要以下具体的低空间正则性结论。

**Bulk 源。** 若 $a\in C_c^\infty(I^\circ;L^2)$，则 $G_\lambda^\epsilon a$ 在固定有限窗中为 $C_t^\infty H_y^2$，具有光滑 normal trace。自由情形可从

$$
G_0^\epsilon a=K^{-1}a-G_0^\epsilon(K^{-1}\ddot a)
$$

及能量估计得到；对时间反复求导仍成立。变量势情形先用能量估计及时间微分获得 $C_t^\infty H_y^1$，再用
$w''_y=\ddot w+(m^2+\mathcal V_\lambda)w-a$
得到 $H^2$。这里不要求 $a$ 属于齐次边界的全部谱域。

**内部 timelike trace。** 对 $A\in C_K^\infty$，一维内部点分布 $\gamma^*A=A(t)\delta_\Gamma$ 满足

$$
G_\lambda^\epsilon\gamma^*A\in C_t^\infty H_y^1.
$$

证明先令 $k=K^{-1}\delta_\Gamma\in H_0^1$，自由解写成
$kA-G_0^\epsilon(k\ddot A)$。再把 $\mathcal V_\lambda w$ 作为 $L^2$ 源，用上一段的能量估计和时间微分处理变量势。这个解可有一阶空间导数跳跃，不能称为全空间 smooth field；但

$$
\mathcal V_\lambda G_\lambda^\epsilon\gamma^*A
\in C_c^\infty(J;L^2).
$$

**自由时间平滑。** 对上述 $L^2$ 源，$E_0a\in X^\infty$。将 sine/cosine 核中的 $K$ 权重通过时间分部积分转移到 $a$，有

$$
\|\operatorname{Cau}E_0a\|_{X_s}
\le C_s\sum_{\nu=0}^{s}\|\partial_t^\nu a\|_{L_t^1L_y^2}.
$$

零时间边界项来自紧支撑。内部 $\gamma^*A$ 的模态系数有多项式增长，紧支撑的光滑时间涂抹经任意多次分部积分给
$E_0\gamma^*A\in X^\infty$。区域端点 normal trace 的模态系数为 $O(\omega_r)$，同一论证适用。

以上 estimates 在固定 support stratum 上连续。对背景求任意有限次导数，只增加有光滑系数的波方程和有限乘积；故给联合 Bastiani-smooth maps，而非仅仅每个背景处存在某个 transpose。

**保留 external histories 的内部 trace。** 有限次 partial sewing 还需要 cluster 的内部 $\gamma\mathsf S$ 的 transpose。对一个端点的线性 lift $l(y)q$，先不作 normalization：

$$
(\gamma H_0^R)^*A
=l(\Gamma)A-(\partial_t^2+m^2)
\langle l,G_0^A\gamma^*A\rangle_y.
$$

刚证明的 $C_t^\infty H_y^1$ 界使右侧为 smooth density。normalized transpose 为

$$
(\gamma\mathsf S)^\dagger A
=\kappa\left[
l(\Gamma)A-(\partial_t^2+m^2)
\langle l,G_0^A\gamma^*A\rangle_y
+\rho_0^AA_\chi E_0\gamma^*A
\right].
$$

最终支撑由观察窗与 $K_\chi$ 的 hull 控制。多个端点逐项求和。非线性 transpose 再减去
$\mathsf S^\dagger\mathcal V_\lambda G_\lambda^A\gamma^*A$；
该项的源已是 $C_c^\infty(J;L^2)$。因此 partial cut 的 external-history derivatives 也实际满足 full-density 条件。

### 4.2 区域 finite-jet observables

取固定 compact-time support 的 smooth bulk density
$a_0(t,y,j^d\phi)$，以及同样时间支撑的 endpoint finite-jet densities。先在物理场上变分、对空间分部积分。边界上的高阶法向变分须用线性化方程递归消去：

$$
\partial_y^{r+2}\delta\phi
=\partial_t^2\partial_y^r\delta\phi
+m^2\partial_y^r\delta\phi
+\sum_{j=0}^r\binom rj
(\partial_y^j\mathcal V_\lambda)
\partial_y^{r-j}\delta\phi .
$$

递归最终只留下 $\delta\phi$ 和一阶法向导数；对时间分部积分后，

$$
D\mathcal F_\phi[\delta\phi]
=\int a\,\delta\phi
+\sum_e\int b_e\,\partial_{n_e}\delta\phi|_e\,dt
+\int c\,\delta q\,dt.
$$

$n_e$ 是 cell 的 outward normal，物理端点的 $\delta\phi=0$ 已使用；人工端点的项 $c\,\delta q$ 保留。$a,b_e,c$ 及其全部背景导数均是固定时间支撑的 smooth coefficients。不能把高阶端点 delta derivatives 的传播直接套用内部 $\delta_\Gamma$ 的 $H^1$ 估计。

令 $H_{\lambda,e}^A$ 为 advanced 解，具有端点 $e$ 的 prescribed Dirichlet value 和另一端零值。Green identity 给

$$
(\partial_{n_e}G_{\lambda,D}^R)^*b_e=-H_{\lambda,e}^Ab_e.
$$

负号来自空间算子 $-\partial_y^2$。因此定义

$$
w=G_{\lambda,D}^Aa-\sum_eH_{\lambda,e}^Ab_e.
$$

边界数据 $b_e$ 光滑且时间紧支撑；用线性 lift 和能量估计得 $w\in C_t^\infty H_y^1$，所以 $\mathcal V_\lambda w\in C_c^\infty(J;L^2)$。把
$\delta\phi=(1-G_{\lambda,D}^R\mathcal V_\lambda)(\psi_{\delta z}+\mathsf S\delta q)$
代入完整变分，得到实际梯度

$$
\boxed{
\begin{aligned}
V_F
&=E_{i,D}(a-\mathcal V_\lambda w)
+\sum_e E_{i,D}\gamma_{n_e}^*b_e,\\
A_F
&=\mathsf S_i^\dagger(a-\mathcal V_\lambda w)
+\sum_e(\gamma_{n_e}\mathsf S_i)^\dagger b_e+c.
\end{aligned}}
$$

这里 $\gamma_{n_e}$ 只表示 outward normal derivative 的 trace。自由 lift 的 transpose 可直接由
$\mathsf S_i=(1+E_{i,D}A_\chi)H_{i,0}^R\kappa$
和 Green identity 得到：

$$
\mathsf S_i^\dagger a
=\kappa\rho_{i,0}^A(a+A_\chi E_{i,D}a).
$$

$K_D^{-1}:L^2\to H^2\cap H_0^1$ 的 normal-trace 界控制这一 density 及其所有时间导数；normal-boundary 版本用 advanced Dirichlet response 和前述时间平滑估计。对给定测试支撑，最终 history 支撑包含在

$$
K'=\operatorname{hull}(K_{\mathrm{test}}\cup J\cup K_\chi)\Subset I^\circ.
$$

支撑证明也可直接测试：若 $\delta q$ 支撑晚于这个 hull，则 retarded lift 在所有相关时间窗为零；若早于这个 hull，则该 lift 在 hull 上为齐次 Dirichlet 解，被 normalization 消去。非线性变分的源只在 $J$，所以同样为零。由线性分解覆盖 hull 外任意 history variation。没有 slab-endpoint deltas，也没有依赖背景的支撑漂移。

有限 jets 上的 smooth composition、§3 的 solution derivatives 和上述连续转置，证明

$$
\mathcal F(C_{i,\lambda}(z_i,q))\in\mathcal H_{\beta,K'}(D)
$$

及其所有形式系数的 membership。这包括 smooth 非解析后处理、smeared nonlinear response，以及时间涂抹能量。纯 history 函数 $\int\eta q^r$ 的 density 为 $r\eta q^{r-1}$；$q(t_*)$ 则仍不满足本类的 smooth-density 条件。

## 5. 只用区域输入构造 matched solutions

在 $H^{\mathrm{dup}}=L^2(\Sigma_1)\oplus L^2(\Sigma_2)$ 上，由 §1 的共同-history 变分定义

$$
\begin{aligned}
V^{\mathrm{sew}}
&=\{u_i\in H^1:\ u_i(0)=0,\
u_1(\ell_1)=u_2(\ell_2)\},\\
\mathfrak a_0(u,v)
&=\sum_i\int_0^{\ell_i}(u_i'v_i'+m^2u_iv_i)\,dy_i.
\end{aligned}
$$

闭型表示给 $K_{\mathrm{sew},0}$；分部积分给分段 $H^2$ 域及
$u_1'(\ell_1)+u_2'(\ell_2)=0$。functional calculus 定义其
$G_0^{R/A},E_0,X=X_{\mathrm{sew},0}$。每侧 $g_i$ 的乘法在这个 duplicated space 中定义；至此尚未引入独立 uncut action。

定义 connected nonlinear solution

$$
\Phi_\lambda(z)
=\psi_z-\frac{\lambda}{6}G_0^R(g\Phi_\lambda(z)^3).
$$

形式递归与 §3 相同；实际存在由同样的 $H^1$ 能量 contraction 得到。$V^{\mathrm{sew}}$ 上的一维 Sobolev 界只需对每个 cell 使用并取有限和。令

$$
\mathsf T_i=-E_{i,D}A_\chi R_i,\qquad
\boxed{\mathsf R_\lambda z=
(\mathsf T_1z,\mathsf T_2z,\kappa\gamma\Phi_\lambda(z)).}
$$

$R_i$ 是对物理场的第 $i$ 段限制。早期 interacting corrections 为零，所以 normalized regional coordinates 确实是 $\mathsf T_i z$，不是未经求解就假设不变。

**双向解粘合。** $\Phi_\lambda|_{\Sigma_i}$ 和
$C_{i,\lambda}(\mathsf T_i z,\kappa\gamma\Phi_\lambda)$
满足同一局域方程、同一 history 和同一早期数据；§3 的因果唯一性给二者相等。反之，两个区域解满足 §1 的 continuity/flux matching 时，分段方程没有 interface delta。还可逐阶证明强光滑 patching：共同方向中的 $\phi,\partial_x\phi$ 已匹配，由

$$
\partial_x^{r+2}\phi
=\partial_t^2\partial_x^r\phi+m^2\partial_x^r\phi
+\frac{\lambda}{6}\partial_x^r(g\phi^3)
$$

以及 $g$ 的全部 jet matching，归纳得到所有空间和 mixed jets 匹配。早期匹配场的 Cauchy data 给 $z\in X$，连接问题的唯一性给该场等于 $\Phi_\lambda(z)$。因此 matched regional solution data 正好是 $\mathsf R_\lambda$ 的像；形式理论逐系数成立，实际理论限制在 §8 的共同存在域。

这一构造保留完整 transmission problem，不在实频上除以某个 DtN scalar，也没有丢弃自由理论的零接口模式。非线性理论一般不再有一个场无关的 normal-mode 谱问题。

## 6. 非线性 cut 与严格左逆

### 6.1 左逆没有微扰余项

记 $\mathsf R=\mathsf R_0$。定义仍然线性的

$$
\begin{aligned}
\mathsf By
&=-E_0A_\chi
\bigl(C_{1,0}(z_1,q),C_{2,0}(z_2,q)\bigr),\\
\mathsf T_i^\sharp&=-E_0e_iA_\chi,\\
\mathsf B^\flat v
&=\left(\mathsf T_1v,\mathsf T_2v,\
\sum_i\mathsf S_i^\dagger(-R_iA_\chi v)\right).
\end{aligned}
$$

$e_i$ 只对 $L^2$ sources 作零延拓。$\mathsf B$ 的源是 duplicated field pair；未要求该 pair 已匹配，也未用 independent global assembly。Green identity、$E_0^*=-E_0$ 和 $A_\chi^*=-A_\chi$ 给

$$
-\Omega(v,\mathsf By)=\beta(\mathsf B^\flat v,y).
$$

时间平滑与 lift/transpose 估计给连续 maps
$\mathsf B:Y\to X$、$\mathsf B^\flat:X\to Z_{K_\chi}$。自由 cutoff identity 给 $\mathsf B\mathsf R=1$。

现在写

$$
\Delta_\lambda(z)=\mathsf R_\lambda z-\mathsf Rz
=(0,0,\kappa\gamma(\Phi_\lambda(z)-\psi_z)).
$$

其 history 在 $t<a$ 为零，因此 $H_{i,0}^R\Delta q$ 在 $K_\chi$ 为零，$\mathcal P_iH_{i,0}^R\Delta q=0$，$\mathsf S_i\Delta q$ 在 $K_\chi$ 也为零。于是

$$
\boxed{\mathsf B\Delta_\lambda=0,\qquad
\mathsf B\mathsf R_\lambda=1.}
$$

这是全阶形式恒等式，也是实际解存在域上的恒等式。$\mathsf B$ 对一般不匹配输入只是 extension map，不表示其自由场对等于某个 interacting solution。

### 6.2 Cut transpose

在背景 $\Phi_\lambda(z)$ 上令
$\mathcal V_\lambda(z)=\lambda g\Phi_\lambda(z)^2/2$，
$G_\lambda^{R/A}(z)$ 为其 linearized transmission Green maps。对固定 $U=(V_1,V_2,A)\in Z_K$，完整微分满足

$$
\beta(U,D\mathsf R_\lambda(z)h)
=-\Omega(A_\lambda(z)U,h).
$$

$$
\boxed{
A_\lambda(z)U:=D\mathsf R_\lambda(z)^\flat U
=\sum_i\mathsf T_i^\sharp V_i
+E_0\left(\gamma^*A
-\mathcal V_\lambda(z)G_\lambda^A(z)\gamma^*A\right).
}
$$

证明：$D\Phi_\lambda[h]=(1-G_\lambda^R\mathcal V_\lambda)\psi_h$，将 $\int A\gamma D\Phi_\lambda[h]$ 转置，再使用
$\langle a,\psi_h\rangle=-\Omega(E_0a,h)$。
由于 $A$ 支撑在 $I^\circ$，$\kappa$ 在配对中为 $1$。

§4.1 分别控制 $E_0\gamma^*A$ 和
$E_0\mathcal V_\lambda G_\lambda^A\gamma^*A$，所以

$$
(z,U)\longmapsto A_\lambda(z)U:
U_X\times Z_K\longrightarrow X
$$

联合 Bastiani smooth，对 $U$ 线性。全部背景导数仍在 $X$；形式情况下每个系数有相同性质。这里 $U_X$ 表示实际 connected 解存在的开域，形式理论使用整个 $X$；自由 transpose 是 $\mathsf R^\flat=A_0$。这一步确立 smooth Hamiltonian vector，不能仅以抽象连续对偶中的存在替代。

对 $\mathsf B\mathsf R_\lambda=1$ 微分并转置，得

$$
\boxed{\mathsf B D\mathsf R_\lambda=1,\qquad
A_\lambda\mathsf B^\flat=1.}
$$

## 7. 新括号、Poisson closure 与 exact onto

### 7.1 明确构造未匹配数据上的 Poisson extension

定义

$$
\Psi_\lambda(y)=y+\Delta_\lambda(\mathsf By).
$$

由 $\mathsf B\Delta_\lambda=0$ 直接得

$$
\begin{aligned}
\Psi_\lambda^{-1}(y)&=y-\Delta_\lambda(\mathsf By),&
\mathsf B\Psi_\lambda&=\mathsf B,&
\Psi_\lambda\mathsf R&=\mathsf R_\lambda,\\
D\Psi_\lambda(y)^\flat U
&=U+\mathsf B^\flat
\bigl(A_\lambda(\mathsf By)-\mathsf R^\flat\bigr)U.
\end{aligned}
$$

inverse 的 transpose 把加号改为减号。输出支撑只需扩大为 $K\cup K_\chi$，且所有 mixed derivatives 光滑。因此两个方向都保持整个 $\mathcal H_\beta$；形式情形也逐系数成立。

自由 sewn operator 为 $\mathsf P_{\mathrm{sew},0}=\mathsf R\mathsf R^\flat$。它是常的 $\beta$-skew map；Hessian 对称性给全类 closure，三次括号的六个 Hessian 项两两抵消给 Jacobi。将这个已定义的 Poisson structure 经 $\Psi_\lambda$ 运输，得到

$$
\boxed{
\mathsf P_\lambda(y)
=D\mathsf R_\lambda(\mathsf By)\,A_\lambda(\mathsf By),\qquad
\{F,G\}_\lambda(y)
=\beta(U_F(y),\mathsf P_\lambda(y)U_G(y)).
}
$$

确实 $D\Psi_\lambda\mathsf R=D\mathsf R_\lambda$，转置给右因子；且 $\mathsf B\Psi_\lambda^{-1}y=\mathsf By$，故这是实际 pushforward formula。两个 pullbacks 都保类，所以 Jacobi、Leibniz 与全类 closure 随之成立。不能用固定-history vertical bracket 代替自由 sewn bracket 来做这个运输。

对非恒定 $\mathsf P_\lambda$，完整 gradient 另外包含

$$
\begin{aligned}
U_{\{F,G\}_\lambda}
&=DU_F[\mathsf P_\lambda U_G]
-DU_G[\mathsf P_\lambda U_F]
+\mathcal C_\lambda(y;U_F,U_G),\\
\mathcal C_\lambda(y;U,V)
&=\mathsf B^\flat\left(
DA_\lambda(x)[A_\lambda(x)V]U
-DA_\lambda(x)[A_\lambda(x)U]V\right),\qquad x=\mathsf By.
\end{aligned}
$$

为验证这一式，固定 $U,V$，令 $f_U(x)=\beta(U,\mathsf R_\lambda x)$。其 Hamiltonian vector 是 $A_\lambda(x)U$，故

$$
\begin{aligned}
\beta(U,\mathsf P_\lambda(y)V)
&=\{f_U,f_V\}_X(\mathsf By),\\
\beta(\mathcal C_\lambda(y;U,V),h)
&=\beta(U,D\mathsf P_\lambda(y)[h]V).
\end{aligned}
$$

$\mathcal H(X)$ 的 Hessian closure 和 $\mathsf B^\flat$ 给显示的 formula。它是实际的 smooth $Z_{K_\chi}$-valued 项；另外两项在 $Z_{K_F\cup K_G}$。由此也直接验证了未匹配 presentation 的完整梯度正则性。

这个 extension 的 leaves 可写为
$y=\mathsf R_\lambda x+w$，$\mathsf Bw=0$，固定 $w$；每个 leaf 上使用 $\Omega$。$w=0$ 是物理 matching。不同参考 $\chi$ 或 extension 选择可改变 $w\ne0$ 处的 bracket；本文没有宣称 off-matching 唯一性。

### 7.2 逐函数满射

令 $Q_\lambda F=F\circ\mathsf R_\lambda$。完整 chain rule 给

$$
\boxed{
X_{Q_\lambda F}(z)
=A_\lambda(z)U_F(\mathsf R_\lambda z).
}
$$

§6.2 保证右端在 $C_B^\infty(X,X)$，所以 release 覆盖函数类的定义要求；包含 history density $A_F$ 的全部贡献。由 $\mathsf B\mathsf R_\lambda=1$，

$$
Q_\lambda\{F,G\}_\lambda
=\{Q_\lambda F,Q_\lambda G\}_X.
$$

现在任取 $G\in\mathcal H(X)[[\lambda]]$，实际定义

$$
\widetilde G=G\circ\mathsf B,\qquad
U_{\widetilde G}=\mathsf B^\flat X_G\circ\mathsf B,\qquad
\boxed{Q_\lambda\widetilde G=G.}
$$

这是每个形式系数的实际 extension；不借助稠密性、柱函数逼近或 completion。kernel 是乘法和新 bracket 的 ideal，因而得到

$$
\boxed{
\frac{(\mathcal H_\beta(Y)[[\lambda]],\{\ ,\ \}_\lambda)}
{\ker Q_\lambda}
\ \cong\
(\mathcal H(X)[[\lambda]],\{\ ,\ \}_X).
}
$$

inverse 为 $G\mapsto[G\circ\mathsf B]$。由 $A_\lambda\mathsf B^\flat=1$，$\mathsf B^*$ 本身也是 Poisson map。有限 smooth functional calculus 按形式 Taylor rule 同样相容。

## 8. 真实耦合的开域与拓扑

必须同时保证 connected 解和所有选入的未匹配 regional 解存在。下面给出一个可实现的域，而不把“足够小”用作无域的断言。

固定 $z_*\in X$。先在控制 connected 自由能量的开邻域上按 §3 选定一个非零耦合区间。由于 $\mathsf R_\lambda$ 联合 smooth，且线性 map
$y\mapsto(C_{1,0}(y),C_{2,0}(y))$
到有限时间能量空间连续，在 $(0,z_*)$ 附近只需限制有限个 seminorm，就能找到开集 $U\ni z_*$、$W\ni0$（$W\subset\ker\mathsf B$）和 $\lambda_*>0$，使

$$
\sup_{|\lambda|<\lambda_*,\,z\in U,\,w\in W}
\sum_i\|C_{i,0}(\mathsf R_\lambda z+w)\|_{\mathcal E}<M.
$$

再次缩小 $\lambda_*$ 以满足区域 contraction 条件。这只涉及有限个低阶 norms；所有高阶 bootstrap 使用同一个区间。定义

$$
\begin{aligned}
Y_0&=\{\mathsf Rz+w:z\in U,\ w\in W\},\\
Y_\lambda&=\{\mathsf R_\lambda z+w:z\in U,\ w\in W\}.
\end{aligned}
$$

$\mathsf B\mathsf R=1$ 给连续分解 $Y=\mathsf RX\oplus\ker\mathsf B$，所以 $Y_0$ 开；$\Psi_\lambda$ 是定义于 $\mathsf B^{-1}U$ 的 smooth diffeomorphism，故 $Y_\lambda=\Psi_\lambda(Y_0)$ 开。其 inverse coordinates 是

$$
y\longmapsto\bigl(\mathsf By,\ y-\mathsf R_\lambda(\mathsf By)\bigr).
$$

所有这些区域解及 connected 解确实存在。matching locus 是 $w=0$，且
$\mathsf B(Y_\lambda)=U$。于是 §7 的实际版本为

$$
\boxed{
(\mathcal H_\beta(Y_\lambda),\{\ ,\ \}_\lambda)/\ker Q_\lambda
\ \cong\ \mathcal H(U),\qquad |\lambda|<\lambda_*.
}
$$

这是开域上的全类 exact onto，不声称 $\mathcal H(U)$ 的每个函数都延拓到整个 $X$。不需要全局 Hamiltonian flows 存在，也不要求任意 smooth observable 的 $\lambda$-Taylor series 收敛。

沿用 [S] 的 compact-open derivative graph topology：对 $(F,U_F)$、$(G,X_G)$ 的全部导数在 compact base/direction sets 上取 seminorm。固定 support 的 $Q_\lambda$ 连续：chain rule 只在 compact images 上评价 $F$ 的有限阶 jets，$A_\lambda$ 及其各阶导数关于 covector 线性，compact 背景上局部 equicontinuous。$\mathsf B^*$ 同样连续并落在固定 $K_\chi$ 层。故 kernel 闭，上一同构是 underlying locally convex spaces 的连续 split quotient。形式版本取各系数的 graph topology 的乘积，同样有连续 splitting。

这里没有新增完整 support inductive limit 的完备性、Poisson bracket 的联合连续性、completed tensor identity 或全类 cylinder density 定理。全类满射不依赖它们。

## 9. 独立 global algebra、物理 kernel 与局域性

现在才在 uncut interval 上独立给定相同的局域 action、物理 Dirichlet 条件、拼接后的 smooth $g_M$，定义 $K_{M,0}$、其 incoming $X_M$ 和 nonlinear solution map $\Phi_{M,\lambda}$。其 observable algebra 用同一个 smooth Hamiltonian-vector 判据定义；实际情况下为 $\mathcal H(U_M)$，$U_M=\operatorname{Ass}U$。形式情况下为 incoming chart 中的 $\mathcal H(X_M)[[\lambda]]$。

一维 $H^1/H^2$ patching 给自由算子的 intertwining

$$
\operatorname{Ass}K_{\mathrm{sew},0}=K_{M,0}\operatorname{Ass},\qquad
\operatorname{Ass}G_0^\epsilon=G_{M,0}^\epsilon\operatorname{Ass}.
$$

逐 cell 的局域乘法满足
$\operatorname{Ass}(g\phi^3)=g_M(\operatorname{Ass}\phi)^3$。
因此 Volterra 递归逐阶 intertwine；实际解由唯一性给

$$
\operatorname{Ass}\Phi_\lambda(z)
=\Phi_{M,\lambda}(\operatorname{Ass}z).
$$

早期 CPS 积分逐 cell 相加，$\operatorname{Ass}$ 辛；§1 的线性化 flux identity 将此结论传播到整个 slab。由此得到独立 global 侧的全类同构

$$
\boxed{
\mathcal H_\beta(Y_\lambda)/\ker Q_\lambda
\cong\mathcal H(U)
\cong\mathcal H(\operatorname{Sol}_{M,\lambda}^{U_M}),
}
$$

以及对应的全阶形式版本。最右侧是独立 solution space 上、通过其实际 incoming chart 满足 smooth-Hamiltonian 判据的函数。没有用 global restriction image 来定义区域代数。

**物理 bracket 确实改变。** 令
$M_\lambda=1-G_\lambda^R\mathcal V_\lambda$、
$M_\lambda^*=1-\mathcal V_\lambda G_\lambda^A$，
则 resolvent identities 给

$$
\boxed{
M_\lambda E_0M_\lambda^*=G_\lambda^A-G_\lambda^R=:E_\lambda.
}
$$

一种直接验证是将等式左右乘以
$1+G_0^R\mathcal V_\lambda$ 和 $1+\mathcal V_\lambda G_0^A$；
两边都化为 $G_0^A-G_0^R$。对场涂抹
$F_a(z)=\langle a,\Phi_\lambda(z)\rangle$，由完整梯度和辛配对得到

$$
\{F_a,F_b\}_X=\langle a,E_\lambda b\rangle.
$$

例如

$$
E_\lambda
=E_0+\lambda\left[
G_0^R\frac{g\psi_z^2}{2}G_0^R
-G_0^A\frac{g\psi_z^2}{2}G_0^A
\right]+O(\lambda^2).
$$

所以 incoming algebra 的抽象辛坐标未变，不等于 interacting field algebra 的物理实现未变。旧线性 smearings 的 $\ker E_0$ 也不能继续充当 nonlinear on-shell relations。

**局域生成类。** 两侧采用同一、预先指定的 smooth bulk/finite-jet density 类，按共同方向匹配整个 integrand 的 jets，作有限代数运算、smooth functional calculus 和 Poisson operations。§4.2 给区域 membership；§5 的场/jet matching 与逐 cell 积分给生成元的双向对应。因而商后 local cores 与独立 global cores exact 对应；实际理论在上述 graph topology 下取闭包时，homeomorphism 也对应它们的闭包。$L_\lambda$ 的 principal part 不变，能量的局域版本给有限传播，故 causally disjoint generators 的括号为零；Leibniz、Jacobi 和分别连续性延至这些 cores 和闭包。

这里仍不证明每个严格局域 prequotient family 都有保持原时空支撑的 section；$\mathsf B^*$ 使用 $K_\chi$。也不把独立 history-line generators 自动加入 smooth-bulk net。

**有限次粘合。** 固定有限个 cells，使用同一个早期自由窗。对仍有 prescribed external histories 的 cluster，采用同一 normalized lift、局域非线性方程和 full-density 类；§4 的证明逐端点适用，内部 trace 用 §4.1。partial cut 保留 external histories，反向提取先减去 cluster lift，再用早期 $-E_{\mathrm{cl}}A_\chi$。非线性 correction 的内部 histories 仍被这个提取消去，因此 partial cut 有相同的左逆和完整 transpose。§7 的运输论证将基空间 pairing 换成 cluster 的 $\beta$、基 Poisson operator 换成其 fixed-external-history operator，逐函数给 partial onto。

有限次 cut 的 maps 复合、transposes 逆序复合、sections 逆序复合。不同次序的最终匹配场满足同一局域方程、同一 transmission 和同一早期数据，唯一性给相同物理 restriction；所以最终 quotient 的 algebra isomorphisms 相容并满足有限结合性。实际域取有限多个相关存在域的共同缩小。未匹配数据上的 extensions 不要求逐点相同，也没有无限切分的一致估计。

## 10. 对称性与能量

同步 $\phi_i\mapsto-\phi_i$ 保持整个 off-shell action、history 条件和 flux matching。由区域及 connected 方程的唯一性，
$C_{i,\lambda}(-z_i,-q)=-C_{i,\lambda}(z_i,q)$、
$\Phi_\lambda(-z)=-\Phi_\lambda(z)$。
因此 cut 等变；$\mathsf B$ 线性，$\Psi_\lambda$ 与同步变号交换，所构造的 off-matching bracket 和物理 quotient 均保持该 Poisson action。

当几何、$g_i$ 和辅助 cutoffs 同时反射对称时，交换两个 cells 的空间反射有同样证明。一般 action-preserving、time-orientation-preserving 的变换还须满足 [S] 的 density-transpose、support 和 cut-equivariance 条件；在这些明确条件下 chain rule 给 quotient 的 Poisson equivariance。仅在 matching locus 等变不保证任意自然 off-matching extension 保持本文选定的 $\mathsf P_\lambda$。

固定非恒定 $g(t,x)$ 时，时间平移一般不保持 action。直接用方程算得

$$
\begin{aligned}
H_{i,\lambda}(t)
&=\int_0^{\ell_i}
\left[\frac{\dot\phi_i^2+\phi_i'^2+m^2\phi_i^2}{2}
+\frac{\lambda g_i}{24}\phi_i^4\right]dy_i,\\
\frac{dH_{i,\lambda}}{dt}
&=-\Pi_i\dot q_i
+\frac{\lambda}{24}\int_0^{\ell_i}\dot g_i\,\phi_i^4\,dy_i,\\
\frac{d(H_{1,\lambda}+H_{2,\lambda})}{dt}
&=\frac{\lambda}{24}\sum_i\int_0^{\ell_i}\dot g_i\,\phi_i^4\,dy_i
\quad\text{on matching solutions}.
\end{aligned}
$$

内部 boundary work 相消，开关做功保留。连同 $g,I,\chi$ 一起平移是模型间 covariance；非零 compact-time switch 不能由完整连续时间平移群保持。本文使用的是 smeared energy 的 regional-family membership，没有将任意时刻的 history evaluation 宣称为 family 元素。

自由 solution shift $\phi\mapsto\phi+b$，$L_0b=0$，一般也不是 interacting 物理 symmetry，因为方程多出

$$
\frac{\lambda g}{6}(3\phi^2b+3\phi b^2+b^3).
$$

另一方面，incoming $X$ 上任意实际 smooth symplectomorphism $s$ 仍给 $\mathcal H(X)$ 的固定 Poisson automorphism。在适当开域中可显式延拓为

$$
\widetilde s_\lambda(y)
=\mathsf R_\lambda(s(\mathsf By))
+y-\mathsf R_\lambda(\mathsf By).
$$

在坐标 $(z,w)$ 中就是 $(s(z),w)$，所以保持所选 Poisson structure；其 transpose 由 §6 和 $Ds^\flat=Ds^{-1}$ 逆序复合，支撑有限扩大。这只证明 canonical automorphism，不证明局域 action symmetry 或 local-net preservation。

固定 pullback、逐 observable 的 smooth orbit、整个群与代数的联合作用继续分开。有限维群的联合结论需 [S, §7.1] 的统一 compact-support 与参数正则性条件；无限维 incoming translations 的联合连续性反例仍通过本节的 split quotient 保留。

## 11. 证明范围与核验

**Verified:** 本文的解析证明给出了 switched $\phi^4$ 的全阶形式递归、有限时间的小耦合实际开域、完整 regional/local-density 与 cut transposes、严格左逆、全函数类 Poisson closure 与 exact onto、独立 global 比较、指定商后局域生成类和有限次物理粘合的相容性。主定理使用的自由 maps 在 §2、§4 和 §6 写出；其详细线性 Sobolev estimates 也见 [N, §§23–24]。

**Assumptions:** 实 scalar，$1+1$ 维有限 cells，$m>0$，物理外端 Dirichlet，势相互作用无导数，$g_i$ 外端附近为零、人工 cut 全 jets 匹配、时间支撑在固定 $J\Subset I^\circ$，$K_\chi$ 早于 $J$；数据为 smooth 且满足早期相容性。实际版本使用 §8 的开域和非零小耦合区间；形式版本逐系数解释。

**Not verified:** 任意大数据在固定真实耦合下的存在、去掉早期自由窗后的同一个 section、任意导数相互作用、高维/粗糙 history、严格局域 prequotient onto、无限切分、任意 smooth observable 的微扰级数收敛，以及量子乘积、重整化或表示理论。本笔记的 all-order 指经典形式微扰，不包含 loop/quantum theorem。

**Checked symbolically (2026-09-06):** fresh-kernel Mathematica 的 13 个命名 residual groups 全通过：action/边界变分、能量、$\phi^4$ 线性化、前四个 correction 的三次卷积、非线性 shear inverse、variable-Poisson Jacobi、包含 $D\mathsf P$ 的完整梯度、release Poisson、$n=2,\ldots,9$ 的两个阶乘系数组、有序 Møller/Green identity、resolvent derivative 和一阶 kernel 符号。另用静态 Dirichlet Green kernel 分别复核左右端 outward-normal transpose 的负号，两个 residual 都为零。fresh xAct kernel 加载 xTensor/xPert/xTras，以 ToCanonical、ContractMetric、FullSimplification 检查任意变量乘法势的 covariant symplectic-current residual，结果为零，没有 package/setup messages。共 16 个命名检查组；这些有限检查不证明上面的 PDE、支撑或无限维 onto。

Møller maps 与经典非线性 observable calculus 的背景可参见 [Brunetti–Fredenhagen–Ribeiro, Algebraic Structure of Classical Field Theory](https://arxiv.org/abs/1209.2148)；本文的 timelike-boundary estimates 和 section 不由该文的无此接口设置的结论代替。

### 可复算的有限检查

下面是本轮实际执行的 Mathematica 输入。15 个 association entries 均返回 True；最后一行的固定点诊断返回 {-2,0,0,0}，显示省去 operator derivative 会漏掉非零项。矩阵仅作符号核验，未用来离散或证明边界 PDE。

~~~wolfram
(* Fresh Mathematica kernel; exact residuals, not a PDE discretization. *)
phi=f[t,x]; h=a[t,x];
lag=(D[phi,t]^2-D[phi,x]^2-m^2 phi^2)/2-lambda g[t,x]phi^4/24;
var=D[lag/.f->Function[{tt,xx},f[tt,xx]+eps a[tt,xx]],eps]/.eps->0;
eom=D[phi,{t,2}]-D[phi,{x,2}]+m^2 phi+lambda g[t,x]phi^3/6;
density=(D[phi,t]^2+D[phi,x]^2+m^2 phi^2)/2+lambda g[t,x]phi^4/24;
cs=Sum[c[j]lambda^j,{j,0,4}];
expected={c[0]^3,3c[0]^2c[1],3c[0]^2c[2]+3c[0]c[1]^2,
  3c[0]^2c[3]+6c[0]c[1]c[2]+c[1]^3};

vars={q,p,r,s};
pi0={{0,1,0,0},{-1,0,0,0},{0,0,0,0},{0,0,0,0}};
delta={lambda q^2 p,lambda q p^2+lambda^2 q^3};
psi={q,p,r+delta[[1]],s+delta[[2]]};
dpi=D[psi,{vars}];
pi=Simplify[dpi.pi0.Transpose[dpi]];
ff=q r+Sin[p]s; gg=p s+q^2r;
df=D[ff,{vars}]; dg=D[gg,{vars}];
pb=df.pi.dg;
extra=Table[df.D[pi,vars[[i]]].dg,{i,4}];
releasedF=ff/.{r->delta[[1]],s->delta[[2]]};
releasedG=gg/.{r->delta[[1]],s->delta[[2]]};
jacobi=Flatten[Table[Sum[
  pi[[i,l]]D[pi[[j,k]],vars[[l]]]+
  pi[[j,l]]D[pi[[k,i]],vars[[l]]]+
  pi[[k,l]]D[pi[[i,j]],vars[[l]]],{l,4}],
  {i,4},{j,4},{k,4}]];

rr={{1,2,0},{0,1,3},{0,0,2}};
aa=Transpose[rr]; vv=lambda DiagonalMatrix[{2,3,5}];
id=IdentityMatrix[3];
gr=Inverse[id+rr.vv].rr; ga=Inverse[id+aa.vv].aa;
mr=id-gr.vv; ma=id-vv.ga;
leftBranch=Sinh[mu x]Sinh[mu(ell-y)]/(mu Sinh[mu ell]);
rightBranch=Sinh[mu y]Sinh[mu(ell-x)]/(mu Sinh[mu ell]);

checks=<|
  "EulerLagrangeBoundaryIdentity"->
    Expand[var+eom h-D[D[phi,t]h,t]+D[D[phi,x]h,x]],
  "EnergyBalance"->
    Expand[D[density,t]-D[D[phi,t]D[phi,x],x]-
      lambda D[g[t,x],t]phi^4/24-D[phi,t]eom],
  "Phi4Linearization"->
    Expand[(D[lambda g0(p+eps u)^3/6,eps]/.eps->0)-lambda g0 p^2 u/2],
  "VolterraCoefficientsThroughFourthCorrection"->
    Table[Expand[Coefficient[cs^3,lambda,j]-expected[[j+1]]],{j,0,3}],
  "NonlinearShearInverse"->
    Expand[(psi/.{r->r-delta[[1]],s->s-delta[[2]]})-vars],
  "VariablePoissonJacobi"->jacobi,
  "FullGradientWithDP"->
    D[pb,{vars}]-D[ff,{vars,2}].pi.dg+D[gg,{vars,2}].pi.df-extra,
  "ReleasePoisson"->
    (pb/.{r->delta[[1]],s->delta[[2]]})-
    (D[releasedF,q]D[releasedG,p]-D[releasedF,p]D[releasedG,q]),
  "PhinEulerCoefficients2to9"->
    Table[D[lambda g0 p^n/n!,p]-lambda g0 p^(n-1)/(n-1)!,{n,2,9}],
  "PhinLinearization2to9"->
    Table[D[lambda g0 p^(n-1)/(n-1)!,p]-
      lambda g0 p^(n-2)/(n-2)!,{n,2,9}],
  "OrderedMollerGreen"->mr.(aa-rr).ma-(ga-gr),
  "ResolventDerivative"->D[gr,lambda]+gr.D[vv,lambda].gr,
  "FirstBornSign"->(D[ga-gr,lambda]/.lambda->0)-
    (rr.D[vv,lambda].rr-aa.D[vv,lambda].aa),
  "RightOutwardNormalTransposeSign"->
    (D[leftBranch,y]/.y->ell)+Sinh[mu x]/Sinh[mu ell],
  "LeftOutwardNormalTransposeSign"->
    (-D[rightBranch,y]/.y->0)+Sinh[mu(ell-x)]/Sinh[mu ell]
|>;
passed=Map[AllTrue[Flatten[{#}],TrueQ[Simplify[#]==0]&]&,checks];
Print[passed];
Print["omittedDPexample=",Simplify[extra/.{lambda->1,q->1,p->0,r->1,s->0}]];
~~~

xAct 的独立检查使用下面的 setup 与 residual，profile 为 core，额外加载 xTras，pipeline 为 full；最终 canonical residual 和 full residual 均为 0。

~~~wolfram
(* Independent fresh xAct kernel: profile core; extra package xTras.
   Use this setup and residual with pipeline full. *)
DefManifold[M,2,{a,b,c,d}];
DefMetric[-1,metric[-a,-b],CD];
DefTensor[h[],M]; DefTensor[k[],M]; DefTensor[v[],M];
DefConstantSymbol[mass];
residual=
  CD[-a][h[] CD[a][k[]]-k[] CD[a][h[]]]
  +h[](-CD[-a][CD[a][k[]]]+(mass^2+v[])k[])
  -k[](-CD[-a][CD[a][h[]]]+(mass^2+v[])h[]);
~~~
