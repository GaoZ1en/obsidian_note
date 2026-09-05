# Smooth Regional Observable Algebras, Symmetries and Sewing

本文在 static massive free scalar、有限 interval cells、物理外端 Dirichlet、物理 $j=0$ 的模型中，定义更大的经典区域 observable families，并证明对称性相容的 exact sewing。区域作用量、历史输运和响应的解析输入来自 [classical regional observable algebra gluing](<classical regional observable algebra gluing.md>)，以下记为 [N]；其 §27 记录对三份外部审计稿的复核。本节以下重新给出大代数的定义及证明，不以外部稿的 claim labels 为证据。

**结论。** 对每个区域，observable 必须是 joint function $F(z,q)$，其完整微分具有 smooth field-Hamiltonian vector 和固定 compact-time support 的 smooth history density。这个条件给出 Poisson algebra $\mathcal H_\beta(Y)$，包含 [N] 的 entire finite-loss families、任意有限 smooth functional calculus，以及时间涂抹的 smooth finite-jet bulk/boundary functionals。从区域作用量释放人工接口得到的新括号满足

$$\begin{align}
\boxed{
\mathcal H_\beta(Y_{\mathrm{com}})/\ker\mathsf R^*
\ \cong\ \mathcal H(X_{\mathrm{sew}})
\ \cong\ \mathcal H(X_M).
} \tag{1}
\end{align}$$

满射由每个 $G$ 的实际 extension $G\circ\mathsf B$ 证明。任意实际 smooth symplectomorphism 的固定 pullback 是 $\mathcal H(X)$ 的连续 Poisson automorphism；区域 family 上还须验证微分的 density-valued transpose。有限维群在 §7.1 的联合 smoothness 与统一支撑条件下联合 Bastiani smooth 地作用，但整个自然 Fréchet solution-translation 群在本文 graph topology 下的联合作用不连续。物理对称性另须保持作用量、边界条件、响应与指定的局域代表。

## 1. 区域作用量、变量与微分学

取 $\Sigma_i=[0,\ell_i]$，$y_i$ 朝共同 cut 增加，$\ell_i>0$。signature 为 $(-,+)$，$m>0$，无真实 interface action。先给区域作用量及变分：

