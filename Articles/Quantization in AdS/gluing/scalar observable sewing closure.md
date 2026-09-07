# Scalar observable sewing on smooth quotients

本文固定有限静态 interval/rectangular cells、$m>0$、普通实标量、无真实 cut action，以及光滑的整体 interval、flat torus 或 Klein bottle。时间窗有限；非线性取固定整数 $n\ge3$ 的 switched $\phi^n$，实际解限于明示的局部小耦合域，量子理论逐阶形式解释。本文不处理锥点、强耦合、无限细分或态／表示拼接。

新增的经典结果采用 **时间光滑、空间联合 trace 对偶** 的区域函数类。它不是旧逐面空间光滑 density 类的无条件延拓；新旧类及其作用域在 §8 分开。量子结果采用区域 collar/test labels 的呈现及其关系，不量子化整个经典函数类。以下先由区域输入构造所有 maps，再与独立 uncut action 的目标比较。

## 1. 区域输入与时间平滑

对一个矩形 $R$，令 $H=L^2(R)$、$V=H^1(R)$、$V_0=H_0^1(R)$，$K_D=-\Delta_D+m^2$。有真实 Dirichlet 外端时先在 $V$ 中施加它们，以下 trace 只保留人工端口。使用区域 Hilbert trace space
$$
\mathcal B=\gamma V,\qquad
\|q\|_{\mathcal B}=\inf_{\gamma u=q}\|u\|_{H^1},\qquad
\mathcal B'=\text{continuous real dual of }\mathcal B.
$$
全矩形的 $\mathcal B=H^{1/2}(\partial R)$；它不是四条边的独立直积。取区域 harmonic lift $\mathcal E:\mathcal B\to V$，$\gamma\mathcal E=1$、$\Delta\mathcal E=0$，由有界 trace extension 与 $V_0$ 上的 Dirichlet 变分问题构造。联合 trace 范数及其对偶的标准输入见 [Schöberl, §§97–98.2](https://jschoeberl.github.io/iFEM/domaindecomposition/traces.html)；本节以下的时间平滑与 sewing 是另行的证明。

令 $I=[t_-,t_+]$。$C^\infty(I;\mathcal B)$ 指所有时间导数连续到端点的 Fréchet 空间；使用一个固定的连续线性时间延拓及外部 cutoff 进入 $C_c^\infty(\mathbb R;\mathcal B)$。所有物理 maps 只依赖 $I$ 内的值。记
$$
L_D=\partial_t^2+K_D,\qquad E_D=G_D^A-G_D^R,
\quad C_\chi=[\partial_t^2,\chi]=\chi''+2\chi'\partial_t,
$$
其中 $\chi$ 从 $0$ 变到 $1$，$K_\chi=\operatorname{hull}(\operatorname{supp}\chi')\Subset I^\circ$。约定 $\Omega((u,p),(v,r))=(p,v)-(r,u)$、$\iota_{X_F}\Omega=-dF$。作用量 Hessian 是 $-L_D$，故这个 $E_D$ 与 Hessian convention 的 $G^R-G^A$ 一致。

**引理 1（紧时间支撑的平滑）。** 若 $K\ge m^2>0$ 是上述闭型给出的 Dirichlet 或 sewn operator，$H_r=D(K^{r/2})$ 及其负阶对偶构成 Hilbert scale，则
$$
E_K:C_c^\infty(I^\circ;H_{-r})\longrightarrow
X_K^\infty:=\bigcap_{s\ge0}(H_{s+1}\oplus H_s)
$$
连续，支撑固定时每个输出 seminorm 只需要有限个时间导数 seminorm。这里将齐次解与其任意固定时刻的 Cauchy 数据识别。

**证明。** $K$ 的每个谱分量上 $E_K(t,s)=-\sin((t-s)\sqrt K)/\sqrt K$。对紧支撑源作任意多次时间分部积分，把 $\sqrt K$ 的正幂移到时间导数；没有时间端点项。具体地，选整数 $N\ge s+r+2$，谱演算与 Minkowski 不等式给
$$
\|\operatorname{Cau}E_Ka\|_{H_{s+1}\oplus H_s}
\le C_{s,r,m}\sum_{j\le N}\|\partial_t^ja\|_{L^1(I;H_{-r})}.
$$
先对有限谱投影证明，再由右端有界及尾项收敛取极限。任意 $s$ 都成立，且没有依赖截断阶数的常数。$\square$

特别地，$\gamma:V_{\mathrm{sew}}\to\prod_i\mathcal B_i$ 连续，所以
$\gamma^*a\in H_{-1,\mathrm{sew}}$，$a\in C_K^\infty(\prod_i\mathcal B_i')$；引理给 $E_{\mathrm{sew}}\gamma^*a\in X_{\mathrm{sew}}^\infty$。不需要把边界协向量解释成逐面光滑函数，也不需要 Cauchy momentum 的点态 trace。

## 2. 实际 regional chart 与 regular transpose

使用区域数据定义
$$
H_D^Rq=\mathcal E q-G_D^R\mathcal E(\ddot q+m^2q),\qquad
P_D=-E_DC_\chi,\qquad S_D=(1-P_D)H_D^R,
$$
$$
Y_i=X_{i,D}^\infty\oplus\mathcal Q_i,
\quad \mathcal Q_i=C^\infty(I;\mathcal B_i),
\qquad C_i(z_i,q_i)=\psi_{z_i}+S_iq_i.
$$
时间延拓在 $H_D^R$ 中隐含；下面的归一化消去它在 $I$ 外的影响。

**引理 2（chart）。** $C_i:Y_i\to C^\infty(I;H^1(R_i))$ 连续线性，解区域自由方程；$\gamma C_i=q_i$、$P_DC_i=\psi_{z_i}$。它恰好参数化时间光滑的区域能量解。

**证明。** Harmonic lift 有界。$C_c^\infty(\mathbb R;L^2)$ 强迫的 retarded Dirichlet 解由能量估计属于 $C^\infty(\mathbb R;H_0^1)$；每次时间微分都可作用于零过去的源。引理 1 给 $P_DH_D^Rq$ 的全部谱正则性。对齐次 Dirichlet 解，cutoff Green identity 给 $-E_DC_\chi=1$，所以 $P_D^2=P_D$、$P_DS_D=0$。

任意时间光滑区域能量解 $\phi$ 减去 $H_D^R\gamma\phi$ 后，是 $I$ 上的齐次 Dirichlet 解；时间正则性与方程递推使其 Cauchy 数据属于 $X_D^\infty$。于是 $\phi=C_i(P_D\phi,\gamma\phi)$。改变外部时间延拓只增加 $I$ 上的齐次 Dirichlet 解，被 $1-P_D$ 消去。$\square$

此 chart 的拓扑是显示的乘积拓扑，不是任意能量解空间的隐含拓扑；不声称区域场在每个空间角点普通光滑。固定 $q_i$ 的 variations 是 $X_{i,D}^\infty$。

**引理 3（lift transpose 的紧支撑公式）。** 对 $f\in C_K^\infty(I^\circ;H)$，置
$$
\widetilde f=f+C_\chi E_Df,\qquad
w=G_D^A\widetilde f.
$$
则
$$
\boxed{S_D^\dagger f
=\mathcal E^*\widetilde f-(\partial_t^2+m^2)\mathcal E^*w
\in C_{\operatorname{hull}(K\cup K_\chi)}^\infty(I^\circ;\mathcal B').}
$$
这里 $\mathcal E^*:H\to\mathcal B'$，所有导数在所列 Banach 空间中解释。

**证明。** $C_\chi^*=-C_\chi$、$E_D^*=-E_D$，故 $(1-P_D)^*f=\widetilde f$。由 $E_DC_\chi E_D=-E_D$ 得 $E_D\widetilde f=0$，所以 $G_D^A\widetilde f=G_D^R\widetilde f$。Advanced 与 retarded 支撑相交使 $w$ 在所列时间 hull 外为零。能量估计及对源的时间微分给 $w\in C_c^\infty(H_0^1)$。把 $H_D^R$ 的公式转置，并对 $q$ 的时间导数分部积分，得到显示式；所有时间端点项为零。每一步有界，故是实际连续 regular transpose。$\square$

这也是使用 $\mathcal B'$ 的原因：弱法向响应天然在该空间取值。引理没有证明该协向量有在所有角点光滑的逐面 density。

多区域的独立数据为 $Y_{\mathrm{ind}}=\bigoplus_iY_i$。自粘合只取一份 $Y_i$，配对的是其 boundary occurrences。定义
$$
Z_K=\bigoplus_iX_{i,D}^\infty\oplus
C_K^\infty(I^\circ;\textstyle\bigoplus_i\mathcal B_i'),
\quad
\beta((v,a),(z,q))=-\sum_i\Omega_i(v_i,z_i)+\int a[q]dt,
$$
$$
\mathcal H_{\beta}^{\mathrm{tr}}(Y)=
\bigcup_{K\Subset I^\circ}
\{F\in C_B^\infty(Y,\mathbb C):dF=\beta(U_F,\cdot),\
U_F\in C_B^\infty(Y,Z_K)\}.
$$
复函数使用 complexified gradients。$K$ 对每个 $F$ 的全部背景导数固定。$\beta$ 在协向量端分离点。旧的光滑时间／空间 densities 在其连续作用于 $\mathcal B$ 时给这里的协向量，但两份函数代数定义域不同，不能据此断言整个旧代数是新代数的子代数。

原 prescribed-history Poisson operator 是 $P_0(v,a)=(v,0)$。Hessian symmetry 给
$U_{FG}=FU_G+GU_F$ 和
$U_{\{F,G\}_{P_0}}=DU_F[P_0U_G]-DU_G[P_0U_F]$；支撑取有限并，所以全类闭合，并对有限 smooth functional calculus 闭合。

## 3. 从独立区域 families 得到 exact classical quotient

从区域二次型及全部配边关系构造 $K_s$、$E_s$、$X_s^\infty$，步骤与 [rectangle §§5–5.2](<models/rectangle scalar self-gluing.md>) 相同。这里只用区域 trace matching；独立整体算子稍后才引入。记 $r_i$ 为场的逐 cell 限制、$e_i$ 为 $L^2$ 源的零延拓，定义
$$
T_i=-E_iC_\chi r_i,\qquad
Rz=(T_iz,\gamma_i\phi_z)_i,\qquad
By=-E_sC_\chi(C_i(y_i))_i.
$$
$B$ 的输入是一个 duplicated $L^2$ 场，不要求尚未匹配的 $q_i$ 已能下降为 $H^1$ 场。引理 1–2 使 $R,B$ 连续。定义
$$
T_i^\sharp=-E_se_iC_\chi,\qquad
R^\flat(v,a)=\sum_iT_i^\sharp v_i+E_s\gamma^*a,
$$
$$
B^\flat z=\left(T_iz,\ S_i^\dagger(-r_iC_\chi\phi_z)\right)_i.
$$
引理 1 和 3 使这些 maps 分别在每个 $Z_K$ 上连续，并使 $B^\flat$ 的 history 输出支撑于 $K_\chi$。

**定理 1（free full-family sewing）。** 有实际 identities
$$
\beta(U,Rz)=-\Omega_s(R^\flat U,z),\quad
-\Omega_s(z,By)=\beta(B^\flat z,y),\quad
BR=1,\quad R^\flat B^\flat=1.
$$
令 $P_s=RR^\flat$，则
$$
\boxed{
\frac{(\mathcal H_{\beta}^{\mathrm{tr}}(Y_{\mathrm{ind}}),\
\{F,G\}_s=\beta(U_F,P_sU_G))}{\ker R^*}
\cong\mathcal H(X_s^\infty).}
$$
其中 $\mathcal H(X)$ 按 smooth tangent Hamiltonian field 定义。

**证明。** 前两式由反对称 $E,C_\chi$ 与引理 3 的实际转置给出。$C_i(Rz)=r_i\phi_z$，故 $BRz=-E_sC_\chi\phi_z=z$；转置和弱非退化性给第四式。$P_s$ 是常连续 $\beta$-skew map；Hessian symmetry 与循环抵消给全类 Poisson closure 和 Jacobi。Chain rule 给
$$
X_{R^*F}=R^\flat U_F\circ R,\qquad
R^*\{F,G\}_s=\{R^*F,R^*G\}_{X_s}.
$$
对每个 $G\in\mathcal H(X_s^\infty)$，取
$$
\widetilde G=G\circ B,\qquad
U_{\widetilde G}=B^\flat X_G\circ B\in C_B^\infty(Y,Z_{K_\chi}),\qquad
R^*\widetilde G=G.
$$
所以满射逐函数成立。Kernel 恰为在 $R(X_s^\infty)$ 上消失的函数；Poisson 性使其成为新括号的 ideal。没有以 dense range 或有限 cylinder observables 代替全类满射。$\square$

**为何 matching locus 正好是 $R(X_s^\infty)$。** 区域 histories 和 fields 时间光滑。共同 trace 与完整弱 response release 等价于 sewn form wave equation，证明沿用 rectangle §5.2 的 test 分解和完整端点补偿。Sewn 解此时在时间上任意阶取值于 form domain；反复用 $\partial_t^2\phi=-K_s\phi$ 得其初值在每个 $K_s$ graph domain 中。于是它属于 $X_s^\infty$，引理 2 给唯一的区域坐标。反向由 restriction 成立。

若选择 common-history 中间源，$\mathcal B_{\mathrm{com}}\subset\bigoplus_i\mathcal B_i$ 是闭 Hilbert 子空间。取其正交投影 $P_\Gamma$，则
$F(z,q)\mapsto F(z,P_\Gamma q)$ 是 common-to-independent 的实际 extension；其转置为 $P_\Gamma'$，保持时间光滑和固定支撑。投影只作用于完整联合 trace，不逐边删去角点条件。因此上述定理既可从 independent source 直接得到，也可经 common source，两个 source 的 kernel 分别声明。

最后，独立从 uncut action 构造 $K_M,X_M^\infty$。一维 interval patching 或 smooth torus/Klein 的 $H^1$ form patching 给 $AK_s=K_MA$、$A^*\Omega_M=\Omega_s$，且 $A^{\pm1}$ 保持全部 graph domains。因此
$$
\mathcal H(X_s^\infty)\xrightarrow{G\mapsto G\circ A^{-1}}
\mathcal H(X_M^\infty)
$$
是满的 Poisson $*$-isomorphism。在 $(F,U_F)$ 的 compact-open derivative graph topology 上，$R^*,B^*$ 连续，给 continuous split quotient；这里只使用乘法和括号的实际连续性等级，不额外声称 Poisson 括号联合连续。

## 4. Switched nonlinear extension

取 $d=1$ 或 $2$，每个固定整数 $n\ge3$，
$$
S_\lambda=S_0-\frac{\lambda}{n!}\sum_i\int g_i\phi_i^n,\qquad
L_0\phi_i+\frac{\lambda g_i}{(n-1)!}\phi_i^{n-1}=0.
$$
$g_i$ 实、空间普通光滑、按接口匹配全部 jets，在真实物理边界附近为零，时间支撑为 $J\Subset I^\circ$，且 $\sup K_\chi<\inf J$。二维闭整体使用光滑 torus/Klein。所有参数固定；不要求关于 $n$ 或无限细分的一致常数。

**局部实际解。** 在有界 Lipschitz 二维区域，$H^1\hookrightarrow L^p$ 对每个有限 $p$ 连续。固定 $n$ 后，多项式映射 $u\mapsto u^{n-1}$ 从 $H^1$ 到 $L^2$ 光滑，且
$$
\|u^{n-1}-v^{n-1}\|_2
\le C_n(\|u\|_{H^1}+\|v\|_{H^1})^{n-2}\|u-v\|_{H^1}.
$$
Retarded energy estimate 使
$C_\lambda=C_0-\lambda G_D^R(gC_\lambda^{n-1})/(n-1)!$
在输入低阶范数 $\|C_0\|_{C H^1}<M$、$|\lambda|C_{I,n,g}(2M)^{n-2}<1/2$ 的适当球上为 contraction。$C_{I,n,g}$ 取足以同时保证 self-map 与 Lipschitz bound 的常数。对时间求导，最高阶未知量的线性项是实乘法势
$$
\mathcal V_\lambda=\frac{\lambda g}{(n-2)!}\Phi_\lambda^{n-2}.
$$
乘法 $\mathcal V_\lambda:H^1\to L^2$ 有界；其余源是低阶时间导数的有限乘积。由于早期自由窗提供全部相容初值，线性能量估计、Gronwall 和差商归纳给 $C^\infty_tH^1$ 解及其所有 Bastiani 参数导数。这里不需要在每个高阶范数上重新作 contraction。

在光滑闭整体上，所有时间导数均为 $H^1$；由方程和 $H^1\hookrightarrow L^p$ 先得到空间 $H^2$，再用二维 $H^2$ 的乘法性与椭圆正则性逐阶得到全部空间正则性。区域角点处仍只声明时间光滑能量域。

形式版本逐 $\lambda$ 阶用区域 retarded map 解有限多项式源，唯一且每阶存在；不由此宣称形式级数收敛。

从区域 closed form 构造自由 $X_s^\infty$ 及 nonlinear matched 解 $\Phi_\lambda(z)$，定义
$$
R_\lambda z=(T_i z,\gamma_i\Phi_\lambda(z))_i.
$$
非线性修正及其 history 在 $K_\chi$ 以前为零，故
$$
\boxed{BR_\lambda=1.}
$$
对匹配解的线性化方程使用 $G_\lambda^{R/A}$。边界对偶源 $\gamma^*a\in H_{-1}$ 的 advanced 解属于 $C_t^\infty H^1$：自由时用 $K_s^{-1}\gamma^*a$ 的能量 lift，再对时间微分；变量势项属于 $C_J^\infty L^2$，由能量估计迭代。于是
$$
A_\lambda(z)(v,a)
=\sum_iT_i^\sharp v_i+
E_s\bigl(\gamma^*a-\mathcal V_\lambda G_\lambda^A\gamma^*a\bigr)
$$
是 $DR_\lambda(z)$ 的实际 regular transpose。引理 1 处理两个源，参数微分由
$DG_\lambda^\epsilon[h]=-G_\lambda^\epsilon D\mathcal V_\lambda[h]G_\lambda^\epsilon$
归纳；每项仍有固定时间支撑、有限 $H^1\to L^2$ 乘法和能量估计。

**定理 2（nonlinear full-family sewing）。** 在上述实际开域，或逐形式系数上，令
$$
P_\lambda(y)=DR_\lambda(By)A_\lambda(By).
$$
则新括号及 exact quotient 与定理 1 同型，目标是独立整体 nonlinear 解空间上的完整 smooth-Hamiltonian 类，使用 incoming Cauchy chart。

**证明。** $BR_\lambda=1$ 使 $y\leftrightarrow(x,w)=(By,y-R_\lambda(By))$ 成为实际乘积 chart，$Bw=0$。每个 $w$-leaf 上放置 incoming $\Omega_s$，得到 $P_\lambda$ 和 Jacobi。允许函数类的闭合不能只由该形式论证代替；其完整梯度是
$$
\begin{split}
U_{\{F,G\}_\lambda}={}&DU_F[P_\lambda U_G]-DU_G[P_\lambda U_F]\\
&+B^\flat\left(DA_\lambda[A_\lambda U_G]U_F
-DA_\lambda[A_\lambda U_F]U_G\right),
\qquad x=By.
\end{split}
$$
上段 regular-transpose estimates 保证每项实际存在；最后一项的 history 支撑在 $K_\chi$。$A_\lambda B^\flat=1$ 是 $BDR_\lambda=1$ 的转置，故 $G\mapsto G\circ B$ 仍是逐函数 section。反对称 Green identity 中实乘法势相消，给 incoming CPS 与 matched nonlinear CPS 的对应；区域能量唯一性、全 response release 及光滑整体正则性给独立整体比较。$\square$

实际源取 $Y_\lambda=\{R_\lambda z+w:z\in U,w\in W\subset\ker B\}$，并收小 $U,W$ 使区域低阶 contraction bound 同时成立。$B(Y_\lambda)=U$，这些域上的 section 和转置均使用上述同一个 $B$。不把全部任意大 inputs 塞进同一个小耦合域。

## 5. 区域 quantum labels、完整关系与自由量子商

量子输入必须另行指定。这里保留每个 cell 自身的 action、response、完整 collar 坐标及其时空测试密度／distribution labels。配对时识别 collar 的坐标和全部 field/test jets；这些几何数据先构造一个 smooth sewn atlas $\mathcal U_s$，包括经过旧边／旧顶点的 charts。未切分整体 $M$ 的 action 与 atlas 独立定义，比较放在最后。没有把两个反射边界的旧 commutators 保持为新 commutators。

**区域与共同数据的分工。**

| 输入 | 来源 |
|---|---|
| $K_{i,D}$、history space、response、collar 一侧坐标和 test density rule | 每个区域自身 |
| side pairing、完整 transition jets、时间方向、角点 link 与 smooth metric descent | 接口识别数据 |
| $K_s,G_s^{R/A},E_s$ | 区域闭型与 response release |
| $W_s=e^{-i\sqrt{K_s}(t-t')}/(2\sqrt{K_s})$ | 指定的共同静态 Wick-selection rule |
| 重整化 extension、contact/tree normalization 及 counterterm transformation | 明示的共同量子 prescription |

所以 source 保留可重新计算乘积的数据。它不是仅有每个孤立区域的抽象 algebra，也不要求某个未来选定的物理 state。

### 5.1 Off-shell chart labels 的 exact quotient

对 $\mathcal U_s$ 的每个有限 chart tuple $\boldsymbol a=(a_1,\ldots,a_k)$，取在其乘积内紧支撑的 distribution density $f_{\boldsymbol a}$，满足
$$
\operatorname{WF}(f_{\boldsymbol a})\cap
\bigl((\overline V_+^{\,k}\cup\overline V_-^{\,k})\setminus0\bigr)=\varnothing.
$$
时间方向由区域 metric/transition 给出。允许 mixed tuples：不同 field slots 可以位于不同 cells 或 collar charts。取所有这些空间的代数直和，加一个 degree-zero 标量；对 slots 的排列与对称化作标准识别，记 polynomial label space 为 $\mathscr L_{\mathrm{reg}}$。每个元素的 field degree 和 chart 分量数有限。

同一个紧支撑核在重叠 chart 中的两种坐标表示之差，以及一个核减去其有限 smooth partition 分解，生成线性关系空间 $N_{\mathrm{chart}}$。坐标变化只用 density 的正确 Jacobian；Klein 的反射不改变正体积密度的符号。所有零延拓都在 chart 内紧支撑，禁止乘 sharp cell characteristic functions。

**引理 4（label descent 与全部 kernel）。** $\mathscr L_{\mathrm{reg}}/N_{\mathrm{chart}}$ 恰为 sewn atlas 上的 compactly supported polynomial microcausal coefficient space $\mathcal P_s$。每个系数有实际分片逆像；$N_{\mathrm{chart}}$ 是完整 kernel。

**证明。** 在每个紧支撑附近选有限的 smooth subordinate partition $\{\rho_a\}$，对 $k$ 个 slots 使用 $\prod_{\nu=1}^k\rho_{a_\nu}(x_\nu)$。有限和为一；乘 smooth functions、chart diffeomorphisms 和 compactly supported zero extension 保持上述波前条件，给所需逆像。对两个分解同时乘两个 partitions，得到共同 refinement；逐重叠项相减就是 $N_{\mathrm{chart}}$ 的生成元。若下降后的核为零，对各分量作同一 refinement 后逐 chart 相消，因此没有更多 kernel。不同 degree 的系数由 polynomial polarization 分离。$\square$

这个 inverse 作用于每个紧支撑 coefficient stratum；不声称存在对任意分布作逐闭边 restriction 的连续算子。Collar charts 是 source 的组成部分；仅由各 isolated interior algebras 的有限乘积不能提供这份标签空间。

由区域 $K_s$ 构造 $W_s$，在 $\mathcal P_s[[\hbar]]$ 上定义
$$
F\star_sG=\sum_{r\ge0}\frac{\hbar^r}{r!}
\langle F^{(r)},W_s^{\otimes r}G^{(r)}\rangle.
$$
这里每个 polynomial coefficient 只有有限次收缩。波前条件、闭合、结合性及 involution 使用 [free quantum note §§2、4.1](<free scalar renormalized quantum observable algebra gluing.md>) 已建立的 interval／smooth torus／Klein kernel 输入。与一般非多项式 microcausal 类区分；[Hawkins–Rejzner–Visser, §§5.1.2、7](https://arxiv.org/html/2312.15203v3#S7) 给 equicausal 及 polynomial 类的收缩依据。

为给真正的区域代数呈现，取 $\mathscr L_{\mathrm{reg}}$ 的自由 unital tensor $*$-algebra，系数作 $\hbar$-adic completion。令 $j$ 为线性生成元映射，加入：

1. $j(N_{\mathrm{chart}})=0$、$j(c)=c1$；
2. 对任意两个 labels，加入 $j(F)j(G)-j(\operatorname{Rep}(F\star_sG))$，其中 $\operatorname{Rep}$ 是引理 4 的任意有限 chart 呈现，按 $\hbar$ 阶解释。

记生成的 $\hbar$-adically closed two-sided $*$-ideal 为 $J_{\mathrm{off}}$。它只用区域 kernels 和 chart maps。

**定理 3（free off-shell presentation）。**
$$
\mathscr T_{\mathrm{reg}}/J_{\mathrm{off}}
\cong(\mathcal P_s[[\hbar]],\star_s,*).
$$
每个 word 用第二类关系降到一个 polynomial label；第一类关系精确识别其 chart 表达。两种降阶次序的差由 Wick 结合性为零，而 coefficient 的唯一性由引理 4 和 off-shell polarization 给出。因此 $J_{\mathrm{off}}$ 是完整 kernel；它不是后来附加一个中央 mismatch 因子的 evaluation kernel。

### 5.2 On-shell kernel 的区域计算

令 $C_s:X_s^\infty\to C^\infty(I\times\Sigma_s)$ 为从区域闭型得到的 solution map。对下降后的 degree-$k$ 核定义连续对称多线性形式
$$
\kappa_k(f_k)[z_1,\ldots,z_k]
=\langle f_k,C_sz_1\otimes\cdots\otimes C_sz_k\rangle.
$$
这是区域可计算的 Cauchy-coefficient transform。对自由解空间上为零的 polynomial，缩放 $z\mapsto tz$ 分离 degree，再 polarization，得到
$$
F|_{\mathrm{Sol}_s}=0
\quad\Longleftrightarrow\quad
\kappa_k(f_k)=0\ \text{对所有 }k.
$$
常数项也计入 $k=0$。这给完整线性 kernel 判据，不假定理想由有限个 EOM generators 生成。也可用 $K_s$ 的完整 Cauchy eigenbasis 计算所有矩阵系数；有限 mode 检查不能取代所有 labels。

上述 kernel 是 $\star_s$-ideal：$W_s$ 为 bisolution；先用有限谱 bisolutions 收缩，所有方向均为真实解方向，故得到零，再用 free note 中 normal-distribution-topology 的有限谱收敛与 polynomial contraction continuity 取极限。这个步骤不使用 Feynman inverse。

令 $J_{\mathrm{on}}$ 在 $J_{\mathrm{off}}$ 上再加入所有满足显示 $\kappa$ 判据的 labels，得
$$
\boxed{\mathscr T_{\mathrm{reg}}/J_{\mathrm{on}}
\cong\mathfrak Q_s^{\mathrm{poly}}
\xrightarrow[\alpha_0]{\cong}\mathfrak Q_M^{\mathrm{poly}}.}
$$
最后一个目标从独立 uncut action、同一物理边界及 Wick rule 定义。Form assembly $A$ 给
$AK_s=K_MA$、$(A\otimes A)W_s=W_M$、$AC_s=C_MA_{\mathrm{Cau}}$，并双向对应全部 chart/test coefficients。逐 contraction 和 $\kappa$ 对应证明同构；满射由 finite partition representative 给出。Kernel 正是上述显式关系，不由全局限制像来定义区域对象。

自由 equicausal 层的独立同构保留 free note §2.1 的原结论；本节的有限-degree chart presentation **仅针对 polynomial 层**，不把 polynomial density 当作整个 equicausal algebra 的 presentation theorem。

## 6. Interacting source、kernel 判据与 prescription 变化

固定 §4 的 $V=-\lambda\int g\phi^n/n!$。Local insertion labels 是 sewn atlas 上 smooth compact spacetime smearings 的有限-jet polynomial densities；通过 collar/chart refinement 由区域 labels 表达，可以经过人工 seam 或原角点。真实物理边界之外紧支撑，不加入 delta-supported 真正边界 interaction。

使用 [interacting quantum note §§2、2.1](<phin renormalized quantum observable algebra gluing.md>) 的逐阶 coherent off-shell $T_R$，包括完整 reflected／quotient kernels、全部 lifted contact diagonals，以及保持 classical tree terms 的 normalization。Smooth torus/Klein 的 quotient-atlas extension 和 interval 内部 extension 已在那里证明；它们不需要本文新 classical trace-dual class 的 microlocal stability。

区域自由乘积由 §5 定义，进而计算
$$
S_R(V)=\sum_{r\ge0}\frac{(i/\hbar)^r}{r!}T_{R,r}(V^{\otimes r}),
\qquad
\mathcal R_V^q(F)=S_R(V)_{\star_s}^{-1}\star_sT_R(e^{iV/\hbar},F).
$$
与插入不连通的图消去后，每个 interaction vertex 至少需一条连接 contraction，故剩余 $\hbar$ 次数非负；固定 $\lambda$ 阶的图数、field degree 和微分阶有限。只有在计算完 $T_R$ 和 $\mathcal R_V^q$ 后才作自由 on-shell restriction。

定义区域 source 为 local insertion symbols $o_F$ 的自由 $*$-algebra，按 $(\lambda,\hbar)$ 完成，使每个有限双阶截断仅含有限 words。对一个 word 用以下固定程序归一化：

1. 对每个 $F$ 用区域 $G_s^{R/A},W_s,T_R$ 的图规则计算 $\mathcal R_V^q(F)$；
2. 以 §5 的 Wick relations 计算整个 ordered word 的 polynomial coefficients；
3. 对每个 $(\lambda^r\hbar^s)$ 系数、每个 field degree $k$ 应用 $\kappa_k$。

记所得数组为 $\mathcal N_{r,s,k}(w)$。它是对称 Cauchy distribution coefficient 的实际公式，不需要独立 global algebra 或未证明的 Møller inverse。

**定理 4（formal interacting presentation）。** 完整区域关系为
$$
J_V=\left\{w:\mathcal N_{r,s,k}(w)=0
\ \text{对所有 }r,s,k\right\}.
$$
此 closed two-sided $*$-ideal 的商与独立整体 insertion-generated algebra 同构：
$$
\boxed{\mathscr T_{\mathrm{reg},V}/J_V
\cong\mathfrak Q_{s,V}^{\mathrm{int}}
\cong\mathfrak Q_{M,V}^{\mathrm{int}}.}
$$
**证明。** §5 的 normal form、on-shell ideal 与逐 degree polarization 说明 word 为零当且仅当全部显示 coefficients 为零，故该判据给完整 kernel；乘积／involution 保持它。每个 global local label 通过 smooth partition 和 collar transport 有区域逆像，Møller map 对插入线性，故每个有限 word 及每个 formal jet 有逆像；固定 partition 逐系数给相容 lift。区域和 global $T_R$ 使用同一局域 extension/contact/tree rule，assembly intertwines每张图，再 intertwines Wick products。因此独立目标上既无额外 kernel，也不缺 image。$\square$

$J_V$ 是完整 coefficient 判据，不宣称有限生成、最小 presentation 或有限终止的零判定算法。比较一个任意 distribution coefficient 是否为零仍是解析任务；“逐阶图数有限”不消除它。这个结果也不证明整个旧 history-equicausal 类被 nonlinear substitution 保持。

**量子选择。** 若同一边界／传播问题的 $W'=W+d$，$d$ 为允许的 smooth symmetric bisolution difference，则
$$
\alpha_d=\exp\!\left(\frac{\hbar}{2}
\left\langle d,\frac{\delta^2}{\delta\phi^2}\right\rangle\right)
$$
在 polynomial 每阶为有限和，满足 $\alpha_d(F\star_WG)=\alpha_dF\star_{W'}\alpha_dG$。将 $d$ 逐 chart transport，同时变换关系，就给完整 kernel/image 的对应。反射与透明问题的差一般不满足这一假设。

对两个允许的 off-shell prescriptions，若其局域 finite renormalization 满足
$\widehat S(V)=S(Z(V))$，则直接微分得到
$$
\boxed{\widehat{\mathcal R}_V^q(F)
=\mathcal R_{Z(V)}^q(DZ(V)F).}
$$
这同时重标 interaction 和 insertion。若 $Z_s,Z_M$ 按相同的局域规则构造，$Z_M\alpha_{\mathrm{off}}=\alpha_{\mathrm{off}}Z_s$ 及其导数使 sewing 图交换。该 $Z$ 的存在条件与 standard local renormalization theorem 的输入应保留；[Brunetti–Dütsch–Fredenhagen, Theorem 4.1](https://arxiv.org/html/0901.2038#S4) 提供该规则，不能据此比较任意两套已独立完成的 reflecting-wall theories。固定同一 interaction label 而省去 $Z(V)$，不是这里的结论。

经典 tree limit 在 local polynomial generators 上给 §4 的 interacting observables。要把量子子代数的 $\hbar$ 商忠实识别为某个经典代数，仍使用原 note 的 $\hbar$-saturation 及 actual-symbol-image 定义；不把这一 symbol class 扩大成全部 $\mathcal H(X^\infty)$。

## 7. 局域性、动力学与有限组合的共同验收

### 7.1 指定局域类

Classical global local algebra 由 smooth compact spacetime-smeared finite-jet densities 及其已定义 Poisson／smooth operations 生成。其 sewn counterpart 使用全部匹配的 regional density jets，在 matched fields 上定义。光滑整体与 matched densities 双向对应，故定理 1–2 的 global isomorphism 将两份生成类及其声明的 graph closures 对应。

新 $Y$ 上的直接区域函数至少包含 $\int f\phi_i^r$，$f$ smooth compact-time、$r$ 有限：二维 $H^1\hookrightarrow L^p$ 给函数及所有变分，bulk gradient 属于 $C_K^\infty L^2$，引理 1、3 给完整 $U_F$。任意高空间 jet density 未必在这个区域能量 chart 上有定义；它的 matched observable 仍由 $G\circ B$ 提升。这样的 section 不保证保持局域支撑，因此不得把它当作严格局域 prequotient 定理。

Quantum local algebra 使用 §5 的 polynomial labels 或 §6 的 local insertion labels 定义；微因果／因果因子化分别给自由对易性与 interacting locality。Cross-seam labels 通过 smooth collar partition 表达，不删去支撑在原 seam 邻域的 observables。

例如 $F=\int f\phi^2$ 的系数是 $2f(x)\delta(x-y)$。对 chart partition 必须同时保留所有 slots：
$$
f(x)\delta(x-y)=\sum_{a,b}\rho_a(x)\rho_b(y)f(x)\delta(x-y).
$$
只保留 $a=b$ 通常错误；当两块权重均为 $1/2$，遗漏项占一半。Mixed chart labels 正是修复这一问题所需的数据。

### 7.2 动力学与能量

Free time evolution 来自 $K_s$；$AK_s=K_MA$ 使全部谱演化与同一个 $\alpha_0$ intertwine。Classical 能量
$$
H=\frac12\sum_i\int_{R_i}(p_i^2+|\nabla\phi_i|^2+m^2\phi_i^2)
$$
在 matched fields 上等于 global energy。固定 $t$ 的原 regional expression 不一定属于 compact-time-density family；$H\circ B$ 是其已证明的 full-family lift。Quantum 使用 free note §6 的正常序 $H_r=\sum_j\omega_j^r\bar a_ja_j$ 扩张；$H_r\star H_s=H_rH_s+\hbar H_{r+s}$，同一 spectral intertwiner 保持所有这些关系和所选时间演化。

Switched interaction 的时间依赖必须保留。设
$$
H_\lambda(t)=H_0(t)+\frac{\lambda}{n!}\int g(t,x)\phi(t,x)^n dx.
$$
区域 EOM 给
$$
\frac{dH_{\lambda,i}}{dt}
=-\int_{\partial R_i}\Pi_i\dot q_i
+\frac{\lambda}{n!}\int_{R_i}\dot g_i\phi_i^n.
$$
Matching 后人工 flux 抵消，整体仍有 $\dot g$ 所做的功。不能把 switched theory 称为固定 Hamiltonian 的时间平移对称理论。

Classical evolution 用相容的 nonlinear solution relation 和 CPS；quantum 动力学用相同 $V$ 的 relative $S$-matrices／retarded insertion maps。$T_R$、$G^{R/A}$ 和 labels 的 intertwining 使它们与 sewing 相容。相互作用的应力张量作为已指定的 off-shell local insertion 处理，不把未定义的 sharp Hamiltonian 放进 $T_R$。

### 7.3 有限组合与辅助选择

对每个 intermediate cluster，保留尚未释放端口的实际 joint trace space、完整 response、corner incidence 和 collar labels。Cluster 自身以剩余端口齐次 Dirichlet 的闭型构造 fluctuations，并使用同样的 harmonic lift。引理 1–3 只依赖 Hilbert trace/lift 和时间平滑，因此对有限 Lipschitz clusters 的这种数据再次适用。

Partial cut 的额外 transpose 是内部 trace $\gamma_{\mathrm{int}}S_{\mathrm{cl}}$ 的转置。对 $a\in C_K^\infty(\mathcal B_{\mathrm{int}}')$，先令 $f=\gamma_{\mathrm{int}}^*a$，作为 $V_{\mathrm{cl}}'$ 上的 covector；其限制到零外边界 form domain 属于 $H_{-1,\mathrm{cl}}$。重复引理 3，使用 $G_{\mathrm{cl}}^Af\in C_t^\infty V_{\mathrm{cl},0}$ 和 lift 的 $V'$ 对偶，得到 $C^\infty_{\operatorname{hull}(K\cup K_\chi)}(\mathcal B_{\mathrm{ext}}')$。源项对完整 $V$ 的作用须保留，不能先丢掉它对非零 trace lifts 的配对。Nonlinear 情形再增加 $S^\dagger\mathcal V_\lambda G_\lambda^Af$，其源为固定紧时间支撑的 $L^2$，已由 §4 控制。

因此在每个合法 cluster 上可复用 section／transpose 构造；组合 cut maps、逆序组合 transposes 与 sections，仍保持允许类。不同括号化的最终 fields 满足相同区域 action、共同 trace 与全 response release；唯一性使它们相同。Quantum chart refinement 的共同 refinement 关系、同一最终 response kernel 与同一 $T_R$ rule 使两种次序逐图相同。在某个 intermediate cluster 尚无孤立 Wick 理论时，只传递 response/test package，不虚构那份中间量子代数。这里的有限组合是这些增强对象的组合。

改变 $\chi$ 时，同一个区域场的坐标 transition 为
$$
z_i'=z_i+P_{\chi'}S_\chi q_i,\qquad q_i'=q_i.
$$
其 inverse 交换两个 cutoffs。额外 field-to-history transpose 为
$S_\chi^\dagger(-C_{\chi'}\psi_v)$，由引理 3 在两份 cutoff support 的 hull 内取值于 $C^\infty(\mathcal B')$。所以 transition 及其逆实际保持这份 regular-gradient 类，不能只用抽象坐标可逆性代替该条件。时间延拓被引理 2 的 normalization 消去；在比较同一解时改变 harmonic lift，区域解与完整端点补偿的 response 由能量唯一性和 rectangle 的 Green identity 保持。

Matched fields 及 action-derived response 不变，故物理商上的比较是恒等场标签的映射。不同 $B$ 只给不同的 ambient extension，不要求 off-matching 括号逐点相同。Normal-ordering 与 finite-renormalization 的比较另按 §6 执行。

## 8. 定理表与未改变的边界

| 问题 | 当前结论 | 核／像与实际输入 |
|---|---|---|
| 区间旧 smooth-density full-family sewing | 原定理保留 | 旧 $R,B$ 和 regular transposes；不是本次重新证明全部旧 estimates |
| 矩形到 smooth torus/Klein 的完整区域函数族 | 定理 1：在新的 trace-dual 类中 proved | 直接 independent source；$\ker R^*$；逐函数 $G\circ B$，满像 $\mathcal H(X_M^\infty)$ |
| Independent-to-common family extension | proved in the new class | 联合 Hilbert trace 正交投影及其 dual，不逐边删去条件 |
| 原逐边普通空间光滑 density 类在矩形上的同一命题 | 未由本定理解决 | 新的空间 $\mathcal B'$ 不是其同义改写；不得把旧待证命题勾成 proved |
| $d\le2$、固定 $n$ switched nonlinear classical sewing | 定理 2：formal 及局部实际小耦合域 | $BR_\lambda=1$、实际 energy/transposes 和完整 $DP_\lambda$ 梯度 |
| Free polynomial quantum source | 定理 3 与 §5.2 | collar/chart overlap + Wick 关系 + 完整 $\kappa$ 核；独立 global polynomial target |
| Free equicausal comparison | 原 Q0 定理保留 | 不从有限 polynomial presentation 推断其全部源关系 |
| Interacting quantum source | 定理 4：formal insertion-generated | 逐图／逐阶 Cauchy-coefficient kernel 判据；同一 $T_R$ 及独立 global target |
| 自由能量、局域 labels、有限组合 | 在上述同一对象和域上相容 | 保留 mixed chart slots、external responses 和全部 corner incidence |
| Wick／renormalization 选择 | 在明示相容变换下自然 | 同一传播问题的 smooth $d$；相容 $Z(V),DZ(V)F$ |
| 两个固定旧 reflecting algebras 的逐场 tensor sewing | false | 旧 cross commutator 为零而透明传播一般非零 |
| 全部经典函数用同一 exact-Dirac prescription 量子化 | 不作为目标 | 量子类与 classical ambient 类分别定义 |

本次收尾选择的是明确的 trace-dual classical class 和 polynomial／formal-insertion quantum class；没有把旧空间光滑密度命题、任意 nonlinear equicausal stability、任意 sharp physical-boundary composites 改称完成。前两项不是本文所选构造的假设，也不据其未证明而否定本文结论。

**Verified:** 本文显示的解析证明链；独立保存的有限 cutoff、transpose、Poisson、chart/Wick、energy 与 refinement diagnostics 见 [verification](<numerics/scalar observable sewing closure verification.md>)。有限 checks 只验证具体恒等式。

**Assumptions:** 有限静态 cells、$d=1,2$、$m>0$、smooth interval/flat torus/Klein 目标；指定 joint trace topology、$C^\infty_tH^1$ 区域场、$C^\infty_c(\mathcal B')$ covectors、无真实 seam interaction；固定有限 $n$、早期自由窗与局部小耦合域；量子使用声明的 polynomial/test class、common Wick／renormalization rules 和形式完成。

**Not verified:** 旧逐面空间光滑密度类在矩形上的全部 regular-transpose claims；整个 history-equicausal 类的 nonlinear stability；任意 sharp 真边界 composite。锥点、强耦合、无限细分及态／表示拼接按本次 scope 排除。本文不以这些边界尚在为理由，把已给出的 exact quotient 降成未经模型实现的条件定理。