$$\begin{align}
S_i[\phi_i]&=\frac12\int_I dt\int_0^{\ell_i}dy_i
(\dot\phi_i^2-\phi_i'^2-m^2\phi_i^2),\\
L_i&=\partial_t^2-\partial_{y_i}^2+m^2,\qquad
\phi_i(t,0)=0,\\
q_i&=\phi_i(t,\ell_i),\qquad \Pi_i=-\phi_i'(t,\ell_i),\\
\delta S_i&=-\langle L_i\phi_i,\delta\phi_i\rangle
+\left[\int_0^{\ell_i}\dot\phi_i\delta\phi_i\,dy_i\right]_{t_-}^{t_+}
+\langle\Pi_i,\delta q_i\rangle .
\end{align}$$

固定区域 history 时 $\delta q_i=0$。先保留 $q_1,q_2$ 的独立响应，再识别 $q_1=q_2=q$；共同 $\delta q$ 任意，才得到 $\Pi_1+\Pi_2=0$。本笔记的辅助 sources 只定义 $G^{R/A},H^{R/A},\rho^{R/A},D^{R/A}$ 和原始 field smearings，不是新的物理背景。

令 $K_{i,D}=-\partial_{y_i}^2+m^2$，域为 $H^2\cap H_0^1$，并定义

$$\begin{align}
W_i&=(1+K_{i,D})^{1/2},&
X_{i,s}&=D(W_i^{s+1})\oplus D(W_i^s),\\
X_i&=\bigcap_{s\ge0}X_{i,s},&
\Omega_i((u,v),(\widetilde u,\widetilde v))
&=(v,\widetilde u)-(\widetilde v,u).
\end{align}$$

$X_i$ 是实 Fréchet smooth Cauchy space；与其齐次 Dirichlet solution space 连续线性同构。$X_s$ 的 norm 取 [N, §14.1] 的 Hilbert norm。约定

$$\begin{align}
\iota_{X_F}\Omega=-dF,\qquad
\{F,G\}=dF(X_G)=-\Omega(X_F,X_G),\qquad
\{Q_n,P_n\}=1.
\end{align}$$

这里 $E=G^A-G^R$ 是 $L=\partial_t^2+K$ 的 convention，满足
$\langle a,\phi_z\rangle=-\Omega(Ea,z)$。不将其他符号约定中的 $E$ 直接代入这些式子。

时间 slab $I$ 有限，数据在其闭包的邻域光滑。历史用实 Fréchet 空间
$\mathcal Q=\bigcap_{s\ge0}H^s(\mathbb R;\mathbb R^p)$ 表示；物理 history 在 $I$ 外可乘 cutoff 延拓。采用 Bastiani 微分学：
$F:E\to E'$ smooth 指所有 $D^kF$ 存在，且
$(y,h_1,\ldots,h_k)\mapsto D^kF(y)[h_1,\ldots,h_k]$
联合连续。这里下标 $B$ 只表示 Bastiani，不表示 bounded。

取 $\chi$ 从 $0$ 增至 $1$，$\chi'$ compactly supported in $I^\circ$，并设

$$\begin{align}
A_\chi&=[\partial_t^2,\chi]=\chi''+2\chi'\partial_t,\\
\mathcal P_i&=-E_iA_\chi,\qquad
\mathsf S_iq=(1-\mathcal P_i)H_i^R(\kappa q),\\
\phi_i(z_i,q_i)&=\psi_{z_i}+\mathsf S_iq_i .
\end{align}$$

$\kappa=1$ 于 $\overline I$ 邻域，且 compactly supported。$\mathcal P_i$ 在齐次 Dirichlet solutions 上为恒等，$\mathcal P_i\mathsf S_i=0$。改变 $I$ 外的延拓只改变被 $1-\mathcal P_i$ 消去的齐次解。因此上述坐标覆盖全部允许的 smooth regional solutions。固定 $q_i$ 的函数代数与一个固定 origin 的选择无关；同时改变 histories 的坐标变换须通过 §4 的 transpose 检查。

## 2. 大代数的定义与闭合

### 2.1 固定 history 与 connected phase space

对于任意上述 smooth CPS $(X,\Omega)$，定义

$$\begin{align}
\mathcal H(X)=
\{F\in C_B^\infty(X,\mathbb R):
\exists X_F\in C_B^\infty(X,X),\
dF(z)[h]=-\Omega(X_F(z),h)\}. \tag{2}
\end{align}$$

$\Omega$ 弱非退化，故 $X_F$ 唯一。取 $X=X_i$ 得到固定 history 的区域代数；在物理解上通过 $\phi_i=\psi_{z_i}+\mathsf S_iq_i$ 实现。取独立构造的 $X_M$ 得到 global algebra。式 (2) 本身没有预设 global spacetime，也没有表达 history 之间的关系。

这是给定 smooth phase space 与 smooth Hamiltonian-vector 判据后的最大标量函数类，不是全部 $C_B^\infty(X)$。例如内部点的 $F(u,v)=u(x_*)$ 是 continuous linear function，但要求的 $X_F=(0,-\delta_{x_*})\notin X$，故不在 (2)。

### 2.2 真正供区域粘合使用的 joint families

对一份区域或有限个独立区域，先按其自身数据定义

$$\begin{align}
Y&=\left(\bigoplus_iX_i\right)\oplus\mathcal Q,\\
Z_K&=\left(\bigoplus_iX_i\right)\oplus C_K^\infty(\mathbb R;\mathbb R^p),
\qquad K\Subset I^\circ,\\
\beta((V,A),(z,h))&=-\sum_i\Omega_i(V_i,z_i)+\int A\cdot h\,dt .
\end{align}$$

$C_K^\infty$ 的 topology 由所有 $H^{s+3}$ norms 给出，与其通常 Fréchet topology 相同。$\beta$ 连续，在 covector 端分离点；它不分离只在 $I$ 外变化的辅助 history representatives。

定义

$$\begin{align}
\mathcal H_{\beta,K}(Y)=
\{F\in C_B^\infty(Y,\mathbb R):
&\ \exists U_F=(V_F,A_F)\in C_B^\infty(Y,Z_K),\\
&dF(y)[h]=\beta(U_F(y),h)\},\\
\boxed{\mathcal H_\beta(Y)=\bigcup_{K\Subset I^\circ}\mathcal H_{\beta,K}(Y).} \tag{3}
\end{align}$$

每个 $F$ 使用一个固定 $K$，控制所有背景和所有导数；不允许背景变化时支撑逃向 slab endpoints。协向量端的分离性使 $U_F$ 唯一。沿 history 直线积分说明 $F$ 只依赖 $q|_K$，所以辅助延拓不可观测。

这一正则性条件可用局部估计明确表达。对每个背景 $y_0$、输出阶 $s$ 和有限 $k$，存在 $y_0$ 的邻域 $\mathcal V$、有限输入阶 $m$ 和常数 $C$，使

$$\begin{align}
\|D^kU_F(y)[h_1,\ldots,h_k]\|_{Z_{s,K}}
\le C\prod_{a=1}^k\|h_a\|_{Y_m},
\qquad y\in\mathcal V . \tag{4}
\end{align}$$

这由联合连续性和方向 slots 的 multilinearity 给出；$k=0$ 表示局部有界。这里 $m,\mathcal V,C$ 可依赖 $s,k,y_0$。与 [N] 不同，不要求 $m-s$ 是控制所有次数、所有输出阶的同一个数，也不要求 entire continuation 或 factorial summability。没有放弃 $A_F$ 及其全部 mixed derivatives 的 smooth-density-valued 正则性。

对固定 history directions $h_1,\ldots,h_k$，$D_q^kF[h_1,\ldots,h_k]$ 仍在同一 $\mathcal H_{\beta,K}$，其 gradient 是 $D_q^kU_F[h_1,\ldots,h_k]$；由反复微分配对式即得。背景依赖的 directions 另外产生 chain-rule 项，按 §4 处理。

每个 $F_q$ 属于 $\mathcal H(X_i)$，但反向的逐 history 条件不足够。$F_q(z)=q(t_*)$ 的 $A_F=\delta_{t_*}$，故不在 (3)，释放后也没有 smooth Hamiltonian vector。

### 2.3 Poisson 与 smooth functional calculus

设同一个常线性 map $\mathsf P:\bigcup_K Z_K\to Y$ 在每个 $Z_K$ 上连续，且

$$\begin{align}
\beta(U,\mathsf PV)=-\beta(V,\mathsf PU).
\end{align}$$

定义 $\{F,G\}_{\mathsf P}=\beta(U_F,\mathsf P U_G)$。Hessian 对称性给

$$\begin{align}
\beta(DU_F(y)[h],k)&=\beta(DU_F(y)[k],h),\\
U_{FG}&=F U_G+G U_F,\\
U_{\{F,G\}_{\mathsf P}}
&=DU_F[\mathsf P U_G]-DU_G[\mathsf P U_F]. \tag{5}
\end{align}$$

证明最后一式时，先对 $\beta(U_F,\mathsf P U_G)$ 求导，再分别用第一式和 $\beta$-skewness。由于 $(y,h)\mapsto DU_F(y)[h]$ 自身 Bastiani smooth，代入 $h=\mathsf P U_G(y)$ 合法；输出在 $Z_{K_F\cup K_G}$，不是只得到逐点标量导数。明确记 $H_F(h,k)=\beta(DU_F[h],k)=D^2F[h,k]$，则

$$\begin{align}
\{F,\{G,H\}_{\mathsf P}\}_{\mathsf P}
=-H_G(\mathsf P U_H,\mathsf P U_F)
+H_H(\mathsf P U_G,\mathsf P U_F).
\end{align}$$

循环求和后，六项由 Hessian 对称性逐对抵消。Leibniz 是乘法的 chain rule。这证明整个 (3) 的 Poisson closure，不要求 Hamiltonian vector fields 已有 flows。

固定 history bracket 是 $\mathsf P_0(V,A)=(V,0)$。独立系统用直接和 pairing、独立 histories 和相同的 joint-gradient rule；其双方 cross bracket 为零。这里没有宣称 $\mathcal H_\beta(Y_1\oplus Y_2)$ 是已完成因子的 projective tensor product，或每个 joint function 都是有限多个因子函数的组合。

这里的 regional object 保留 $(Y_i,Z_{i,K},\beta_i)$、原始 field/support maps 和作用量/响应；joint-gradient rule 只依赖这些区域输入。因此下文证明这份增强对象的 sewing，不声称仅由抽象 $\mathcal H_i$ 的乘法和括号恢复所有组合数据。

对 $F_1,\ldots,F_k\in\mathcal H_\beta$ 和 $h\in C^\infty(\mathbb R^k)$，

$$\begin{align}
U_{h(F_1,\ldots,F_k)}
=\sum_a(\partial_a h)(F_1,\ldots,F_k)U_{F_a}. \tag{6}
\end{align}$$

这也证明有限 smooth functional calculus 的闭合。取 $Y=X$、$\beta=-\Omega$、$\mathsf P=1$，上述证明给 (2) 的全部 Poisson-algebra 性质，尤其
$X_{\{F,G\}}=DX_F[X_G]-DX_G[X_F]$。通常 vector-field commutator 的符号为
$[X_F,X_G]=-X_{\{F,G\}}$。

## 3. 包含哪些函数

### 3.1 与原 entire 类的关系

[N] 的 factorial estimates 使函数级数、Hamiltonian vectors 和所有 mixed derivatives 在所需 scale balls 上局部一致收敛，因此有真实函数的嵌入

$$\begin{align}
\mathfrak A_{\mathbb R}
&\subsetneq\operatorname{Sm}(\mathfrak A_{\mathbb R})
\subseteq\mathcal H(X),\\
\mathfrak B_{\mathbb R}
&\subsetneq\operatorname{Sm}(\mathfrak B_{\mathbb R})
\subseteq\mathcal H_\beta(Y).
\end{align}$$

这里 $\operatorname{Sm}(\mathfrak A)$ 是所有有限 $h(F_1,\ldots,F_k)$，不是一个未经定义的 completion；其 Poisson closure 来自 (6) 和有限个 $\{F_a,G_b\}$ 仍在原类。第二个包含号不宣称严格。

第一个包含严格有直接证明。取非零 $\ell(z)=-\Omega(v,z)$ 和 $\ell(e)=1$，令 $F=e^{-\ell^2}$。其第 $2n$ 次 Hamiltonian coefficient 为

$$\begin{align}
T_{2n}(z_1,\ldots,z_{2n-1})
&=\frac{(-1)^n}{n!}v\prod_a\ell(z_a),\\
P_{0,r}(T_{2n})
&\ge\frac{\|v\|_0}{n!\|e\|_r^{2n-1}} .
\end{align}$$

[N] 在所有整数 $R$ 要求的加权级数有必要子界
$\sum_n\sqrt{(2n)!}(R/\|e\|_r)^{2n}/n!$。
其相邻项比值趋于 $2(R/\|e\|_r)^2$，故任意固定 $r$ 都可选 $R$ 使它发散。另一方面
$X_F=-2\ell e^{-\ell^2}v$ smooth，故 $F\in\mathcal H(X)$。同理允许 nonanalytic smooth $h(\ell)$ 和 $e^{-\beta H}$，$\beta>0$；后者是 observable function，不由此定义一个无限维 Gibbs measure。

### 3.2 Smooth local densities 与完整边界变分

令
$\mathcal F(\phi_i)=\int f(t,y_i)h(j^d\phi_i)\,dt\,dy_i$，
$d<\infty$，$h\in C^\infty(\mathbb R^N)$。$f$ 时间支撑 compactly contained in $I^\circ$，空间上 smooth 至 cell endpoints；也允许相同条件的 boundary-jet densities。

映射 $y\mapsto j^d(\psi_z+\mathsf S_iq)$ 在任意固定 compact 时间窗的 ordinary smooth jets 中连续线性。[N, §23.1] 的 forward estimates 给这一点。有限维 smooth composition 在这些 jet spaces 上 Bastiani smooth：在每个背景的足够小邻域中 jets 的值落在一个 compact subset of $\mathbb R^N$，每个所需 $h$ 的导数在那里有界。其 $k$ 阶导数是 $h^{(k)}$ 与 $k$ 份 jet variations 的有限乘积，Sobolev/Leibniz estimates 给联合连续性。

同一论证允许一般 smooth density $a(t,y_i,j^d\phi_i)$，只要其 spacetime 支撑固定且时间上 compactly contained in $I^\circ$：将 $(t,y_i)$ 作为固定的有限维参数，所需 mixed derivatives 仍在 compact spacetime/jet sets 上有界。下述变分与 transpose 证明逐项适用；§5.4 的完整 density matching 使用这一形式。

先在未固定 history 的物理 fields 上变分并分部积分：

$$\begin{align}
d\mathcal F_\phi[\delta\phi]
&=\langle a[\phi],\delta\phi\rangle+
\sum_{e,a'}\langle c_{e,a'}[\phi],\gamma_{e,a'}\delta\phi\rangle,\\
V_F&=E_i\left(a+\sum_{e,a'}\gamma_{e,a'}^*c_{e,a'}\right),\\
A_F&=\mathsf S_i^\dagger a+
\sum_{e,a'}(\gamma_{e,a'}\mathsf S_i)^\dagger c_{e,a'}. \tag{7}
\end{align}$$

$\gamma_{e,a'}\phi=\partial_{y_i}^{a'}\phi(t,e)$。$a,c$ 及全部背景导数是固定时间支撑的 smooth coefficients。以下连续线性 maps 是 [N, §§16、23] 中已由时间分部积分、$H^2$ normal trace 和 boundary-mode tails 证明的 maps：

$$\begin{align}
E_i &:C_c^\infty(I^\circ;L^2)\to X_i,\\
E_i\gamma_{e,a'}^* &:C_c^\infty(I^\circ)\to X_i,\\
\mathsf S_i^\dagger &:C_c^\infty(I^\circ;L^2)\to C_K^\infty,\\
(\gamma_{e,a'}\mathsf S_i)^\dagger &:C_c^\infty(I^\circ)\to C_K^\infty .
\end{align}$$

对每个固定 input support，$K$ 取它与 $\operatorname{supp}\chi'$ 的 hull。先限定这一 support stratum，再使用这些 maps；因此 (7) 给实际 $C_B^\infty(Y,Z_K)$ gradient，证明 $F\in\mathcal H_{\beta,K}$。这包括 $\int f\sin\phi$、$\int f e^{-\phi^2}$ 和任意上述 smooth finite-jet detector density，不需要把它们表示成有限多个已知多项式观测量的 smooth function。

对 pure-history $\int\eta q^n$，density 为 $n\eta q^{n-1}$；higher kernels 中的对角分布不构成障碍，因为定义要求 distinguished covector slot 的 density 光滑，而不是要求全部 multipoint kernels 都是普通 smooth functions。

### 3.3 响应和能量

Smeared normal response 为

$$\begin{align}
\mathcal R_{i,\eta}&=-\langle\eta,\gamma_{\ell_i,1}\phi_i\rangle,\\
U_{\mathcal R_{i,\eta}}
&=\left(-E_i\gamma_{\ell_i,1}^*\eta,\
-(\gamma_{\ell_i,1}\mathsf S_i)^\dagger\eta\right).
\end{align}$$

取 $\eta\in C_c^\infty(I^\circ)$。区域 energy family $H_i[\eta]$ 的 integrand 是
$(\dot\phi_i^2+\phi_i'^2+m^2\phi_i^2)/2$，其完整 gradient 为

$$\begin{align}
a_i&=-\partial_t(\eta\dot\phi_i)
+\eta(-\partial_{y_i}^2+m^2)\phi_i,\\
dH_i[\eta]&=\langle a_i,\delta\phi_i\rangle
-\langle\eta\Pi_i,\delta q_i\rangle,\\
U_{H_i[\eta]}&=(E_i a_i,\mathsf S_i^\dagger a_i-\eta\Pi_i). \tag{8}
\end{align}$$

只有在 source-free solutions 上才能把第一行写成
$-\eta'\dot\phi_i+2\eta(-\partial_{y_i}^2+m^2)\phi_i$。
两项历史 density 都保留。§8 将由实际 energy identity 证明这些 families sew 成总能量。

## 4. 允许的历史代入与对称坐标变化

一般的 Bastiani smooth map $T:Y'\to Y$ 不一定保持 (3)。采用以下可检验条件：对每个 $K$，存在固定 $K'\Subset I'^\circ$ 和 jointly Bastiani smooth map

$$\begin{align}
DT^\flat:Y'\times Z_K&\longrightarrow Z'_{K'},\\
\beta(U,DT(y')h')&=\beta'(DT(y')^\flat U,h').
\end{align}$$

该 map 对 $U$ 线性；输出 support $K'$ 不依赖背景 $y'$。

由 chain rule，

$$\begin{align}
U_{T^*F}(y')&=DT(y')^\flat U_F(Ty'), \tag{9}\\
D U_{T^*F}(y')[h']
&=D_{y'}(DT^\flat)(y')[h']\,U_F(Ty')
+DT(y')^\flat DU_F(Ty')[DT(y')h'] .
\end{align}$$

两项 smooth，输出支撑在固定 $K'$，故 $T^*F\in\mathcal H_\beta(Y')$。第二行的第一项不能在 nonlinear $T$ 下删除；它包含 $D^2T$ 的 transpose。对于线性 release map $\mathsf R$，该项才恒为零。admissible maps 复合仍 admissible，transpose 逆序复合，有限次 support enlargements 的并仍 compact。

[N, (22.7)] 的 finite-loss maps、标准 cutoff changes 与因果 history transports 满足这一条件，因此自动保持本类。具体的可变 causal increment $\sigma h$，$\sigma\in C_c^\infty(I^\circ)$，使用

$$\begin{align}
(z,q,h)&\longmapsto(z+\mathcal P_iH_i^\epsilon\sigma h,q+\sigma h),\\
-\Omega_i(v,\mathcal P_iH_i^R\sigma h)
&=\langle-\sigma\rho_i^AA_\chi v,h\rangle ,
\end{align}$$

advanced 版本交换 $R,A$。这些 transpose densities 的支撑在固定 control window。只给定 $q|_I$ 时，不能把依赖 $I$ 外 controls 的 causal transport 当作已确定；应先扩大有限 slab。

反例仍是 $T(z,q)=(z+u_0q(t_*),q)$。它有 smooth inverse，但 field-linear function 的 pullback 可含 $\ell(u_0)q(t_*)$，history gradient 是 delta。因此任意 smooth history-dependent origin change 的封闭性为假。

## 5. 从区域数据构造 exact sewing

### 5.1 Connected 算子先由 regional action 构造

在 $H^{\mathrm{dup}}=L^2(\Sigma_1)\oplus L^2(\Sigma_2)$ 上，使用作用量共同-history 变分得到的 continuity/flux matching，定义

$$\begin{align}
V^{\mathrm{sew}}&=\{(u_1,u_2):u_i\in H^1,\
u_i(0)=0,\ u_1(\ell_1)=u_2(\ell_2)\},\\
\mathfrak a^{\mathrm{sew}}(u,v)
&=\sum_i\int_0^{\ell_i}(u_i'v_i'+m^2u_iv_i)\,dy_i .
\end{align}$$

一维 trace 给闭性，内部 tests 给在 $H^{\mathrm{dup}}$ 中的稠密性，$m>0$ 给 coercivity。闭型表示得到 $K_{\mathrm{sew}}$；分部积分给其 piecewise $H^2$ domain 以及
$u_1'(\ell_1)+u_2'(\ell_2)=0$。functional calculus 得到
$G_{\mathrm{sew}}^{R/A},E_{\mathrm{sew}},X_{\mathrm{sew}}$。
它们也满足区域 $G,H,\rho,D$ 的同一个 causal feedback problem，因果唯一性给二者相等。没有在实频上无条件除以 DtN，也没有删去 $q=0$ modes。此时尚未定义或使用 $K_M,\mathcal H(X_M)$。

独立 histories 上的 joint algebra 按 (3) 定义。代入 $q_1=q_2=q$，transpose 将两份 densities 相加。该 pullback onto 整个 common-history 类：$F(z_1,z_2,q)$ 延拓为 $F(z_1,z_2,q_1)$、忽略 $q_2$ 即给 section。这一步的全类覆盖不依赖 tensor identity。

### 5.2 实际 cut、extension 与双向 transpose

以下 $X=X_{\mathrm{sew}}$，$R_i$ 表示对 physical fields 的第 $i$ 段限制，$e_i$ 只对 $L^2$ sources 作零延拓。定义

$$\begin{align}
\mathsf T_i&=-E_iA_\chi R_i,\qquad
\mathsf T_i^\sharp=-E_{\mathrm{sew}}e_iA_\chi,\\
\mathsf Rz&=(\mathsf T_1z,\mathsf T_2z,\kappa\gamma\phi_z),\\
\mathsf R^\flat(V_1,V_2,A)
&=\sum_i\mathsf T_i^\sharp V_i+E_{\mathrm{sew}}\gamma^*A,\\
\mathsf By&=-E_{\mathrm{sew}}A_\chi
(\psi_{z_1}+\mathsf S_1q,\psi_{z_2}+\mathsf S_2q),\\
\mathsf B^\flat v
&=\left(\mathsf T_1v,\mathsf T_2v,\
\sum_i\mathsf S_i^\dagger(-R_iA_\chi v)\right). \tag{10}
\end{align}$$

$\mathsf B$ 的 source 是 duplicated regional $L^2$ 有序对，未借用 global assembly。对不匹配的 $y$，$\mathsf By$ 只用于 observable extension，不声称它是这些不匹配 fields 的物理解。

这里所需的解析证据不是仅有形式 transpose。[N, §§23.1、24.1–24.3] 的低空间正则性估计给

$$\begin{align}
\mathsf R &:X_s\to Y_s,&
\mathsf R^\flat &:Z_{s,K}\to X_s,\\
\mathsf B &:Y_{s+4}\to X_s,&
\mathsf B^\flat &:X_{s+8}\to Z_{s,K_\chi},\qquad
K_\chi=\operatorname{hull}(\operatorname{supp}\chi').
\end{align}$$

这些是固定几何、cutoffs、时间窗下的连续线性 maps。特别地
$E_{\mathrm{sew}}\gamma^*:H_K^{s+3}\to X_s$
来自 compact-time smoothing，而不是对 Cauchy momentum 的非法 trace。Green identity 与 cutoff identity 进一步给

$$\begin{align}
\beta(U,\mathsf Rz)&=-\Omega(\mathsf R^\flat U,z),\\
-\Omega(v,\mathsf By)&=\beta(\mathsf B^\flat v,y),\\
\mathsf B\mathsf R&=1_X,\qquad
\mathsf R^\flat\mathsf B^\flat=1_X. \tag{11}
\end{align}$$

第三式因为 cut data 重建出原逐段场，且 $-EA_\chi\phi_z=\phi_z$；第四式由前两式配对及 $\Omega$ 非退化得出。它们是无限维空间上的真实 identities。

### 5.3 Release、全部函数的满射与新 Poisson ideal

设 $F\in\mathcal H_{\beta,K}(Y_{\mathrm{com}})$。由 (11) 的完整 chain rule，

$$\begin{align}
d(F\circ\mathsf R)(z)[h]
&=-\Omega(\mathsf R^\flat U_F(\mathsf Rz),h),\\
X_{\mathsf R^*F}
&=\mathsf R^\flat U_F\circ\mathsf R\\
&=\left(\sum_i\mathsf T_i^\sharp V_{F,i}
+E_{\mathrm{sew}}\gamma^*A_F\right)\circ\mathsf R . \tag{12}
\end{align}$$

向量 smooth，故 $\mathsf R^*F\in\mathcal H(X)$。$A_F$ 的贡献不会因为固定-history 变分是零而消失。

定义由 regional responses 决定的新 operator

$$\begin{align}
\mathsf P_{\mathrm{sew}}=\mathsf R\mathsf R^\flat,\qquad
\{F,G\}_{\mathrm{sew}}
=\beta(U_F,\mathsf P_{\mathrm{sew}}U_G).
\end{align}$$

它是连续的常 $\beta$-skew map，故 §2.3 给全类 closure。由 (12)，

$$\begin{align}
\mathsf R^*\{F,G\}_{\mathrm{sew}}
=\{\mathsf R^*F,\mathsf R^*G\}_X. \tag{13}
\end{align}$$

这不是 $\mathsf P_0$ 的 bare tensor fusion；history、same-side 与 cross terms 均由新 operator 给出。

对任意 $G\in\mathcal H(X)$，直接定义 $\widetilde G=G\circ\mathsf B$。其 gradient 是

$$\begin{align}
U_{\widetilde G}
=\mathsf B^\flat X_G\circ\mathsf B
\in C_B^\infty(Y,Z_{K_\chi}),\qquad
\mathsf R^*\widetilde G=G. \tag{14}
\end{align}$$

这一构造适用于整个 $\mathcal H(X)$，包括没有 entire expansion、没有任何统一 finite loss 的 $G$。因此 $\mathsf R^*$ exact onto。没有使用 cylinder approximation、dense range 或隐含的 extension theorem。

$\mathcal I=\ker\mathsf R^*$ 是乘法和新 bracket 的 ideal：由 (12)，$F\circ\mathsf R=0$ 强制 $\mathsf R^\flat U_F(\mathsf Rz)=0$，再用 (13)。故
$[F]\mapsto F\circ\mathsf R$
给第一个同构 (1)，逆为 $G\mapsto[G\circ\mathsf B]$。由最后一条 (11)，$\mathsf B^*$ 自身也 Poisson。

独立从 uncut action、物理 Dirichlet 边界和其 CPS 定义 $K_M,X_M,\mathcal H(X_M)$。一维 $H^1/H^2$ patching 给
$\operatorname{Ass}K_{\mathrm{sew}}=K_M\operatorname{Ass}$，
从而 $\operatorname{Ass}:X_{\mathrm{sew}}\to X_M$ 是连续线性 symplectic isomorphism。第二个同构为
$G\mapsto G\circ\operatorname{Ass}^{-1}$。它覆盖独立 global algebra 的全部定义类，完成 (1) 的非循环证明。

同样，pullback 与有限 smooth functional calculus 交换，(14) 对有限输入逐个应用，给
$\operatorname{Sm}(\mathfrak B)/\ker\mathsf R^*
\cong\operatorname{Sm}(\mathfrak A_M)$。
这一较小结论不等同于它已经包含全部 smooth local densities。

### 5.4 有限次切割与局域性

对仍保留 external histories 的 cluster，令
$Y_{\mathrm{cl}}=X_{\mathrm{cl}}\oplus\mathcal Q_{\mathrm{ext}}$，
并按 (3) 独立定义其 family algebra。一次 partial cut $\mathsf R_a$ 重建 cluster field、逐 child 限制、提取 normalized coordinates 和内部 trace，同时保留外部 histories。反向 $\mathsf B_a$ 保留外部 histories，从 child 的有序对中减去 cluster lift，再作用 $-E_{\mathrm{cl}}A_\chi$。

[N, §24.4] 的内部 trace/lift-transpose 界和 (10) 给连续 $\mathsf R_a,\mathsf B_a$ 及固定 support 的 transposes，且 $\mathsf B_a\mathsf R_a=1$。将 (12)–(14) 的 $-\Omega$ 换为 cluster 的 $\beta_{\mathrm{cl}}$，将新 operator 换为
$\mathsf R_a\mathsf P_{0,\mathrm{cl}}\mathsf R_a^\flat$，
即逐函数证明 onto 整个 cluster family 类，包含 remaining-history derivatives。

有限次组合的 cut maps 复合，transposes 逆序复合，sections 逆序复合；这些公式保持 smoothness 和固定 compact support。不同 parenthesizations 的最终字段满足同一个由区域 action/response 定义的 transmission problem，因果唯一性给同一最终 $E$ 与 source flattening。因此有限切割的 associativity 和 cutting inverse 在整个所选类成立。这里没有无限切分的一致估计。

局域 net 采用 **商后 matched smooth-bulk/finite-jet generators**，明确限定生成类。对相对开集 $O\subset I^\circ\times\Sigma$，先在区域几何中取有限阶 jet densities
$a_i(t,y_i,j^d\phi_i)$，其 spacetime support compactly contained in $O$（允许接触物理端点时取相对支撑）。在每个人工 cut 处，将场的空间 jets 按
$\partial_x=\partial_{y_1}=-\partial_{y_2}$ 换为同一方向，要求两侧的**整个 density** 作为 spacetime 与有限 jet variables 的 smooth function 匹配全部 jets。对 $a_i=f_i h_i$，只匹配 $f_i$ 而允许任意不同的 $h_i$ 不够；例如一侧为 $f\phi^2$、另一侧为零，在 cut 附近 $f\ne0$ 时并不匹配。

以这些区域积分之和的 released classes 为生成元，作有限加法、乘法、smooth functional calculus 和 Poisson operations，得到 $\mathscr H_{\mathrm{bulk,sew}}(O)$。线性 bulk smearings 是其中的特殊情形。独立 uncut 侧以普通 smooth bulk/finite-jet densities 定义 $\mathscr H_{\mathrm{bulk},M}(O)$。光滑 patching 给整个 densities 的双向对应，逐 cell 积分给相同的实际函数；完整 boundary variation 中的内部项在 matching variations 上相消。因此 (1) 的同构 $\alpha$ 满足

$$\begin{align}
\alpha\bigl(\mathscr H_{\mathrm{bulk,sew}}(O)\bigr)
&=\mathscr H_{\mathrm{bulk},M}(O),\\
\mathcal H_{\mathrm{sew}}(O)
&:=\overline{\mathscr H_{\mathrm{bulk,sew}}(O)},\qquad
\mathcal H_M(O):=\overline{\mathscr H_{\mathrm{bulk},M}(O)},\\
\alpha\bigl(\mathcal H_{\mathrm{sew}}(O)\bigr)&=\mathcal H_M(O).
\end{align}$$

闭包取 §6 的 graph topology，sewn quotient 使用其中的 split identification。assembly 是 homeomorphism，故最后一式是实际双向对应。有限传播先给 causally disjoint generators 的零括号，Leibniz、Jacobi 和 smooth chain rule 将其推广到两个 cores；括号分别连续，再依次对两侧取极限，将因果对易性延至闭包。乘法的连续性和括号的分别连续性也保证这些闭包仍为 Poisson 子代数。不将此闭包与 [N] 的系数分层 local closures 自动认同。§8 的 $\mathcal H(O)$ 使用本段指定的 net。

此生成类没有另加入独立的 timelike-line/history generators。比如 $\int\eta q^2\in\mathcal H_\beta$ 释放为 $\int\eta(t)\phi(t,\Gamma)^2dt\in\mathcal H(X_M)$，但全代数 membership 不证明它由上述 bulk generators 的有限 operations 生成，也不证明它已落在相应 graph closure。本文不声称这两项 membership 为假；含独立 line/boundary generators 的 net 需要两侧另行采用同一生成类。本段对 bulk densities 变分产生的边界项则始终保留。

这仍不证明任意独立定义的严格局域 family prequotient 都有保持 $O$ 的 section。式 (14) 的历史支撑可扩大到 $K_\chi$；全类满射与严格局域提升是两个命题。

## 6. 一个明确的函数拓扑及其证明范围

式 (2)–(3) 和 exact algebraic sewing 不需要指定额外的 completion。若还要求一个可检查的函数拓扑，本节采用 **compact-open derivative graph topology**，不沿用 [N] 的 factorial LF topology。

对 Fréchet $E,F$，在 $C_B^\infty(E,F)$ 上取 seminorms

$$\begin{align}
p_{C,k}(f)=
\sup_{(y,h_1,\ldots,h_k)\in C}
p\bigl(D^kf(y)[h_1,\ldots,h_k]\bigr),
\end{align}$$

其中 $C\subset E^{k+1}$ compact，$p$ 遍历 $F$ 的连续 seminorms。$\mathcal H(X)$ 的 graph topology 由
$F\mapsto(F,X_F)\in C_B^\infty(X,\mathbb R)\times C_B^\infty(X,X)$
诱导；$\mathcal H_{\beta,K}$ 同理由 $(F,U_F)$ 定义。取 compact exhaustion $K_j\Subset\operatorname{int}K_{j+1}\Subset I^\circ$，给 $\mathcal H_\beta$ 赋这些 graph spaces 的 locally convex inductive-limit topology。它们一般不是 Fréchet steps，故这里不称为原文的 LF space。

**完备性与 maps。** $\mathcal H(X)$ 和每个固定 $K$ 的 $\mathcal H_{\beta,K}$ 完备。证明如下：上述函数空间的 Cauchy net 在每个 compact set 上、每个输出 seminorm 中，其全部导数一致收敛。输出空间完备给逐点 limits；这些 limits 在每个 compact set 上连续。有限个 Fréchet spaces 的乘积是 metrizable，从而是 $k$-space，因此 limits 全局联合连续。方向 slots 的 multilinearity 逐点保留。对 base variable 的微分相容性由

$$\begin{align}
D^kf(y+th)[h_1,\ldots,h_k]-D^kf(y)[h_1,\ldots,h_k]
=\int_0^tD^{k+1}f(y+uh)[h,h_1,\ldots,h_k]\,du
\end{align}$$

在 compact line segment 上取极限得到；完整 Fréchet 输出允许该积分。故极限仍 Bastiani smooth。最后 $dF=\beta(U_F,\cdot)$ 或 $dF=-\Omega(X_F,\cdot)$ 是 graph 中的闭条件，证明所称完备性。

固定连续线性 maps 的 precomposition 和 postcomposition 连续：compact sets 的像仍 compact，输出 seminorm 拉回为连续 seminorm。因此 (10)–(14) 给连续

$$\begin{align}
\mathsf R^*:\mathcal H_{\beta,K}\to\mathcal H(X),\qquad
\mathsf B^*:\mathcal H(X)\to\mathcal H_{\beta,K_\chi}.
\end{align}$$

由 inductive-limit universal property 和 section，$\mathcal I$ 闭，(1) 也是 **underlying locally convex spaces 的 split quotient 同构**，并保持 Poisson operations；逆仍为 (14)。不借助 open mapping theorem。函数 evaluations 连续且分离元素，故此 inductive limit Hausdorff。

乘法在 $\mathcal H(X)$ 上及固定 support strata 之间联合连续：每个导数由有限 Leibniz 项组成，只需同一 compact 输入上的 scalar/vector seminorms。(5) 给括号的分别连续性：固定一个函数后，其各阶导数在 compact parameter sets 上形成 equicontinuous multilinear coefficients；另一个函数的所需 jets 只在相应 compact images 上求值。有限覆盖和方向 multilinearity 给有限个 graph seminorm 的界，再由 inductive-limit universal property 得到整个 family 空间的分别连续性。

**Poisson 括号在此 $\mathcal H(X)$ topology 下仍不联合连续。** 令
$p_0(F)=\|X_F(0)\|_{X_0}$。smooth linear functions 的 graph topology 就是 $X^\infty$ topology。任给输入 neighborhoods $U,V$，可从 $U$ 的线性部分选出有限 $S,\epsilon>0$，使

$$\begin{align}
F_n&=\epsilon w_n^{-S}Q_n\in U,\qquad
G_n=\frac{w_n^S}{2\epsilon}P_n^2,\\
\{F_n,G_n\}&=P_n,\qquad p_0(P_n)=w_n\longrightarrow\infty .
\end{align}$$

[N, §25.2] 的直接 operator norm 为
$P_{s,S+2}(T_2^{G_n})=(2\epsilon w_n)^{-1}$，
所以 $G_n\to0$ 在 $\mathcal C_{S+2}$ 中。该层到 graph topology 连续，因为 compact sets 的所有 Sobolev seminorms 有界，factorial bounds 控制所有有限导数。因此 $G_n\to0$ 于 $\mathcal H(X)$，最终在 $V$ 内。这是 neighborhood 反例，不声称 $F_n\to0$。用连续 Poisson section 和 quotient，也否定整个 $\mathcal H_\beta$ 的 released bracket 联合连续性。

本节没有证明整个 support inductive limit 完备、任何新的 canonical completed tensor identity、或某种全类 cylinder density。它也没有把新 graph topology 与旧 entire subalgebra 的 LF topology 认同。当前 exact reconstruction 只使用已证明的固定 support maps 和实际 section；这些更强的结论不作为前提。

## 7. 对称性作用与 sewing

### 7.1 Kinematic 与物理对称性

若 $g:X\to X$ 是实际 Bastiani smooth symplectomorphism，且 inverse smooth，则

$$\begin{align}
X_{g^*F}(z)
=Dg(z)^{-1}X_F(gz),\qquad g^*F=F\circ g. \tag{15}
\end{align}$$

证明由 $-\Omega(X_F(gz),Dg(z)h)$ 和 symplecticity 得到。这里
$Dg(z)^{-1}v=D(g^{-1})(gz)[v]$，
所以 $(z,v)$ 联合 smooth，不需要无限维一般线性群的额外 inversion theorem。式 (15) 证明 $g^*$ 是 $\mathcal H(X)$ 的 Poisson automorphism。

regional family 上的相应条件是：$g_Y$ 及其 inverse 满足 §4 的 smooth density-transpose 条件，并且

$$\begin{align}
Dg_Y(y)\mathsf P\,Dg_Y(y)^\flat=\mathsf P'
\end{align}$$

（同一 presentation 时 $\mathsf P'=\mathsf P$）。代入 (9) 即给 Poisson 性。这些固定 pullbacks 在 §6 graph topologies 上也连续：对 compact 参数集，$DT^\flat$ 的各阶导数关于 covector 的线性部分 equicontinuous，chain rule 控制每个所需 seminorm。inverse 给 homeomorphism。

这只定义 canonical automorphism。物理对称性还要从 off-shell action identity 检验，不以 field equation 代替该检验；它应运输 physical boundary conditions、source/field pairing、history/response 和指定的局域代表。固定 pullback、固定 observable 的 smooth orbit map、群与整个代数的联合连续作用是三个不同命题。

采用 $(gh)^*=h^*g^*$。若需要通常的左作用，取 $\alpha_g=(g^{-1})^*$，其无穷小生成元与 $g_t^*$ 的相反。

**整个 solution-translation 群的反例。** 给 $X$ 自然 Fréchet topology，令
$\tau_b^*F(z)=F(z+b)$。每个固定 $b$ 的 pullback 满足 (15)，而

$$\begin{align}
\mathcal T:X\times\mathcal H(X)&\longrightarrow\mathcal H(X),\qquad
(b,F)\longmapsto\tau_b^*F
\end{align}$$

在 $(0,0)$ 不连续。证明取 canonical modes，$w_n=(1+\lambda_n)^{1/2}\to\infty$，
$\|z\|_s^2=\sum_n(w_n^{2s+2}|Q_n|^2+w_n^{2s}|P_n|^2)$，以及连续输出 seminorm $p_0(F)=\|X_F(0)\|_0$。任给输入零邻域 $U\subset X$、$V\subset\mathcal H(X)$，选有限 $S,\epsilon>0$ 使 $\{\|b\|_S<2\epsilon\}\subset U$，并令

$$\begin{align}
b_n&=(0,\epsilon w_n^{-S}e_n)\in U,&
G_n(z)&=\frac{w_n^S}{2\epsilon}P_n(z)^2,\\
X_{G_n}(z)&=(\epsilon^{-1}w_n^SP_n(z)e_n,0),&
X_{\tau_{b_n}^*G_n}(0)&=(e_n,0). \tag{15a}
\end{align}$$

对任意 compact $C\subset X$ 与输出阶 $s$，

$$\begin{align}
\sup_{z\in C}\|X_{G_n}(z)\|_s
\le\frac{\sup_{z\in C}\|z\|_{s+S+2}}{\epsilon w_n}\longrightarrow0.
\end{align}$$

$DX_{G_n}[h]=X_{G_n}(h)$ 有同一 compact-direction 估计，更高导数为零。对 $G_n,DG_n,D^2G_n$，用 $|P_n(z)|\le w_n^{-M}\|z\|_M$ 并取 $M>S$，亦得所有 scalar compact seminorms 趋零。因此 $G_n\to0$ 于 graph topology，最终在 $V$ 内；但 $p_0(\tau_{b_n}^*G_n)=w_n\to\infty$。任意 $U\times V$ 都不能送入 $\{p_0<1\}$，证毕。这是 neighborhood proof，没有声称 $b_n\to0$。

对每个固定 $F$，$b\mapsto\tau_b^*F$ 仍 Bastiani smooth：其第 $k$ 阶方向导数是 $D^kF(\,\cdot+b)[c_1,\ldots,c_k]$，Hamiltonian vector 为相同代入下的 $D^kX_F$。Bastiani 联合连续性在每个 compact input set 上由有限覆盖给局部一致控制，沿参数线段的积分余项给 graph topology 中的微分。这不需要 $b$ 的邻域 compact，故与上述联合不连续性相容。

regional translation $g_b^Y(y)=y+\mathsf Rb$ 的 derivative transpose 为恒等，并满足 (17)。若其在 $X\times\mathcal H_\beta$ 上的联合作用连续，则由
$\mathsf R^*(g_b^Y)^*\mathsf B^*F=\tau_b^*F$
及连续 section/release 得到矛盾。因而即使 phase-space 参数作用联合 smooth、transpose 的支撑一致，也不足以给任意无限维参数群的连续表示。

**有限维参数定理。** 设 $G$ 为有限维 Lie group，$(g,z)\mapsto g_Xz$ 是实际 jointly Bastiani smooth symplectic action。则 $(g,F)\mapsto g_X^*F$ 在 $\mathcal H(X)$ 上联合 Bastiani smooth。对于 $\mathcal H_\beta$，还要求群确实作用于同一 family system；每个输入 $Z_K$ 在每个群参数的相对紧坐标邻域内有固定输出 $Z_{K'}$，phase/history map 与 $(g,y,U)\mapsto Dg_Y(y)^\flat U$ 在这些固定层中联合 smooth。inverse 满足同样条件，且逐元素保持所用 Poisson operator。

证明在 $g_0$ 的有限维坐标图中取 compact 邻域 $C_G$。对任一输出 graph seminorm $p$ 及有限群参数多重指标 $\nu$，chain rule 中的 base/direction tuples 是 $C_G$ 与 compact input tuples 的连续像，仍 compact。固定变换的各阶导数关于 covector/vector slot 线性；compact 参数上的联合连续性和有限覆盖给 equicontinuous bounds。因此有有限个输入 graph seminorms $q_j$，使

$$\begin{align}
\sup_{g\in C_G}p\bigl(\partial_g^\nu(g^*F)\bigr)
\le C_\nu\sum_jq_j(F). \tag{15b}
\end{align}$$

固定 $F$ 的 orbit 及全部参数导数由同一 compact-input 论证连续；(15b) 给局部 equicontinuity，从而 $(g,F)$ 联合连续。对参数再次求导得到同类估计，对 $F$ 的依赖线性，因此所有 mixed derivatives 联合连续，证明 Bastiani smoothness。

family 的每个支撑层先使用相同证明。对整个 support inductive limit，给定连续输出 seminorm $p$，
$q_\nu(F)=\sup_{g\in C_G}p(\partial_g^\nu(g^*F))$
在每个源层连续，故由 locally convex inductive-limit topology 的定义在并集上连续。固定 orbit 在该参数窗内落入一个固定输出层，故上述微分与联合连续性论证仍成立。

时间平移在 connected $X$ 上、有限 sign/reflection 群，以及任意固定有限维子空间的 solution translations 满足相应定理。对 histories 的时间平移，有限 slab 的适用范围仍按 §8.1 处理；这里没有为相容 slab system 另定义一个 all-time completion。

### 7.2 从作用量与响应得到 affine symmetry theorem

设区域变换为 $\phi_i'=U_i\phi_i$、$q_i'=V_iq_i$、$j_i'=S_i j_i$，保持 source–field pairing：
$\langle S_i j,U_i\phi\rangle'=\langle j,\phi\rangle$。
保持 bulk quadratic action、物理边界条件和时间定向，并将相应 causal support prescription 运输到目标区域。由变换后的方程、边界数据和 causal uniqueness，

$$\begin{align}
G_i'^\epsilon S_i&=U_iG_i^\epsilon,&
H_i'^\epsilon V_i&=U_iH_i^\epsilon,\\
\rho_i'^\epsilon S_i&=V_i^{-\dagger}\rho_i^\epsilon,&
D_i'^\epsilon V_i&=V_i^{-\dagger}D_i^\epsilon ,
\qquad \epsilon=R,A . \tag{16}
\end{align}$$

后两式还使用 action 的 boundary variation
$\langle\Pi_i',\delta q_i'\rangle'=\langle\Pi_i,\delta q_i\rangle$。
仅保存方程不足以推出这些 CPS/response identities。

若旧接口为 $q_2=Jq_1$，新接口为 $q_2'=J'q_1'$，要求

$$\begin{align}
V_2J=J'V_1 .
\end{align}$$

则
$\Pi_1'+J'^\dagger\Pi_2'
=V_1^{-\dagger}(\Pi_1+J^\dagger\Pi_2)$。
这由区域数据检验 continuity 与 flux matching 的 covariance，不使用 global propagator。

在 normalized coordinates 中设
$g_X(z)=Sz+b$、$g_Y(y)=Ly+c$，$S$ symplectic，$g_Y$ admissible，并且实际 cut equivariance 为

$$\begin{align}
L\mathsf R=\mathsf R S,\qquad c=\mathsf Rb. \tag{17}
\end{align}$$

则配对给
$\mathsf R^\flat L^\flat=S^{-1}\mathsf R^\flat$，
进而

$$\begin{align}
L\mathsf P_{\mathrm{sew}}L^\flat
&=\mathsf P_{\mathrm{sew}},\\
\mathsf R^*g_Y^*
&=g_X^*\mathsf R^*. \tag{18}
\end{align}$$

第一式证明整个 common-history presentation 的新 bracket 被保持。第二式及 inverse 证明 $\mathcal I$ 双向保持，下降为 (1) 中的 $g_X^*$。独立 global 侧用同一物理 field rule 定义 $g_M$，spatial assembly 给 $\operatorname{Ass}g_X=g_M\operatorname{Ass}$，所以整个同构 equivariant。

辅助 section 无需 equivariant：
$g_Y^*\mathsf B^*G-\mathsf B^*g_X^*G\in\mathcal I$。
这由 (18) 直接得到。cutoff 选择不会改变 quotient 上的物理作用。

### 7.3 Nonlinear symmetry 的两个不同命题

对一般 admissible $g_Y$，仅有
$g_Y\mathsf R=\mathsf Rg_X$
和 $g_X$ symplectic，只证明 induced quotient action 是 Poisson；它不证明整个 off-matching presentation 的 bracket 被保持。有限维反例已足够。下式在普通坐标协向量 $(dq,dp,dn)$ 中表示 Poisson tensor，矩阵记为 $\pi$，因此使用通常的 matrix transpose：

$$\begin{align}
Y&=\mathbb R^2_{q,p}\times\mathbb R_n,\quad
\pi=\begin{pmatrix}0&1&0\\-1&0&0\\0&0&0\end{pmatrix},\\
\mathsf R(q,p)&=(q,p,0),\qquad
g_Y(q,p,n)=(e^nq,e^np,n).
\end{align}$$

该全局 smooth diffeomorphism 在 $\mathsf R(X)$ 上为恒等，却有
$Dg_Y\,\pi\,Dg_Y^T=e^{2n}\pi$。
因此将 affine theorem (17) 的全 presentation 结论直接推广到 nonlinear maps 是 false。

不过每个实际 smooth $g:X\to X$ symplectomorphism 都有一个可以证明的 off-matching extension。令

$$\begin{align}
\mathsf N&=1-\mathsf R\mathsf B,\qquad
\mathsf N^\flat=1-\mathsf B^\flat\mathsf R^\flat,\\
\widetilde g(y)&=\mathsf Rg(\mathsf By)+\mathsf Ny . \tag{19}
\end{align}$$

由 (11)，$\mathsf B\mathsf N=0$、$\mathsf N\mathsf R=0$。因此 $\widetilde g$ 的 inverse 是同式中换 $g^{-1}$，
$\widetilde g\mathsf R=\mathsf Rg$，
$\mathsf B\widetilde g=g\mathsf B$，
且 $\widetilde g\,\widetilde h=\widetilde{gh}$。

需要补出的关键 density-transpose 公式为

$$\begin{align}
D\widetilde g(y)^\flat U
&=\mathsf B^\flat Dg(\mathsf By)^{-1}\mathsf R^\flat U
+\mathsf N^\flat U . \tag{20}
\end{align}$$

证明使用 (11) 逐项配对和 (15) 的 symplectic adjoint。右侧联合 smooth，并将 $Z_K$ 送到 $Z_{K\cup K_\chi}$；$Dg$ 自身即使没有 uniform finite loss 也不破坏这个 compact-support 结论。inverse 同样成立，所以 (19) 满足 §4 的完整 admissibility。由
$\mathsf R^\flat\mathsf B^\flat=1$、
$\mathsf R^\flat\mathsf N^\flat=0$ 和 $\mathsf N\mathsf R=0$，得到

$$\begin{align}
D\widetilde g\,\mathsf P_{\mathrm{sew}}D\widetilde g^\flat
=\mathsf R Dg\,Dg^{-1}\mathsf R^\flat
=\mathsf P_{\mathrm{sew}}. \tag{21}
\end{align}$$

因此 (19) 确实在整个 smooth family algebra 上作用并下降为 $g$。这补足了“相应 adjoints 光滑”的省略步骤。

该 extension 依赖 $\mathsf B$，可能非局域，也一般不保持旧 $\mathsf P_0$ 或每份区域 physical action。它证明 sewn canonical transformations 在 presentation 中可以实现；从独立区域识别物理对称性仍应使用 (16)–(18)，不能由 (19) 反向宣称任意 canonical map 是物理 symmetry。

## 8. 标量模型中的对称性与 charges

### 8.1 Sign、reflection、time translation 与 time reversal

同步 sign change $\phi_i,q_i,\Pi_i\mapsto-\phi_i,-q_i,-\Pi_i$ 保持作用量、CPS、responses 和 matching；它是 loss-zero admissible map。等长 cells 的空间 reflection 同时交换 field 与 response 标签，在朝 cut 的坐标中不额外改变 $\Pi_1+\Pi_2$ 的符号。两者满足 (17)，所以在 regional families 与 sewn/global quotient 上作用。

physical time translation 取 $\phi(t)\mapsto\phi(t+\tau)$，必须同时取 $q(t)\mapsto q(t+\tau)$。在相容 slabs 上，移动 $\chi$ 后 normalized coordinates 是 homogeneous wave evolution 加 history translation；固定 cutoff 比较时再加两个 lifts 的差，其 transpose 已由 [N, §23] 控制。一般的 $\tau\in\mathbb R$ 作用于 all-time theory 或相容 slab system，不是任意单个固定有限 $I$ 的 automorphism。

connected evolution 的
$D(u,v)=(v,-Ku)$ 和
$H=(\|v\|^2+\langle u,Ku\rangle)/2$
满足 $X_H=Dz$，所以

$$\begin{align}
\frac{d}{d\tau}U_\tau^*F=U_\tau^*\{F,H\}.
\end{align}$$

这是实际 functional-calculus wave group 的 flow statement。$H\in\mathfrak A\subset\mathcal H$；对一般 smooth vector fields，Fréchet smoothness 本身不保证局部或全局 flow。

在参考 slice 上 $\Theta(u,v)=(u,-v)$ 满足
$\Theta^*\Omega=-\Omega$，交换 $G^R,G^A$，给 anti-Poisson covariance
$\{\Theta^*F,\Theta^*G\}=-\Theta^*\{F,G\}$。
它不属于时间定向保持的 Poisson theorem (16)。

local-net 的方向须同时声明 spacetime 与 field conventions。若 spacetime map 为 $k$、active field transformation 为 $\phi\mapsto\phi\circ k^{-1}$，则 observable pullback 将 $\mathcal H(O)$ 送到 $\mathcal H(k^{-1}O)$。上述 $\phi(t+\tau)$ 对应 $k(t)=t-\tau$，故将 $O$ 的 time support 送到 $O+\tau$；不能仅凭符号 $g^*$ 猜测方向。移动 cut 的几何变换是两份 regional presentations 之间的 covariance，只有保留 cut 时才是同一 presentation 的 automorphism。

### 8.2 移动 history 的无穷小作用与能量 sewing

先要求 $\xi=(Z_\xi,\zeta_\xi):Y\to Y$ Bastiani smooth，并对每个 $K$ 有固定 $K'\Subset I^\circ$ 及 jointly smooth map
$D\xi^\flat:Y\times Z_K\to Z_{K'}$，对 covector slot 线性，满足

$$\begin{align}
\beta(U,D\xi(y)h)=\beta(D\xi(y)^\flat U,h).
\end{align}$$

在此准入条件下，无穷小 family 作用为

$$\begin{align}
\delta_\xi F=-\sum_i\Omega_i(V_{F,i},Z_{\xi,i})
+\langle A_F,\zeta_\xi\rangle . \tag{22}
\end{align}$$

对 $DF[\xi]=\beta(U_F,\xi)$ 求导，Hessian 对称性处理第一项，transpose 处理第二项，得到

$$\begin{align}
U_{\delta_\xi F}
=DU_F[\xi]+D\xi^\flat U_F
\in C_B^\infty(Y,Z_{K\cup K'}). \tag{22a}
\end{align}$$

因此 $\delta_\xi$ 确实在代数内取值，并由 scalar chain rule 满足乘法 Leibniz。对于 §2.3 的常 $\mathsf P$，完整 Poisson defect 为

$$\begin{align}
\delta_\xi\{F,G\}_{\mathsf P}
-\{\delta_\xi F,G\}_{\mathsf P}-\{F,\delta_\xi G\}_{\mathsf P}
&=-\beta\bigl(U_F,(D\xi\mathsf P+\mathsf P D\xi^\flat)U_G\bigr). \tag{22b}
\end{align}$$

故 $D\xi\mathsf P+\mathsf P D\xi^\flat=0$ 是 Poisson derivation 的充分条件。若还有
$\xi_Y(\mathsf Rz)=\mathsf R\xi_X(z)$，则 chain rule 给
$\mathsf R^*\delta_{\xi_Y}=\delta_{\xi_X}\mathsf R^*$；matching ideal 稳定，作用下降到商。

只要求 $\xi$ smooth 不够。$\xi(z,q)=(u_0q(t_*),0)$ 有实际全局 smooth flow，但对合法 $F(z,q)=\ell(z)$、$\ell(u_0)\ne0$，
$\delta_\xi F=\ell(u_0)q(t_*)\notin\mathcal H_\beta$。缺失的正是产生 delta 的 $D\xi^\flat$ 准入条件。式 (22a) 的第二项不能省略；从满足 §7.1 参数定理的实际作用微分，则这项及其固定支撑正则性自动保留。

只要 $\zeta_\xi$ 在物理 $I^\circ$ 内非零，这不是旧 vertical bracket 的 inner derivation：合法的
$C_\eta(q)=\int\eta q$
在 $\mathsf P_0$ 下 central，却可选 $\eta$ 使
$\delta_\xi C_\eta=\langle\eta,\zeta_\xi\rangle\ne0$。
仅改变 $I$ 外辅助延拓的方向不可用作这个反例。

对 time translation，off shell 有 $\delta_t\mathcal L=\partial_t\mathcal L$，故 Noether charge 是 energy。但在固定 arbitrary $q$ 的 regional problem 中 $\delta_tq=\dot q$ 不一定允许；其 on-shell balance 为

$$\begin{align}
\frac{dH_i(t)}{dt}
=-\Pi_i(t)\dot q_i(t).
\end{align}$$

不能据此把 sharp $H_i(t)$ 当作任意 fixed-history phase space 内生成 physical time translation 的 Hamiltonian。

取 (8) 中 $\int\eta\,dt=1$。在 matching fields 上，两份 integrals 相加等于 conserved connected energy，因此

$$\begin{align}
\mathsf R^*(H_1[\eta]+H_2[\eta])=H.
\end{align}$$

完整微分中的显式边界项
$-\eta(\Pi_1+\Pi_2)\delta q$
在 action-derived matching 后为零；$\mathsf S_i^\dagger a_i$ 仍通过 (12) 保留。于是其 released Hamiltonian vector 恰为 $Dz$。这证明 charges sewing，不能用两份固定-history vectors 的直接相加替代。

### 8.3 Solution translations 的 off-shell 条件与中心项

给每侧一个固定 smooth solution $s_i$，$L_is_i=0$，$s_i(t,0)=0$。变换 $\phi_i\mapsto\phi_i+s_i$ 是两份 fixed-history phase spaces 之间的 affine symplectic map，切向变分的 history 固定；不在任意变动 history 的整个 $Y$ 上另宣称一个守恒 symplectic form。其 off-shell identity 为

$$\begin{align}
\delta_{s_i}\mathcal L_i
&=\partial_t(\phi_i\dot s_i)
-\partial_{y_i}(\phi_i s_i')-\phi_iL_is_i,\\
\delta_{s_i}S_i
&=\left[\int\phi_i\dot s_i\,dy_i\right]_{t_-}^{t_+}
+\int q_i\Pi_{s_i}\,dt,\qquad
\Pi_{s_i}=-s_i'(\ell_i). \tag{23}
\end{align}$$

这里只使用固定 parameter $s_i$ 的方程，没有对正在变分的 $\phi_i$ 使用方程。区域接口项通常非零：在固定 $q_i$ 上它是背景决定的 boundary term，而 $\gamma s_i\ne0$ 时变换还移动 history。故它应称为带这一 boundary functional 的 family covariance，不能不加条件地称为保存单个 fixed-history action 的 Noether symmetry。

若
$\gamma s_1=\gamma s_2$ 且
$\Pi_{s_1}+\Pi_{s_2}=0$，
区域 reconstruction 给 $b\in X_{\mathrm{sew}}$；共同 $q$ 下 (23) 的内部 boundary terms 相消，得到 connected quasi-symmetry。Noether generator 为

$$\begin{align}
Q_b(z)=-\Omega(b,z),\qquad X_{Q_b}=b,\qquad
\{Q_b,Q_c\}=-\Omega(b,c). \tag{24}
\end{align}$$

这不是 massive Dirichlet scalar 的 constant-field shift；常数场一般不满足方程和物理边界。时间平移把 $b$ 送到 $U_tb$，并不逐个与所有 solution translations 交换。

式 (24) 使用参考 slice 的标签 $b$。在时刻 $t$ 的 Cauchy 变量 $z$ 上，同一 spacetime solution shift 的 charge 为

$$\begin{align}
Q_b(t,z)&=-\Omega(U_tb,z),\\
\partial_tQ_b(t,z)+\{Q_b(t,\cdot),H\}(z)&=0. \tag{24a}
\end{align}$$

第二式由 $X_H=Dz$ 和 $\Omega(Dv,z)+\Omega(v,Dz)=0$ 得到；沿 $z(t)=U_tz_0$，charge 等于 $-\Omega(b,z_0)$。因此 Noether conservation 包含显式时间导数，不是对固定标签声称 $\{Q_b,H\}=0$。

更一般地，若连续线性 $A:X\to X$ 满足
$\Omega(Az,w)+\Omega(z,Aw)=0$，$b\in X$，则

$$\begin{align}
Q_{A,b}(z)&=-\tfrac12\Omega(Az,z)-\Omega(b,z),\\
X_{Q_{A,b}}&=Az+b,\\
\{Q_{A,b},Q_{B,c}\}
&=Q_{[A,B],Ac-Bb}-\Omega(b,c). \tag{25}
\end{align}$$

这里 $[A,B]=AB-BA$。对任意 $h$ 求导，$\Omega$-skewness 将两个 quadratic terms 合并，证明第二行；展开两份向量的 $-\Omega$ 配对，分别比较 quadratic、linear、constant terms，证明第三行。此证明适用于整个 smooth phase space。若 $A$ 还有统一 loss $d$，则 charge 同时属于 [N] 的 $\mathcal A_d$；本节的 $\mathcal H$ membership 只需 $A$ 连续。

translations 的 Lie algebra 虽为 abelian，(24) 的常数 cocycle 可以非零；给 charges 加常数不能消去它。实际区域 charges 的 integrability、flux 和 finite flows 仍各需验证，不能由一个可下降的 algebra automorphism 自动推出。

在本文**整个线性 connected CPS $X$** 上，还能直接证明 smooth symplectic vector fields 的 Hamiltonian integrability。设 $\xi:X\to X$ smooth，且
$\Omega(D\xi(z)h,k)+\Omega(h,D\xi(z)k)=0$。定义

$$\begin{align}
Q_\xi(z)&=-\int_0^1\Omega(\xi(tz),z)\,dt,\qquad
DQ_\xi(z)[h]=-\Omega(\xi(z),h),\qquad X_{Q_\xi}=\xi. \tag{25a}
\end{align}$$

为证明中间一式，令 $\alpha_z(h)=-\Omega(\xi(z),h)$。symplectic 条件给
$(D\alpha)_z[h](k)=(D\alpha)_z[k](h)$，所以 $DQ_\xi(z)[h]$ 的 integrand 是
$t(D\alpha)_{tz}[z](h)+\alpha_{tz}(h)=\partial_t[t\alpha_{tz}(h)]$。
积分给 $\alpha_z(h)$；compact 参数积分及其各阶导数的局部一致控制给 Bastiani smoothness。故 $Q_\xi\in\mathcal H(X)$，且 $\xi=Az+b$ 时恢复 (25)。这利用整个线性 domain，不能直接套在只有局部定义的向量场上；也不证明 flow 存在、charge 局域、守恒，或该变换满足 physical action 的 Noether 条件。

### 8.4 原类的有限作用反例与本类的改进

单个 canonical mode 的
$g_t(q,p)=(q,p+tq^2)$
有全局 inverse、保持 $dp\wedge dq$，由 $K=-q^3/3$ 生成。$K$ 属于原 polynomial core，故原类的 $\{\cdot,K\}$ 合法；但对 $t\ne0$，

$$\begin{align}
g_t^*e^{ip}=e^{i(p+tq^2)}\notin\mathfrak A_{\mathbb C}.
\end{align}$$

限制到 $p=0$ 后，weighted Taylor terms 为
$\sqrt{(2n)!}|t|^nR^{2n}/n!$，相邻项比值趋于 $2|t|R^2$，对大 $R$ 发散。这排除了“complete polynomial canonical flow 必然保持原 entire 类”，且失败并非来自 flow 的奇点。

在 $\mathcal H_{\mathbb C}$ 中，(15) 则证明这一有限作用合法；(19)–(21) 给其 smooth regional-family extension 和 equivariant sewing。这个 shear 一般不保存 free scalar energy 或 physical local net，所以它是 canonical 例子，不是额外的物理时空对称性。

## 9. 结论的证明等级

| 分类 | 结论 | 本文证据 |
|---|---|---|
| 已证明 | $\mathcal H(X)$、固定 compact density 的 $\mathcal H_\beta(Y)$ 及其有限 smooth calculus 为实际 Poisson 函数代数 | (2)–(6)，完整 Hessian 与 vector-valued smoothness。 |
| 已证明 | 整个 smooth finite-jet bulk/boundary density 类、能量、smeared responses 的 membership | (7)–(8)，固定 support 的 forward/transpose maps。 |
| 已证明 | 全类 exact sewing、独立 global 同构、有限次 partial release | (10)–(14) 的实际双向 maps、sections 和区域 PDE 唯一性。 |
| 已证明 | 固定 $K$ graph spaces 和 $\mathcal H(X)$ 完备；重建为连续 split quotient | §6 的导数极限、闭 graph 条件和连续 section。 |
| 已证明 | 任意 actual smooth symplectomorphism 保持 $\mathcal H$；有明确 admissible off-matching extension | (15)、(19)–(21)。 |
| 已证明 | matched smooth-bulk/finite-jet quotient cores 及其 graph closures 的 local-net 同构 | §5.4 的完整 density-jet patching、assembly homeomorphism 与分别连续性。 |
| 条件成立 | 有限维 Lie group 在代数上的联合 Bastiani smooth 作用 | §7.1 的实际参数作用、固定层 transpose 和局部统一支撑；(15b) 给局部 equicontinuity。 |
| 条件成立 | 无穷小 family 作用在代数内闭合、保持 Poisson bracket 并下降 | (22a) 的 density-transpose 准入、(22b) 的零 defect 条件及 cut equivariance。 |
| 已证明 | 整个线性 connected CPS 上 smooth symplectic vector field 的 Hamiltonian integrability | (25a) 的径向积分；不蕴涵 flow、locality 或 Noether conservation。 |
| 条件成立 | regional physical symmetries 与局域 net、history release 相容 | 逐项满足 action/response covariance、map/transpose、cut 与 support 条件；本 scalar 的明确例子见 §8。 |
| 反例否定 | 原 entire 类包含全部 smooth detector responses，或保持任意 complete canonical flow | Gaussian 和 polynomial shear，§§3.1、8.4。 |
| 反例否定 | fiberwise smooth 或 arbitrary smooth history-coordinate change 足以释放 | $q(t_*)$ 与 delta transpose，§§2.2、4。 |
| 反例否定 | nonlinear cut equivariance 自动给整个 presentation 的 Poisson automorphism | $g_Y(q,p,n)=(e^nq,e^np,n)$，§7.3。 |
| 反例否定 | 所选 graph topology 上 $\mathcal H(X)$ 的 Poisson 括号联合连续 | §6 的无限高频 neighborhood 反例。 |
| 反例否定 | 整个自然 Fréchet solution-translation 群在当前代数拓扑上联合连续作用 | (15a)；固定 pullbacks 连续且固定 observable 的 orbit smooth，仍不足够。 |
| 反例否定 | 任意 smooth family vector 自动给代数内 infinitesimal action | §8.2 的 $\xi(z,q)=(u_0q(t_*),0)$ 与 delta transpose。 |
| 未证明 / 未声称 | 全代数中 admitted line/boundary observables 自动属于本 smooth-bulk local core 或其 graph closure | §5.4 仅选定 matched bulk generators，不由全类 membership 推出 local-net membership。 |
| 仍开放 / 未声称 | 整个 support inductive limit 完备、新 tensor identity、全类 cylinder density、strict-local prequotient 的 onto、无限切割一致控制 | 不作为 (1) 的前提；旧 factorial LF theorem 不能自动移植。 |

这个对象仍依赖 smooth classical domain。point fields、sharp corner evaluations 或一般 distributions 可以另作 field maps/部分定义的 pairing，但不能在没有 smooth Hamiltonian vector 时加入 everywhere-defined scalar Poisson algebra。高阶 jets 在 $X^\infty$ 上合法，不意味着它们都延拓到有限能量 $X_0$。本文没有分类全部物理 observables，也没有开展量子化、非线性动力学或 gauge sewing。

## 10. 来源与独立核验

三份输入稿为 [01_audit_and_repairs](../../../01_audit_and_repairs.md)、[02_symmetries_and_sewing](../../../02_symmetries_and_sewing.md)、[03_which_observables_and_a_larger_algebra](../../../03_which_observables_and_a_larger_algebra.md)。它们的主要正定理在上述明确条件下成立；新增的证明细节是 (4)、(20)、§6 的 graph topology，以及 (23) 的区域 boundary-functional 限定。三个输入文件保留原样，复核结论写入 [N, §27] 和本笔记。

2026-09-06 再复核固定在 `667e62f3b1ce12e55c9fa1ceca918fc37f7f03df` 的 [第二轮审计](../../../audit_smooth_algebra_and_symmetries.md) 及其 [bundle 副本](../../../smooth_regional_audit_667e62f/audit_smooth_algebra_and_symmetries.md)，两份文本逐字相同。**审查结论：其主同构、固定对称性及新增反例的 claims 在各自声明的条件下成立。** 参数作用须采用 §7.1 的固定层联合 smoothness 和统一支撑量词；局域 net 采用 §5.4 的 matched 整个 densities，而不将所有 boundary families 自动纳入同一 bulk core。本轮补入这些证明、(22a)–(22b) 的无穷小准入与 defect、(24a) 的时间依赖守恒以及 (25a) 的 connected integrability；(10)–(14) 的全类 exact-onto 机制保留。

[Neeb–Sahlmann–Thiemann](https://arxiv.org/abs/1402.6818) 提供以选定 smooth functions 和 Hamiltonian vectors 定义 weak Poisson 结构的背景；本文的 closure 与 sewing 由上述公式直接证明。其微分分离条件不能在本辅助 $Y$ 的 $I$ 外 history directions 上直接套用。

[Hawkins–Rejzner–Visser, v3](https://arxiv.org/abs/2312.15203v3) 确实给出通常 microcausal class 的 Peierls closure 反例和 equicausal 修补；这支持外部稿关于“逐背景条件不够”的限定。本文不借用其 theorem 证明 timelike-boundary release，也不对该文的函数类作进一步认同。

**Verified:** 本文的全类 closure、compact-support transpose、exact onto、symmetry equivariance 和 graph-topology 命题分别有上述解析证明。下列 fresh-kernel Mathematica 程序的 34 个命名 residual groups 全零：保留原有 25 组 convention、mixed-gradient、release/section、nonlinear lift、charge/current 检查，新增 9 组检查完整 infinitesimal gradient/defect、translation 反例系数、时间依赖 charge、径向积分、Sobolev energy vector 和 Jacobi。另输出非零的 off-matching Poisson defect；零 residual 是对该反例公式的核验，不把该 map 误判为 Poisson。本轮也在仓库外使用 Sage 自带的 Python/SymPy 重跑所提供的 `checks.py`，31 组全部通过；审计输入文件未改动。

**Assumptions:** $m>0$、固定有限个正长度 intervals、物理外端 Dirichlet、无真实 interface action、物理 $j=0$；smooth Cauchy data、histories 和 fixed compact-time smooth densities；有限次 composition。symplectomorphisms 须有 actual smooth inverses，不能用形式 Lie series 代替 flows。联合群作用、infinitesimal derivations 和 local nets 分别保留 §§7.1、8.2、5.4 的参数、transpose 与生成类条件。

**Not verified by finite checks:** 无限维 PDE/trace bounds、Bastiani smoothness、完备性、全类满射、群作用的联合 smoothness 与非联合连续性均不是有限矩阵 residuals 的推论；证据分别是 [N] 的解析引理和本文正文。前轮三份输入稿所称的“22 checks”仍不作为本轮证据；第二轮 bundle 原未附 `checks_results.json`，本次的“31 组通过”来自重跑实际提供的脚本。strict-local prequotient onto、line observables 的 bulk-net membership 及 §9 列明的额外 completion/tensor 性质未由本轮补证。


可独立重跑的有限符号检查：

```wolfram
ClearAll["Global`*"];

j={{0,1},{-1,0}}; om=-j; x={q,p};
grad[f_,xx_]:=D[f,#]&/@xx;
jac[v_,xx_]:=Table[D[v[[i]],xx[[k]]],{i,Length[v]},{k,Length[xx]}];
pb[f_,g_]:=grad[f,x].j.grad[g,x];
aa={{a,b},{c,-a}}; ab={{d,e},{f,-d}};
bv={b1,b2}; cv={c1,c2};
charge[am_,av_]:=-(am.x).om.x/2-av.om.x;
vars={q1,p1,q2,p2,h};
be=ArrayFlatten[{{j,0 j,ConstantArray[0,{2,1}]},
 {0 j,j,ConstantArray[0,{2,1}]},
 {ConstantArray[0,{1,2}],ConstantArray[0,{1,2}],{{1}}}}];
ug[ff_]:=Inverse[Transpose[be]].grad[ff,vars];
rr={{1,0},{0,1/2},{1,0},{0,1/2},{1,0}};
bb={{1/4,0,1/4,0,1/2},{0,1,0,1,0}};
rf=j.Transpose[rr].Transpose[be];
bf=-Inverse[Transpose[be]].Transpose[bb].j;
pp0=DiagonalMatrix[{1,1,1,1,0}]; pps=rr.rf;
nn=IdentityMatrix[5]-rr.bb; nf=IdentityMatrix[5]-bf.rf;
familyBracket[ff_,gg_,po_]:=ug[ff].be.po.ug[gg];
rel[ff_]:=ff/.Thread[vars->rr.x];
ff=Exp[-(q1+h)^2]+p2 Sin[h];
gg=p1^2+q2 Cos[h]+h^3;
sh[xx_,tt_]:={xx[[1]],xx[[2]]+tt xx[[1]]^2};
sg=jac[sh[x,tau],x]; sgAt=sg/.Thread[x->bb.vars];
lift=rr.sh[bb.vars,tau]+nn.vars;
dl=jac[lift,vars];
dlf=Inverse[Transpose[be]].Transpose[dl].Transpose[be];
liftInv=rr.sh[bb.vars,-tau]+nn.vars;
bad={Exp[n] q,Exp[n] p,n}; badVars={q,p,n};
badJac=jac[bad,badVars];
p3={{0,1,0},{-1,0,0},{0,0,0}};
lag[v_]:=(D[v,t]^2-D[v,y]^2-m^2 v^2)/2;
wave[v_]:=D[v,{t,2}]-D[v,{y,2}]+m^2 v;
phi=ph[t,y]; sol=ss[t,y]; variation=hh[t,y];
linearVar=D[lag[phi+eps sol],eps]/.eps->0;
en=(D[phi,t]^2+D[phi,y]^2+m^2 phi^2)/2;
enVar=D[eta[t](D[phi+eps variation,t]^2+
 D[phi+eps variation,y]^2+m^2(phi+eps variation)^2)/2,eps]/.eps->0;
enEuler=-D[eta[t]D[phi,t],t]-eta[t]D[phi,{y,2}]+eta[t]m^2 phi;
pair={v1,v2,v3,v4,ah}; zz={dq,dp};
raw=<|
"canonicalMomentGradient"->(j.grad[charge[aa,bv],x]-aa.x-bv),
"affineCentralCocycle"->(pb[charge[aa,bv],charge[ab,cv]]-
 charge[aa.ab-ab.aa,aa.cv-ab.bv]+bv.om.cv),
"gaussianHamiltonianVector"->(j.grad[Exp[-q^2],x]-{0,2q Exp[-q^2]}),
"gaussianCoefficientRatio"->(Limit[rad^2 Sqrt[(2n+2)(2n+1)]/(n+1),n->Infinity]-2rad^2),
"polynomialShearSymplectic"->(Transpose[sg].om.sg-om),
"polynomialShearHamiltonian"->(j.grad[-q^3/3,x]-{0,q^2}),
"releaseTransposePairing"->(pair.be.rr.zz+(rf.pair).om.zz),
"sectionTransposePairing"->(-(x.om.bb.vars)-(bf.x).be.vars),
"splitAndDualSplit"->{bb.rr-IdentityMatrix[2],rf.bf-IdentityMatrix[2]},
"fullMixedGradientBracket"->Table[
 ug[familyBracket[ff,gg,po]]-
 jac[ug[ff],vars].po.ug[gg]+jac[ug[gg],vars].po.ug[ff],{po,{pp0,pps}}],
"releaseFullGradient"->(j.grad[rel[ff],x]-(rf.ug[ff]/.Thread[vars->rr.x])),
"releasePoisson"->(rel[familyBracket[ff,gg,pps]]-pb[rel[ff],rel[gg]]),
"nonlinearLiftTranspose"->(dlf-(bf.Inverse[sgAt].rf+nf)),
"nonlinearLiftPoisson"->(dl.pps.dlf-pps),
"nonlinearLiftInverse"->((liftInv/.Thread[vars->lift])-vars),
"nonlinearCutEquivariance"->((lift/.Thread[vars->rr.x])-rr.sh[x,tau]),
"nonlinearSectionEquivariance"->(bb.lift-sh[bb.vars,tau]),
"cutEquivarianceAloneNotPoisson"->(badJac.p3.Transpose[badJac]-Exp[2n]p3),
"solutionShiftOffShellCurrent"->(linearVar-D[phi D[sol,t],t]+D[phi D[sol,y],y]+phi wave[sol]),
"finiteSolutionShiftBoundaryCurrent"->(lag[phi+sol]-lag[phi]-
 D[(phi+sol/2)D[sol,t],t]+D[(phi+sol/2)D[sol,y],y]+(phi+sol/2)wave[sol]),
"energyFullEulerAndBoundaryCurrents"->(enVar-enEuler variation-
 D[eta[t]D[phi,t]variation,t]-D[eta[t]D[phi,y]variation,y]),
"energyBalance"->(D[en,t]-D[D[phi,y]D[phi,t],y]-D[phi,t]wave[phi]),
"timeReversalAntiSymplectic"->(DiagonalMatrix[{1,-1}].om.DiagonalMatrix[{1,-1}]+om),
"omittedHistoryDerivative"->(rel[ug[h].be.{0,0,0,0,dq}]-dq)
|>;
AppendTo[raw,"smoothGraphBracketCounterexampleNorm"->
 (DiagonalMatrix[{ww^(ss+1),ww^ss}].
 {{0,ww^loss/(2ee)},{0,0}}.
 Inverse[DiagonalMatrix[{ww^(ss+loss+3),ww^(ss+loss+2)}]]-
 {{0,1/(2ee ww)},{0,0}})];

xi={q1 h,p1^2,q2 p2,Sin[q1],h p1};
dxi=jac[xi,vars]; dxif=Inverse[Transpose[be]].Transpose[dxi].Transpose[be];
deltaF=grad[ff,vars].xi; deltaG=grad[gg,vars].xi;
AppendTo[raw,"infinitesimalFullGradient"->
 (ug[deltaF]-jac[ug[ff],vars].xi-dxif.ug[ff])];
AppendTo[raw,"infinitesimalPoissonDefect"->
 (grad[familyBracket[ff,gg,pps],vars].xi-
 familyBracket[deltaF,gg,pps]-familyBracket[ff,deltaG,pps]+
 ug[ff].be.(dxi.pps+pps.dxif).ug[gg])];
gn=ww^loss p^2/(2ee); bn={0,ee ww^(-loss)};
AppendTo[raw,"jointTranslationOutputVector"->
 ((j.grad[gn,x]/.Thread[x->bn])-{1,0})];
AppendTo[raw,"jointTranslationGradientScale"->
 (DiagonalMatrix[{ww^(ss+1),ww^ss}].jac[j.grad[gn,x],x].
 Inverse[DiagonalMatrix[{ww^(ss+loss+3),ww^(ss+loss+2)}]]-
 {{0,1/(ee ww)},{0,0}})];
AppendTo[raw,"jointTranslationParameterScale"->(ww^loss bn[[2]]-ee)];
waveU={{Cos[omega t],Sin[omega t]/omega},
 {-omega Sin[omega t],Cos[omega t]}};
qt=-(waveU.bv).om.x; enMode=(p^2+omega^2 q^2)/2;
AppendTo[raw,"timeDependentSolutionCharge"->(D[qt,t]+pb[qt,enMode])];
homH=q^3 p+p^2/2+q+3;
homV=j.grad[homH,x];
radialQ=-Integrate[(homV/.Thread[x->lam x]).om.x,{lam,0,1}];
AppendTo[raw,"radialHamiltonianHomotopy"->
 {radialQ-homH+(homH/.Thread[x->{0,0}]),j.grad[radialQ,x]-homV}];
metricEnergy=(ww^(2ss+2)q^2+ww^(2ss)p^2)/2;
AppendTo[raw,"sobolevEnergyHamiltonianVector"->
 (j.grad[metricEnergy,x]-{ww^(2ss)p,-ww^(2ss+2)q})];
fa=q1^2 h+p2^3; ga=p1 q2+h^2; ha=q1 p1+p2 h;
AppendTo[raw,"fullFamilyJacobi"->Table[
 familyBracket[fa,familyBracket[ga,ha,po],po]+
 familyBracket[ga,familyBracket[ha,fa,po],po]+
 familyBracket[ha,familyBracket[fa,ga,po],po],{po,{pp0,pps}}]];

checks=Map[FullSimplify[Flatten[{#}],Assumptions->ww>0&&ee>0]&,raw];
<|"residualGroups"->checks,
"allResidualsZero"->And@@(TrueQ[#==0]&/@Flatten[Values[checks]]),
"omittedHistoryTerm"->1,
"offMatchingPoissonDefect"->(Exp[2n]-1)p3|>
```
