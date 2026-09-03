# History-Indexed Observable Algebra Gluing

研究起点：2026-09-03。本文独立于 `Weyl algebra factorization.md`；先定义对象、实施 kill tests，再给出有明确输入的 continuum theorem。

**结论先行。** 本文在 free massive scalar 的两段及三段 interval 范畴中证明以下闭合链：

$$
\boxed{
(\text{affine CCR fibers}+\Phi+T^{R/A}+R+\text{local net})
\ \Longrightarrow\ (G,H,\rho,D)^{R/A}
\ \Longrightarrow\ \text{causal interface elimination}
\ \Longrightarrow\ \mathfrak A_{\rm sew}
\ \xrightarrow[\cong]{\operatorname{Ass}_*}\ \mathfrak A_M.}
$$

三段中间区域保留两个 ports，逐次消元与 simultaneous relation 相同，由 regional source flattening 定义 intrinsic CCR associator。这里的正目标是 **enriched boundary-response CCR composition/deformation**。bare fixed-history on-shell algebras 的 ordinary field-preserving fusion 已被 same-side/cross-interface CCR correction 排除，列为 negative/no-go；crossed product、cotensor 和 Connes fusion 仅是未来 representation theorem candidates。smooth transport/response 与 full-energy Weyl 层分别声明，后者依赖本 interval 的解析延拓证明。

本文用 **proved** 表示在逐条声明的模型和范畴内有下文证明；**conditional** 表示蕴含关系成立而应用所需的解析或结构前提未完成；**open** 表示尚无构造或证明；**false** 表示给出反例。**Checked symbolically** 只指末节列出的恒等式，不能代替这些等级。

## 1. Action、方向、定义域与 CCR 符号

先取实 scalar，$m>0$，无 gauge，无真实 interface field/action，signature $(-,+)$。基准为 $x\in[-L,L]$，$L>0$，物理外端 Dirichlet；分区 $\Sigma_1=[-L,0]$、$\Sigma_2=[0,L]$。采用原稿坐标 $y_1=x+L$、$y_2=L-x$，两者都朝人工切口增加。有限 slab 为 $I=[t_-,t_+]$；传播子使用全实时间，slab statements 由其限制得到。

$$
\begin{aligned}
S_i[\phi_i]&=\frac12\int_I dt\int_0^Ldy_i
\left(\dot\phi_i^2-(\phi_i')^2-m^2\phi_i^2\right),\\
P\phi_i&=(-\partial_t^2+\partial_{y_i}^2-m^2)\phi_i=0,\\
q_i&=\phi_i|_{y_i=L},\qquad \Pi_i^{\rm out}=-\phi_i'(L),\\
\delta S_i&=\int P\phi_i\,\delta\phi_i
+\left[\int_0^L\dot\phi_i\delta\phi_i\,dy_i\right]_{t_-}^{t_+}
+\int_I\Pi_i^{\rm out}\delta q_i\,dt.
\end{aligned}
$$

先认同 $q_2=J_{12}q_1$，再释放共同变分，才得 $\Pi_1+J_{12}^*\Pi_2=0$。本 benchmark 的 scalar identification 是 $J_{12}=\mathrm{id}$；故 $\phi_1'(L)+\phi_2'(L)=0$。以下省略 response 的 out 上标，但不改变方向。

必须分开 **CPS tangent pairing** 和 **observable Poisson pairing**。保留原稿

$$
\Omega_i=\int\delta\dot\phi_i\wedge\delta\phi_i,\qquad
\Omega_i(z,w)=\int(v_z u_w-v_wu_z),\qquad \{Q,P_Q\}=1.
$$

若 $F_z(\psi)=\Omega_i(z,\psi)$，则 $\{F_z,F_w\}=-\Omega_i(z,w)$。本文用 $\sigma_{\rm obs}$ 表示 observable labels 上的 Poisson form，Weyl 关系为

$$
U(F)U(G)=e^{-i\hbar\sigma_{\rm obs}(F,G)/2}U(F+G),\qquad
[\widehat F,\widehat G]=i\hbar\sigma_{\rm obs}(F,G)\mathbf1.
$$

这里 $U(F)$ 的形式含义是 $\exp(i\widehat F)$。不能在没有 label-to-observable map 时同时把 $\sigma_{\rm obs}$ 写成 $\Omega_i$。`Weyl algebra factorization.md` 采用 $\mathfrak W(\mathcal X,\Omega)$ 的抽象 tangent-label 约定；其保辛 assembly theorem 仍成立。与本文物理 smeared-field CCR 比较时，应在两侧同时采用 observable dual、即 $-\Omega$；若保持原 phase，则对应 opposite algebra。绝不以一个没有说明的负号认同物理场或时间演化。

具体校准：记 $K_{i,D}=-\partial_{y_i}^2+m^2$，$D(K_{i,D})=H^2(0,L)\cap H_0^1(0,L)$。令 $G_{i,D}^{\rm ret/adv}$ 是 $\partial_t^2+K_{i,D}$ 的 retarded/advanced inverse。则物理 Peierls 核取

$$
E_{i,D}=G_{i,D}^{\rm adv}-G_{i,D}^{\rm ret},\qquad
\{\phi_i(f),\phi_i(g)\}=\int f E_{i,D}g.
$$

这也等于 $P$ 的 retarded-minus-advanced inverse。单振子核是 $-\sin\omega(t-s)/\omega$，给出 $[Q(t),P_Q(t)]=i\hbar$；这个符号已经独立核查。

## 2. 单个 prescribed-history 子区域究竟是什么

### 2.1 Source/history chart 与 regional affine torsor

为保持第 1 节的 Green 符号，以下记微分表达式
$L_i=-P=\partial_t^2-\partial_y^2+m^2$，并用 **$L_i\phi=j$** 定义 bulk source；相应作用量为 $S_i+\int j\phi$。若改用 $P\phi=j_P$，必须处处代入 $j=-j_P$。$K_{i,D}$ 始终只表示 spatial Dirichlet operator，$D_i^{R/A}$ 专指正 outward DtN。

先声明一张可计算的 smooth chart。单元为空间闭区间 $\overline\Sigma_i$；人工端点集合为 $B_i$，物理端点固定为零。取

$$
\mathscr T_i=C_c^\infty(\mathbb R;C^\infty(\overline\Sigma_i;\mathbb R)),\qquad
\mathscr H_{i,c}=C_c^\infty(\mathbb R;\mathbb R^{B_i}),\qquad
\mathscr B_{i,c}=\mathscr T_i\oplus\mathscr H_{i,c}.
$$

这里 compact 指统一的紧时间支撑；bulk sources 可触及空间端点。内部局域 observables 另以 compact spacetime support 定义，不把两类支撑混同。为容纳消元后持续传播的 interface histories，也声明 $\mathscr B_{i,\mathrm{pc}}$、$\mathscr B_{i,\mathrm{fc}}$：同样 smooth，分别在某一整段过去、未来恒为零，不要求另一方向 compact。$\mathrm{pc}/\mathrm{fc}$ 在这里仅指时间单侧支撑。各有限时间 slab 上使用通常 smooth seminorms，不声称 rough-history bundle theorem。

定义 $\mathcal S_{i,D}^{\infty}$ 为 $L_i\psi=0$、所有端点 Dirichlet 的 smooth compatible solutions，其 Cauchy data 是

$$
\mathcal X_{i,D}^{\infty}
=\bigcap_{n\ge0}D(K_{i,D}^n)\ \oplus\
\bigcap_{n\ge0}D(K_{i,D}^n).
$$

对于 $b=(j,q)\in\mathscr B_{i,c}$，令

$$
\mathcal P_i[j,q]=
\{\phi:L_i\phi=j,\ \gamma_{iB}\phi=q,\
\gamma_{i,\mathrm{phys}}\phi=0,\ \phi\text{ smooth compatible}\}.
$$

特别在原两段坐标中，外端条件明确为 $\phi_i(t,y_i=0)=0$、人工端为 $\phi_i(t,y_i=L)=q_i(t)$。允许所有与 forcing/history jets 相容的初始数据，不能把固定 history 误作固定全部初值。

该集合非空且为 $\mathcal S_{i,D}^{\infty}$ torsor。构造如下：选空间线性 lift $\ell_iq$，其人工端值为 $q$、物理端值为零，写

$$
s_i^R[j,q]=\ell_iq+G_{i,D}^R(j-L_i(\ell_iq)),\qquad
\mathcal P_i[j,q]=s_i^R[j,q]+\mathcal S_{i,D}^{\infty}.
$$

$G_{i,D}^R$ 是第 1 节的 Dirichlet wave inverse，取零过去；advanced 取零未来。smooth forcing 在起始以前为零，反复时间分部积分与 interval elliptic regularity 给 smooth solution 和强制的 boundary jets；能量唯一性给唯一 particular solution。虽然减去 lift 后满足零边界，forcing 非零期间它一般不属于所有 $D(K_{i,D}^n)$。两个 particular solutions 的差则属于 $\mathcal S_{i,D}^{\infty}$。同一构造分别适用于 pc/retarded 与 fc/advanced chart；compact chart 两者皆有。一般初始时刻的相容 jets 由
$\partial_t^2\phi=(\partial_y^2-m^2)\phi+j$
递推，不能继续沿用仅含 $q$ 的 homogeneous recurrence。

### 2.2 Affine source quotient and regional local net

本文指定的 physical source-labelled affine space 是

$$
\begin{aligned}
F_{c,f}(\phi)&=c+\langle f,\phi\rangle_i,\qquad
\langle f,\phi\rangle_i=\int_{\mathbb R}dt\int_{\Sigma_i}dy\,f\phi,\\
\mathcal N_i[b]&=\{(c,f):F_{c,f}(\phi)=0\ \forall\phi\in\mathcal P_i[b]\},\\
\mathcal E_i^{\mathrm{aff}}[b]&=(\mathbb R\oplus\mathscr T_i)/\mathcal N_i[b].
\end{aligned}
$$

因此等价关系恰好是“在所有 allowed regional solutions 上给出同一 affine functional”。并非先假设 $\mathscr T_i/P C_c^\infty$ 已编码 timelike wall。

**命题（proved，smooth interval chart）。** 对任意 origin $s_i[b]$，

$$
(c,f)\in\mathcal N_i[b]
\quad\Longleftrightarrow\quad
E_{i,D}f=0,\quad c+\langle f,s_i[b]\rangle_i=0,
\qquad E_{i,D}=G_{i,D}^A-G_{i,D}^R.
$$

证明：Green identity 给
$\langle f,\psi\rangle_i=-\Omega_i(E_{i,D}f,\psi)$。
对时间紧支撑、空间至边界光滑的 $f$，反复时间积分使 $E_{i,D}f$ 的 Dirichlet spectral coefficients 快速衰减；等价地在 forcing 结束后反复使用 wave equation 与 elliptic regularity，得到 $E_{i,D}f\in\mathcal S_{i,D}^{\infty}$。该空间上的 $\Omega_i$ nondegenerate，故 annihilate 全部 $\psi$ 等价于 $Ef=0$。余下就是 origin 的常数项。反向立即成立。常数不能一律丢弃：$Ef=0$ 的 $f$ 在 affine fiber 上仍可为非零常数。

在商上定义

$$
\sigma_i([(c,f)],[(d,g)])=\langle f,E_{i,D}g\rangle_i.
$$

它与代表无关，radical 恰为常数方向。其 Hamiltonian vectors 属于指定 smooth class。反向给定 $\psi\in\mathcal S_{i,D}^{\infty}$，取 $\chi$ 从 0 变到 1、$\chi'$ compact，令
$f_\psi=\chi''\psi+2\chi'\dot\psi$，则 $E_{i,D}f_\psi=-\psi$。故这里没有依赖未指定的“任选 admissible dual”；source quotient 已固定全部 smooth Hamiltonian linear labels。更大的 continuous affine dual 未被纳入。

**Polynomial 定义。** $\mathfrak A_i^{\mathrm{aff,pol}}[b]$ 是由 $\widehat F$（$F\in\mathcal E_i^{\mathrm{aff}}[b]$）生成的 unital complex $*$-algebra，施加实线性、$\widehat F^*=\widehat F$、$\widehat c=c\mathbf1$ 和
$[\widehat F,\widehat G]=i\hbar\sigma_i(F,G)\mathbf1$。
designated field map 为
$\widehat\Phi_{i,b}(f)=\widehat{[(0,f)]}$。
等价的 Moyal presentation 只在 **由有限个 affine observables 生成的 cylindrical polynomials** 上使用；展开有限，不包含 $\phi^2(x)$、stress tensor 或其他需要 renormalization 的 local composite fields。

**Weyl 定义。** $\mathfrak A_i^{\mathrm{aff,W}}[b]$ 是关系

$$
U_b(F)U_b(G)=e^{-i\hbar\sigma_i(F,G)/2}U_b(F+G),\quad
U_b(F)^*=U_b(-F),\quad U_b(c)=e^{ic}\mathbf1
$$

的 universal $C^*$-algebra。选 origin 后等同通常 smooth-label Weyl algebra，因而存在且非零；$\widehat F$ 本身不是其 bounded element。只有在 regular representation 的适当共同域上才把 $U_b(F)$ 解释为 $\exp(i\widehat F)$。

对开放 $O\subset\mathbb R\times\operatorname{int}\Sigma_i$，正式定义

$$
\begin{aligned}
\mathfrak A_i^{\mathrm{aff,pol}}[b](O)
&=\operatorname{alg}^{*}\{\mathbf1,\widehat\Phi_{i,b}(f):
 f\in C_c^\infty(O;\mathbb R)\},\\
\mathfrak A_i^{\mathrm{aff,W}}[b](O)
&=C^*\{U_b([(0,f)]):f\in C_c^\infty(O;\mathbb R)\}.
\end{aligned}
$$

其中 $f$ 延零视为 $\mathscr T_i$ 元素。isotony 由生成集包含成立；regional causal-disjoint 支撑由有限速度给 commuting subalgebras。bulk source maps、local net 和 base labels 是对象的一部分，不能从抽象 Weyl algebra 反推。此处不声称该 net 对任意 global timelike embedding 给 field-preserving homomorphism，K1 正好否定那种推广。

### 2.3 Smooth affine 与 full-energy 层的比较

另记 $V_{i,D}=H_0^1(\Sigma_i)$，取 $\mathscr T_i^{\mathrm{en}}=L_c^1(\mathbb R;L^2(\Sigma_i))$、
$\mathcal S_{i,D}^{\mathrm{en}}$ 的 Cauchy space
$H_0^1(\Sigma_i)\oplus L^2(\Sigma_i)$。在已有 smooth $b$ 上定义
$\mathcal P_i^{\mathrm{en}}[b]=s_i[b]+\mathcal S_{i,D}^{\mathrm{en}}$，用同一个“所有解上为零”的关系定义其 energy affine source quotient 和 Weyl algebra。

$\mathscr T_i\hookrightarrow\mathscr T_i^{\mathrm{en}}$ 给 injective symplectic affine-label map：若 smooth label 在 energy fiber 上为零则在 smooth fiber 上为零；反向由其 energy continuity 和 smooth Cauchy density 成立。因此有 polynomial injection 和 universal Weyl injection（常数固定后为 symplectic-subspace Weyl inclusion）。该比较不涉及任意 rough $q$ 的解算子或 sharp response。

这两个 algebra **不以 Weyl norm density 认同**。全能量 onto 在 §6.4 用允许的 $L_c^1(H)$ labels 精确证明。smooth source category 在 composite 中保留逐单元至边界 smooth labels；它不必等于跨人工切口也全局 smooth 的另一种 test category。每种 local net 都随其 source category 明确声明。

## 3. 先实施 kill tests

### K1. Dirichlet regional algebra 不是 global restricted field algebra — false candidate

若要求一个 unital map 满足 $\iota_i(\widehat\phi_{i,q}(f))=\widehat\phi_M(\widetilde f)$，其中 $\widetilde f$ 是零延拓，则必须有

$$
\int fE_{i,D}g=\int\widetilde f E_M\widetilde g.
$$

人工 Dirichlet 墙产生反射；connected propagator 允许穿过切口。因此一般不成立，第 7 节给出非零 resolvent correction。只有在因果传播尚不触及人工墙的指定小 diamond 中，相关局部 field algebras 才有这种直接认同。不能把 timelike region 的全部时间历史当成一个 causally convex global subspacetime。

更强地：两个 fixed-history algebras 的 ordinary tensor product 使所有异侧 generators commute。任何保持它们为同名 bulk fields 的代数 homomorphism 都保留这个零 commutator，但 glued timelike-separated cross-interface fields 的 commutator 可以非零。故这样的 homomorphism 不存在。更强地，同侧 correction 已排除任何把旧区域全部同名 field generators 送到 physical sewn fields 的 unital homomorphism，因其必须保持旧同侧 commutator；不论该构造被称为 pushout、amalgamation 或 crossed product。这个 no-go 不排除任意抽象同构，也不排除先重新定义 physical field identification 的 representation theorem。

### K2. 把 histories 作为 central 参数再逐纤维取商仍不够 — false candidate

在 pointwise section algebra 中，$q\mapsto q(h)\mathbf1$ central。普通 quotient 或 balanced product 不会使其变为有非零 commutator 的场。若关系迫使一个 central 元素与某 field 等同，而后者与另一个保留 generator 的 commutator 是非零标量，则理想含 $\mathbf1$，所得代数为零。需要新的 cross-history operation/CCR 或明确的重构，而不是“提升参数为算子”的一句话。

### K3. 只做 trace-label fixed points 不识别 interface dynamics — proved counterexample

加入真实 $S_\Gamma[q]=-\lambda\int q^2dt/2$。continuity 不变，但共同变分给

$$
\Pi_1+\Pi_2-\lambda q=0.
$$

equal-time matched-label Weyl algebra 不变，closed form 增加 $\lambda|q|^2$，operator domain 与传播子改变。因此 fixed points 只能是 kinematic selector；完整对象必须另外携带 action-derived dynamics。本例可取 $\lambda\ge0$ 以保持正性。

### K4. Retarded response 不是没有 endpoint 项的 action Hessian — false candidate

$$
\delta S_{i,\rm on}=F_i^{+*}\Theta_i^+-\operatorname{pr}_-^*\Theta_i^-+\langle\mathcal R_i,\delta q_i\rangle_I.
$$

固定初始数据并改变 history，通常改变末端数据；即使 $\delta q$ 在时间端点附近为零，$\delta\phi_i(t_+)$ 仍可非零。故不能删除 $\Theta_i^+$ 并令 $\delta_qS_{i,\rm on}=\mathcal R_i$。只有固定/补偿 endpoint contributions 的明确 boundary-value prescription 才允许该简化。特别地，retarded DtN 一般不对称，其 antisymmetric part 等于产生的末端 CPS area。

### K5. 单一 $q=0$ 或 retarded-zero-past chart 不保证 onto — false candidate

global solutions 可有非零切口初值和历史；只保留 $q=0$ 丢失非零-interface sector，只保留某个零过去 history chart 也不是整个 global solution space。第 6 节使用全能量 regional relation 解决此问题；不能靠 smooth labels 的 energy density 声称 universal Weyl norm surjectivity。

### K6. Weyl norm 的障碍须准确说 — proved distinction

非零 label motion 一般满足 $\|W(z)-W(w)\|=2$。但 **pure phase transport** $W(z)\mapsto e^{it\ell(z)}W(z)$ 是 point-norm continuous，并且每个 Weyl polynomial 可微。因此“所有 history differentiation 都不可能在 Weyl norm 中进行”是错误的。下节的 affine translation 正是 phase case。其 generator 通常 unbounded，只能在明确的 dense domain 上求导；不能保证全代数 norm differentiability，也不能把换 label 的 dynamics 同等处理。

### K7. 第二个 sewing equation 不是 $\nabla_{1,h}+\nabla_{2,Jh}=0$ — open identification

平移 transport 可以通过所选 reference solutions 平凡化；此时 parallel sections 的 connection 为零，而 response 仍有物理内容。没有 action Ward identity、endpoint prescription 及指定 module structure，connection 平衡不等价于 oriented flux matching。第 5 节给出可以证明的 response derivation，保留这个区别。

## 4. 跨 source/history arrows、transport 与 cocycle

### 4.1 Translation groupoid 及其 algebra action

对象为 $b=(j,q)\in\mathscr B_{i,c}$，arrow $r:b\to b'=(j+k,q+h)$ 是 smooth compatible solution

$$
L_ir=k,\qquad \gamma_{iB}r=h,\qquad
\gamma_{i,\mathrm{phys}}r=0.
$$

$\tau_r\phi=\phi+r$ 将两个 torsors 双射。arrow 合成为加法，identity 为零，inverse 为 $-r$；每个 arrow set 是 $\mathcal S_{i,D}^{\infty}$ torsor。tangent map 为 identity，保持 fixed-fiber CPS。

在 source quotient 上，定义

$$
t_r:[(c,f)]_b\longmapsto[(c-\langle f,r\rangle_i,f)]_{b'}.
$$

若原 functional 在 $\mathcal P_i[b]$ 上为零，新的 functional 在
$\phi'=\phi+r$ 上同样为零，故此 map 降到 quotient，保 $\sigma$ 和常数。它诱导 polynomial 与 Weyl $*$-isomorphisms：

$$
T_r\widehat\Phi_{i,b}(f)=
\widehat\Phi_{i,b'}(f)-\langle f,r\rangle_i\mathbf1,\qquad
T_rU_b([(c,f)])=U_{b'}(t_r[(c,f)]).
$$

每个 local subalgebra 都被映到同一 $O$ 的 local subalgebra，因为只增加常数/phase。$T_{r_2}T_{r_1}=T_{r_1+r_2}$，inverse 是 $T_{-r}$。这些是具体 maps，不是假设有一个 smooth bundle。

### 4.2 Retarded/advanced arrows 与 causal covariance

记 $R=\mathrm{ret}$、$A=\mathrm{adv}$，取

$$
r_i^{R/A}[k,h]=G_{i,D}^{R/A}k+H_i^{R/A}h,\qquad
H_i^{R/A}h=\ell_i h-G_{i,D}^{R/A}L_i(\ell_i h).
$$

compact direction $(k,h)$ 同时允许两种 arrows；pc 只使用 $R$，fc 只使用 $A$。在有限 slab 上，需要 forcing 在选定起始/终止面之外已消失的相容 prescription；任意 rough history 不在此结论内。lift 的改变由零边界 Green inverse 抵消，故 solution arrow 不依赖 lift。

线性及零过去/未来唯一性给

$$
r_i^\epsilon[d_1+d_2]=r_i^\epsilon[d_1]+r_i^\epsilon[d_2],
\qquad T_{r^\epsilon[d_2]}T_{r^\epsilon[d_1]}
=T_{r^\epsilon[d_1+d_2]},\quad \epsilon=R,A.
$$

局部能量恒等式在无源的截断光锥中积分，Dirichlet 壁零功、null flux 非负，给

$$
\operatorname{supp}r_i^{R/A}[k,h]\subset
J_i^{+/-}(\operatorname{supp}k\cup\operatorname{supp}h).
$$

允许在端点反射的因果传播；局部速度仍不超过 1。bulk test 支撑不遇此集合时，$T_r$ 不改变其 designated field，而非仅作同构。

设 $V_i[b](t,s)$ 为兼容 Cauchy data 上的 driven affine evolution，
$C_r(t)$ 加上 $(r(t),\dot r(t))$。两边解同一 forced IBVP 且初值相同，故

$$
V_i[b+d](t,s)C_r(s)=C_r(t)V_i[b](t,s).
$$

逆 pullback 给 polynomial/Weyl evolution covariance。全实时间的 $R/A$ prescription 在同时平移 $j,q$ 时与时间平移交换；非平稳 $b$ 不给同一 fiber 的 stationary dynamics。

### 4.3 所选 lifts 与 section derivatives

任意选择 $r(b',b)$ 的 composition defect
$r(b'',b')+r(b',b)-r(b'',b)\in\mathcal S_{i,D}^{\infty}$；
只有其为零才有 history-pair 严格 cocycle。上述 $R/A$ choices 在声明方向上确为零。homogeneous translation 的 algebra action 严格合成，若选择 Weyl unitary 实现才可能出现 central phase；跨 fiber maps 不自动在某一 Fock representation 中 unitary。

在有限 affine polynomial sections、可微 scalar coefficients 上定义

$$
\nabla_d^\epsilon A(b)
=\left.\frac{d}{d\lambda}\right|_0
T_{\lambda r_i^\epsilon[d]}^{-1}A(b+\lambda d).
$$

由于 quotient relations 也随 $b$ 平移，使用 pullback 后求导才无代表歧义。
特别地，

$$
\boxed{\nabla_{(k,h)}^\epsilon\widehat\Phi_i(f)
=\langle f,G_{i,D}^\epsilon k+H_i^\epsilon h\rangle_i\mathbf1.}
$$

严格 cocycle 给 $[\nabla_d^\epsilon,\nabla_e^\epsilon]=0$。
在 fixed-label Weyl sections 上，只使用

$$
T_{\lambda r}^{-1}U_{b+\lambda d}([(0,f)])
=e^{i\lambda\langle f,r\rangle_i}U_b([(0,f)]).
$$

这是 phase differentiation，Weyl polynomial span 属于其 dense derivation domain；不承诺全 $C^*$-algebra norm 可微，也不以移动 solution label 的连续性代替它。

## 5. Quantum reconstruction of the regional response matrix

### 5.1 Smeared response 是指定 source quotient 内的 polynomial section

对 $\eta\in\mathscr H_{i,c}$，作用量给 outward response
$\Pi_i(\phi)=-\partial_{n_i}\phi$，定义

$$
R_{i,\eta;b}(\phi)=\langle\Pi_i(\phi),\eta\rangle_{B_i},
\qquad
\langle\pi,\eta\rangle_{B_i}=\sum_{a\in B_i}\int_{\mathbb R}\pi_a(t)\eta_a(t)\,dt.
$$

这不是 sharp boundary operator。先证明它属于 §2 指定的 observable space。
令 $k_\eta=H_i^R\eta-H_i^A\eta$；其 boundary 值抵消，是 smooth homogeneous Dirichlet solution。对 $\psi\in\mathcal S_{i,D}^{\infty}$，

$$
\frac{d}{dt}\Omega_i(H_i^R\eta,\psi)
=\sum_{a\in B_i}\eta_a\Pi_{i,a}(\psi),\qquad
R_{i,\eta;0}(\psi)=\Omega_i(k_\eta,\psi).
$$

时间积分下端放在 driving 前、上端放在 driving 后；上端 advanced solution 为零。取 §2 的 $f_\eta=\chi''k_\eta+2\chi'\dot k_\eta$，则
$E_{i,D}f_\eta=-k_\eta$，从而
$\langle f_\eta,\psi\rangle_i=\Omega_i(k_\eta,\psi)$。在一般 fiber 中，

$$
R_{i,\eta;b}=[(c_\eta[b],f_\eta)],\qquad
c_\eta[b]=\langle\Pi_i(s_i[b]),\eta\rangle_{B_i}
-\langle f_\eta,s_i[b]\rangle_i.
$$

改变 $s_i$ 或 $\chi$ 不改变 quotient class。这既证明 Hamiltonian admissibility，也把 response 放进 source-labelled polynomial algebra，而不是额外添一个没有定义域的生成元。记其量子 section 为 $\widehat R_{i,\eta}$。

### 5.2 Variation 与 commutator 的四个 blocks

由 affine translation 的定义，

$$
T_r^{-1}\widehat R_{i,\eta;b+d}
=\widehat R_{i,\eta;b}+\langle\Pi_i(r),\eta\rangle_{B_i}\mathbf1.
$$

因此在 polynomial sections 上 **proved**

$$
\boxed{\nabla_{(k,h)}^\epsilon\widehat R_{i,\eta}
=\langle\rho_i^\epsilon k-D_i^\epsilon h,\eta\rangle_{B_i}\mathbf1,}
\qquad
\rho_i^\epsilon=-\partial_{n_i}G_{i,D}^\epsilon,\quad
D_i^\epsilon=+\partial_{n_i}H_i^\epsilon.
$$

这些最后的 normal-derivative 公式是模型实现中对恢复结果的识别，不是 sewing 接口另行接受的输入。结合 §4 的 field variation，所有测试 $f,\eta$ 给出

$$
\mathbb G_i^\epsilon=
\begin{pmatrix}G_{i,D}^\epsilon&H_i^\epsilon\\
\rho_i^\epsilon&-D_i^\epsilon\end{pmatrix}.
$$

其恢复规则是：分别读取 $\nabla_{(k,0)}^\epsilon\Phi(f)$、
$\nabla_{(0,h)}^\epsilon\Phi(f)$、
$\nabla_{(k,0)}^\epsilon R_\eta$、
$-\nabla_{(0,h)}^\epsilon R_\eta$ 的 scalar coefficients。
bulk 和 boundary tests 分别分离 distributions；故各 block 唯一。连续性来自 §2 的 smooth solution estimates，双线性 scalar pairing 因而确实确定 operator/distribution，不是只给有限个矩阵元素。base-independent derivatives 使恢复结果不依赖 $b$ 或 origin。对 pc/fc controls，在任意有限观测时间前/后作 smooth cutoff，causal support 保证所得局部值与 cutoff 无关，故 compact-chart 数据唯一决定所用单侧延拓。

仅知道 CCR 得到的是 causal difference，不能拆出 $R/A$；指定的 causal transports 正是必须保留的额外 quantum structure。

同一 Green identity 与 observable/CPS dual sign 给 polynomial commutators

$$
\begin{aligned}
\frac{[\widehat\Phi_i(f),\widehat\Phi_i(g)]}{i\hbar}
&=\langle f,(G_{i,D}^A-G_{i,D}^R)g\rangle_i\mathbf1,\\
\frac{[\widehat\Phi_i(f),\widehat R_{i,\eta}]}{i\hbar}
&=\langle f,(H_i^A-H_i^R)\eta\rangle_i\mathbf1,\\
\frac{[\widehat R_{i,\eta},\widehat\Phi_i(g)]}{i\hbar}
&=\langle(\rho_i^A-\rho_i^R)g,\eta\rangle_{B_i}\mathbf1,\\
\frac{[\widehat R_{i,\eta},\widehat R_{i,\zeta}]}{i\hbar}
&=\langle(D_i^R-D_i^A)\zeta,\eta\rangle_{B_i}\mathbf1.
\end{aligned}
$$

例如 $X_{R_\zeta}=-k_\zeta$，
$\{R_\eta,R_\zeta\}=-R_\eta(k_\zeta)$，而
$\Pi_i(k_\zeta)=-(D_i^R-D_i^A)\zeta$，固定了最后一式的符号。
所以 joint commutator matrix 恰是
$\mathbb E_i=\mathbb G_i^A-\mathbb G_i^R$。

对 $B_d=\widehat\Phi_i(k)+\widehat R_{i,h}$，在上述 field/response sections 及其 polynomial products 上，

$$
(\nabla_d^R-\nabla_d^A)A
=-\frac{1}{i\hbar}[A,B_d].
$$

特别是 response inner derivation 只生成 minus homogeneous $R-A$ translation，**不是**单独 retarded connection。Weyl 层仅保留相应 phase automorphisms 和 Weyl polynomial derivation domain；上述 unbounded $B_d,R_\eta$ 的 inner-commutator 结论只属于 polynomial 层。

### 5.3 Green reciprocity：这里的 $*$ 是测试对偶转置

所有下式先取 compact smooth inputs，实双线性 bulk pairing
$\langle f,u\rangle_i$ 和 boundary pairing $\langle\pi,h\rangle_{B_i}$。
若 $T$ 从某个 input test space 到另一个 test space 的 distributional dual，定义 $T^*$ 为
$\langle v,Tu\rangle=\langle T^*v,u\rangle$ 的转置；
交换的是输入和测试角色及 $R/A$ prescription，不是某个 history Hilbert space 的 adjoint。复化时仍用双线性转置；若另选 sesquilinear pairing 才需显式共轭。

令 $u=r_i^R[k,h]$、$v=r_i^A[l,\eta]$。局部 Green balance 为

$$
\frac{d}{dt}\Omega_i(u,v)
=(k,v)_{H_i}-(l,u)_{H_i}
-\langle\Pi_i(u),\eta\rangle_{\text{endpoints}}
+\langle\Pi_i(v),h\rangle_{\text{endpoints}}.
$$

$u$ 在充分早时为零、$v$ 在充分晚时为零，故全时间积分的 endpoint CPS 为零：

$$
\langle k,v\rangle_i-\langle l,u\rangle_i
=\langle\Pi_i(u),\eta\rangle_{B_i}
-\langle\Pi_i(v),h\rangle_{B_i}.
$$

依次选 $(h,\eta)=(0,0)$，$(h,l)=(0,0)$，$(k,\eta)=(0,0)$，$(k,l)=(0,0)$，得到精确 identities

$$
\boxed{(G_{i,D}^R)^*=G_{i,D}^A,\qquad
(H_i^A)^*=\rho_i^R,\qquad
(H_i^R)^*=\rho_i^A,\qquad
(D_i^R)^*=D_i^A.}
$$

例如第二式的完整含义是
$\langle k,H_i^A\eta\rangle_i=\langle\rho_i^Rk,\eta\rangle_{B_i}$。
这些 identities 使 $\mathbb E_i$ 在 direct-sum 测试配对下 antisymmetric。

若比较两条 retarded boundary solutions，不能删掉未来 endpoint：

$$
\Omega_i^+(H_i^Rh,H_i^R\eta)
=\langle D_i^Rh,\eta\rangle_{B_i}
-\langle D_i^R\eta,h\rangle_{B_i}.
$$

这解释 $D_i^R$ 本身并非 symmetric action Hessian。第 K4 的限制完整保留。

对 energy sources $\mathscr T_i^{\mathrm{en}}=L_c^1(\mathbb R;H_i)$，bulk reciprocity 精确意为
$\int(f,G^Rg)\,dt=\int(G^Af,g)\,dt$：
$G^\epsilon g\in C_{\rm loc}(V_{i,D})\subset L^\infty_{\rm loc}(H_i)$，积分有限，先由 compact smooth tests 证明，再用有限 slab energy estimate 延拓。这里绝不写成 $L_c^1$ 上的 Hilbert adjoint。boundary blocks 的 rough 延拓没有随此 bulk identity 自动得到。

## 6. Boundary-controlled affine CCR system 与 causal sewing

### 6.1 正式对象、恢复接口及 composition definition

**对象。** 在本文 smooth、实线性、有限 ports 的范畴中，一个 boundary-controlled affine CCR system 为

$$
\mathbb Q_i=
\bigl(
\mathscr B_{i,c},\mathscr B_{i,\mathrm{pc/fc}},\mathscr T_i,
\langle\, ,\,\rangle_i,\langle\, ,\,\rangle_{B_i};
\{\mathcal E_i^{\rm aff}[b],\mathfrak A_i^{\rm aff,pol/W}[b]\}_b,
\Phi_i,T_i^{R/A},R_i,\{\mathfrak A_i[b](O)\}_O;
\mathfrak D_i,V_i[b],\Omega_i
\bigr).
$$

分号分开 parameter/duality、quantum、Cauchy/domain 数据。primitive 的准确内容是：带支撑和 smooth topology 的 source/history spaces 及非退化测试配对；affine quotient 和两种 algebra fibers；designated field maps；具有 §4 cocycle、locality、evolution covariance 的 causal transports；线性 smeared response sections；兼容初始数据的域、affine evolution 与 CPS pairing。要求 field/response transport derivatives 为连续、base-independent scalar pairings，并满足 §5.3 Green balance 和 stated causal support。§2–5 已从 regional action 构造并验证了这个对象。

**Derived，不另作 primitive：** $\nabla^{R/A}$ 是 transport derivative；local subalgebras 由指定 tests 生成；$G,H,\rho,D$ 由 §5.2 唯一恢复；$\mathbb E_i$ 既是恢复 blocks 的 $A-R$ 差，也是 polynomial CCR；weak energy extension 要在 §6.2–6.4 证明存在唯一连续延拓，不能直接塞进对象。regional action/trace 是构造对象和验证 Green balance 的模型依据，不是在 sewing 时另收一套独立 Green matrices。

本节仅需 **structure-preserving isomorphisms**：base/source/history 的连续线性双射、支撑保持的 spacetime/port identification 及保持上述测试配对的 dual maps，配以各 fiber 的 polynomial/Weyl isomorphisms；它们须把指定 $\Phi,R$ 映到对应 maps，intertwine $T^{R/A}$、compatible evolution 和 CPS。local generators 因而对应，所有 derived blocks 自然 intertwine。恒等和复合逐分量定义，构成一个明确 groupoid。不声称任意 timelike inclusion 都给此类 morphism；bare field-preserving inclusion 仍受 K1 排除。

**从对象恢复 causal relation。** 对 $\epsilon=R,A$，将 §5 恢复的 pairings 视为其唯一 distributions，定义

$$
\mathcal L_i^\epsilon
=\{(j_i,q_i;\phi_i,\pi_i):
\phi_i=G_{i,D}^\epsilon j_i+H_i^\epsilon q_i,\
\pi_i=\rho_i^\epsilon j_i-D_i^\epsilon q_i\}.
$$

定义域为 smooth pc/zero-past（$R$）或 fc/zero-future（$A$）inputs，全部操作在有限 slab 上可检验。$\mathcal L_i^\epsilon$ 是从 quantum structure 导出的 relation；不是额外 primitive。

**Sewing 定义。** 沿 action-derived

$$
\mathsf S_e=\{(q_1,\pi_1;q_2,\pi_2):
q_2=Jq_1,\ \pi_1+J^*\pi_2=0\}
$$

将 $\mathcal L_1^\epsilon\oplus\mathcal L_2^\epsilon$ 限制到 $\mathsf S_e$，然后 existentially eliminate 该 interface 的 $q,\pi$，保留所有 bulk inputs/outputs 和未粘 ports。这是 causal linear-relation composition。$J^*$ 在 history/response 配对中定义；当前 interval 为 $J=1$。全粘合的图方程明确为

$$
\begin{aligned}
(D_1^\epsilon+J^*D_2^\epsilon J)q
&=\rho_1^\epsilon j_1+J^*\rho_2^\epsilon j_2,\\
\phi_1&=G_{1,D}^\epsilon j_1+H_1^\epsilon q,\\
\phi_2&=G_{2,D}^\epsilon j_2+H_2^\epsilon Jq.
\end{aligned}
$$

先定义 relation，**只有在其 unique causal graph domain 上**才记
$j\mapsto G_{\rm sew}^\epsilon j$。若 relation 不 single-valued 或未满足 reciprocity/causality，本文不把它叫作已构成的 composite CCR system。interval 的这些 gates 在 §6.2–6.3、§7 证明。

在已证 graph 上令 $E_{\rm sew}=G_{\rm sew}^A-G_{\rm sew}^R$，取 **原始 regional source generators**
$\mathscr T^{\rm dup}=\mathscr T_1\oplus\mathscr T_2$（尚未取旧 on-shell quotients），并定义

$$
\operatorname{Sew}_{\rm CCR}^{\rm pol/W}(\mathbb Q_1,\mathbb Q_2;\mathsf S_e)
=\operatorname{CCR}_{\rm pol/W}
\left(\mathscr T^{\rm dup}/\ker E_{\rm sew},
\ ([f],[g])\mapsto\langle f,E_{\rm sew}g\rangle_{\rm dup}\right).
$$

energy version 使用另行证明的唯一延拓与
$L_c^1(\mathbb R;H^{\rm dup})$；§6.4 明确其 label category。
有剩余外部 history $q_{\rm ext}$ 或 background source $j$ 时，取相应非空 composite solution torsor 的 affine source quotient，像 §2 一样保留常数，而非只写 homogeneous 商。

这是 **interface-response induced deformation/reconstruction of CCR on regional source generators**。它不是 ordinary tensor product、pushout、balanced product、cotensor product 或 crossed product；旧 $\mathcal N_i[b]$ 和旧同侧 CCR 都不得先强制到新 presentation。否则 same-side correction 已使定义矛盾。

**剩余 ports 的输出结构。** 对只粘一个 interface 的 composite，必须同时保留外部 $q_{\rm ext},\pi_{\rm ext}$ 和其 causal relation。新的 fibers、field maps、response sections、transports、CPS 和 local net 由该 relation 的 solution torsors 按 §2–5 的同一构造定义。§7.3 的 block formulas 证明外部 $G,H,\rho,D$ 正是新 sections 的 derivatives。中间步骤不遗忘 port，不重新投影 source space，也不沿旧 fiber algebra 作 quotient。这使 binary output 能继续作为下一次 sewing 的输入。

为避免把“solution torsor”又当成额外输入，输出可完全按如下方式构造。记消元后仍带外部 ports 的四块为 $G',H',\rho',D'$，令

$$
\mathcal S'=\operatorname{Ran}(G'^A-G'^R)|_{\mathscr T^{\rm dup}},
\qquad
\mathcal P'[j,q_{\rm ext}]
=G'^Rj+H'^Rq_{\rm ext}+\mathcal S'.
$$

compact backgrounds 使这里每一项有定义；pc/fc 扩展使用相应 particular solution。用所有这些场上的 $c+\langle f,\phi\rangle$ 定义 $\mathcal N'[b]$ 和 affine CCR，不把 zero-past particular solution 本身当成整个量子 fiber。对 $\phi=G'^Rj+H'^Rq_{\rm ext}+E'f$，外部 response 定义为

$$
\pi_{\rm ext}(\phi)
=\rho'^Rj-D'^Rq_{\rm ext}
+(\rho'^A-\rho'^R)f.
$$

在 interval 上，$E'f=0$ 意味着 homogeneous 场为零，因而其外部 weak flux 为零；这是 §6.2–6.3 的 trace/solution realization，保证该式无代表歧义。剩余 histories 的 $R/A$ arrows 是 $G'^\epsilon k+H'^\epsilon h$；同一 Green balance 证明 response admissibility 与 CCR。CPS 取逐段积分之和，内部 flux 抵消。任意 smooth compatible homogeneous composite solution $\psi$ 都由 $f=\chi''\psi+2\chi'\dot\psi\in\mathscr T^{\rm dup}$ 实现 $E'f=-\psi$，所以 $\mathcal S'$ 恰好覆盖该 smooth phase space。这样 binary output 的 quantum fibers 和剩余 response 都由消元结果构造出来，闭合于声明的 interval system 类。

下文的 restricted regional form 是该 relation 在 interval 上存在、唯一、有 energy extension 的**证明工具**；不是替代上述定义的第二套 Green-data 输入，更不是从已知 global algebra 共轭回来。

### 6.2 Regional energy relation，不能遗漏的 history domain

令 $H_i=L^2(0,L)$、$V_i=\{u\in H^1(0,L):u(0)=0\}$，定义 $\widehat{\mathcal P}^{\rm en}_i(I)=\bigsqcup_{q\in\mathcal B_i^{\rm en}}\mathcal P_i^{\rm en}[0,q](I)$ 为实际 trace fibers 的 disjoint union，其场满足

$$
\phi_i\in C(I;V_i)\cap C^1(I;H_i),\qquad
\int_I[-(\dot\phi_i,\dot\eta_i)+\mathfrak a_i(\phi_i,\eta_i)]dt=0
\quad\forall\eta_i\in C_c^\infty(I;H_0^1(0,L)),
$$

其中 $\mathfrak a_i(u,w)=\int(u'w'+m^2uw)$。其 history 为 $q_i(t)=\gamma_i\phi_i(t)\in C(I)$。定义 $\mathcal B_i^{\rm en}$ 为此 **regional** solution class 的实际 trace range，$\mathfrak D_i^{\rm en}$ 为实际 initial-data/history pairs。这个定义不声称所有 $C(I)$ histories 均可自由输入，也没有用 global restrictions 定义 regional object；smooth 可控 charts 是它的子类。

完整 flux matching 采用 dual weak definition。对 $h\in C_c^\infty(I)$，任取 lift $\eta_i\in C_c^\infty(I;V_i)$ 使 $\gamma_i\eta_i=h$，令

$$
\langle\Pi_i,h\rangle=-\int_I[-(\dot\phi_i,\dot\eta_i)+\mathfrak a_i(\phi_i,\eta_i)]dt.
$$

lift 差属于 homogeneous test domain，故此定义与 lift 无关；smooth case 还原 $-\phi_i'(L)$。值域明确为 $\Pi_i\in\mathcal D'(I^\circ)$；固定空间 lift 后公式只含 $h,h'$，在任意紧子时间段由能量范数控制，实际上给 $\Pi_i\in H^{-1}_{\rm loc}(I^\circ)$。有 source $j\in L_c^1(H_i)$ 时，弱方程右侧为 $\int(j,\eta_i)dt$，flux 定义的括号中相应减去 $(j,\eta_i)$；值域结论不变。多 ports 时取相应有限直和。定义 sewn solution locus $\mathcal C^{\rm en}(I)$ 为两侧 regional solutions 满足 $q_1=q_2$ 和 $\Pi_1+\Pi_2=0$ 的集合。该条件对每个 $h$ 成立；不要求 $L^2$ momentum 有 boundary trace。

### 6.3 Restricted form 验证 causal relation 的存在性与 evolution

先不使用 global operator，定义

$$
\begin{aligned}
H^{\rm dup}&=H_1\oplus H_2,\\
V^{\rm sew}&=\{(u_1,u_2)\in V_1\oplus V_2:u_1(L)=u_2(L)\},\\
\mathfrak a^{\rm sew}(u,w)&=\mathfrak a_1(u_1,w_1)+\mathfrak a_2(u_2,w_2).
\end{aligned}
$$

trace continuity 使 $V^{\rm sew}$ closed；内支撑 smooth functions 的直和在 $H^{\rm dup}$ 稠密，且包含于 $V^{\rm sew}$。$m>0$ 给 coercivity，故此为 positive closed densely defined form，定义唯一 $K_{\rm sew}>0$。这是 regional action restricted to common configurations 的 operator，不是从 $K_M$ conjugate 过来定义。它在本节用于证明 §6.1 relation 是图：零过去 forced form solution 的逐段限制满足恢复的 regional equations 及两条 transmission conditions；反向 relation 的场给同一个 form solution。剩余 smooth ports 由 lifting 处理，详见 §7.4。

逐段 integration by parts 给完整 operator domain

$$
D(K_{\rm sew})=\{u_i\in H^2(0,L):u_i(0)=0,\ u_1(L)=u_2(L),\ u_1'(L)+u_2'(L)=0\}.
$$

证明：interior tests 先给 $u_i''\in L^2$；1D elliptic regularity 给 $H^2$；任意共同 endpoint test 给最后一条 flux equation。反向这些条件使 boundary term 消失。此处没有一般 Lipschitz-domain 的 $H^2$ 推断。

所有 $(u,v)\in V^{\rm sew}\oplus H^{\rm dup}$ 都给唯一能量解

$$
\phi(t)=\cos((t-s)\sqrt{K_{\rm sew}})u
+K_{\rm sew}^{-1/2}\sin((t-s)\sqrt{K_{\rm sew}})v.
$$

它恰好属于 $\mathcal C^{\rm en}(I)$：用零 boundary tests 得 regional equation，用共同 lift 得 weak summed flux；反向把任意 matched test 分成零边界部分和 lift，就得到 form wave equation，因此唯一性适用。存在性和 uniqueness 未假设预先已有 global field。

### 6.4 Causal relation 的 full-energy extension 与 CCR presentation

取实 source space $\mathscr T=L_c^1(\mathbb R;H^{\rm dup})$，可先在 smooth time sources 上计算再用 energy estimate 延拓。这个较大的 label category 是刻意声明的，目的是覆盖全部 energy solutions，不把 smooth spatial smearings 的 norm closure 当作全能量 Weyl algebra。

由 relation 唯一性，§6.1 的图算子在 smooth sources 上等于下列 functional-calculus expressions；有限 slab energy estimate 给它们在 $\mathscr T$ 上的唯一连续延拓。故这些等式是 relation 的实现与延拓，不是另一套输入定义：

$$
\begin{aligned}
G_{\rm sew}^{\rm ret}f(t)&=\int_{-\infty}^t
K_{\rm sew}^{-1/2}\sin((t-s)\sqrt{K_{\rm sew}})f(s)\,ds,\\
G_{\rm sew}^{\rm adv}f(t)&=-\int_t^{\infty}
K_{\rm sew}^{-1/2}\sin((t-s)\sqrt{K_{\rm sew}})f(s)\,ds,\\
E_{\rm sew}&=G_{\rm sew}^{\rm adv}-G_{\rm sew}^{\rm ret},\\
\mathcal E_{\rm sew}&=\mathscr T/\ker E_{\rm sew},\qquad
\sigma_{\rm sew}([f],[g])=\int_{\mathbb R}(f,E_{\rm sew}g)_{H^{\rm dup}}dt,\\
\mathfrak A_{\rm sew}^{\rm pol}&=\operatorname{CCR}_{\rm pol}(\mathcal E_{\rm sew},\sigma_{\rm sew}),\qquad
\mathfrak A_{\rm sew}^{W}=\mathfrak W(\mathcal E_{\rm sew},\sigma_{\rm sew}).
\end{aligned}
$$

antisymmetry 来自 Green duality $\int(f,G^{\rm ret}g)\,dt=\int(G^{\rm adv}f,g)\,dt$（$L_c^1(H)$ 与 $L^\infty_{\rm loc}(H)$ 的配对，非 Hilbert adjoint），且 $\ker E$ 正是 pairing radical：若 $\int fEg=0$ 对所有 $g$，反自伴性使 $Ef$ 被全部 compact-time $H$ tests annihilate，故 $Ef=0$。商上 nondegenerate。

**完整 label onto proof。** 给任何 homogeneous energy solution $\phi$，取光滑 $\chi$ 从 0 变到 1，$\chi'$ compact support，令

$$
f=\chi''\phi+2\chi'\dot\phi\in\mathscr T.
$$

distributionally $(\partial_t^2+K_{\rm sew})(\chi\phi)=f$；retarded inverse 为 $\chi\phi$，advanced inverse 为 $(\chi-1)\phi$。所以 $E_{\rm sew}f=-\phi$。因此 $\mathcal E_{\rm sew}$ 与全部 energy solution space 双射，且

$$
\sigma_{\rm sew}([f],[g])=-\Omega_{\rm sew}(E_{\rm sew}f,E_{\rm sew}g).
$$

最后等式由 Green identity（或 sine/cosine functional calculus）得到，与第 1 节 dual sign 一致。选择另一 $\chi$ 只改 $\ker E$ 类。此 argument 也证明 time-slice property：transition 可放在任意非空时间带。

### 6.5 Assembly theorem — proved in this benchmark

独立目标为 $K_M=-\partial_x^2+m^2$，$D(K_M)=H^2(-L,L)\cap H_0^1(-L,L)$，相同 source/observable category。piecewise map

$$
\operatorname{Ass}(u_1,u_2)(x)=
\begin{cases}u_1(x+L),&x<0,\\u_2(L-x),&x>0\end{cases}
$$

在 $H$ 上 unitary，在 matched form domains 上保 form；逆是 restriction。1D $H^1$ patching 由相等 traces 消去 distributional jump；$H^2$ patching 再由 outward derivative sum 消去 derivative jump。因此

$$
\operatorname{Ass}K_{\rm sew}=K_M\operatorname{Ass},\qquad
\operatorname{Ass}E_{\rm sew}=E_M\operatorname{Ass}.
$$

**定理。** 在以上全部定义下，

$$
\operatorname{Ass}_*(\widehat\Phi_{\rm sew}([f]))
=\widehat\Phi_M([\operatorname{Ass}f]),\qquad
\operatorname{Ass}_*(W_{\rm sew}([f]))=W_M([\operatorname{Ass}f])
$$

分别给 polynomial 与 universal Weyl $*$-isomorphism。其逆将 global test/source restriction 到两侧。此处 full-energy category 两侧均为 $L_c^1(H)$；smooth comparison 的目标 source category 明确取 $\operatorname{Ass}(\mathscr T_1\oplus\mathscr T_2)$，允许切口处 source 分段 smooth。usual $C_c^\infty$ local core 是另行指定的子 net，不能把不光滑的零延拓冒充全局 smooth test。

**证明。** $E$ intertwining 使 source kernels 对应，所以 map well-defined；分区积分使 $\sigma$ preserved；逆 restriction 保持同一关系。因此两个 universal maps 在每个 generator 上互逆。无需通过某个指定 representation、simplicity 或 Fock unitary 来证明 injectivity。所有 $H$ sources 均可逐段限制，故 surjectivity 是 exact algebraic statement；不是 dense-range argument。$K$ intertwining 给 energy evolution 与 induced algebra dynamics covariance。这里的 dynamics 为 algebra automorphisms，不声称 universal Weyl point-norm continuous group。$\square$

同一 comparison theorem 对三段也有显式 map：置 $x_0=0$、
$x_i=\sum_{r\le i}\ell_r$，令
$\operatorname{Ass}_3(u)(x)=u_i(x-x_{i-1})$ 于
$x\in(x_{i-1},x_i)$。逆为三段 restriction；两条 trace equality 消去两个 value jumps，两条 outward derivative sum 消去两个 derivative jumps，故它把共同 transmission form/operator 认同为
$-\partial_x^2+m^2$ 于 $H^2(0,x_3)\cap H_0^1(0,x_3)$。
functional calculus 和 source pairing 随之 intertwine，以上 generator maps 给三段的 exact polynomial/Weyl assembly isomorphism。此 comparison 不参与 §7.6 associator 的定义。

### 6.6 Support/locality 的精确范围

对开放 $O\subset\mathbb R\times(-L,L)$，local subalgebra 由具有 compact essential support 于 $O$ 的 $f\in\mathscr T$ 生成；另可取 smooth compact spacetime tests 的 usual local core。其 regional presentation 使用 **在物理坐标中同一支撑集** 的 piecewise sources，故 assembly 在两方向保持这些 local subalgebras。它不把 $E f$ 的 solution support 与 $f$ 的 test support 混同。

有限传播速度由局部能量恒等式证明：在 shrinking backward light-cone sections 上积分 $e=(\dot\phi^2+|\phi'|^2+m^2\phi^2)/2$，外侧 null flux 非负；经过切口时两侧 flux 因 continuity 和 derivative matching 抵消；物理 Dirichlet wall 的 work 为零。零过去数据与 causal past 内零源遂给零解。强数据证明后由 energy estimate 延拓。因此 causally disjoint tests 满足 $\sigma=0$，对应 Weyl/polynomial observables commute。反射 causal curves 也不能比速度 1 的 direct path 更快。

“Locality preserving”仅指上述 test-localized net 与 causal commutator。没有额外声称 Haag duality、Type III、split property、局域 von Neumann completion、boundary point operators 或 state preservation。

## 7. 两段响应恢复 benchmark 与三段 intrinsic associativity

### 7.1 Retarded response 的 Schur construction

先取 smooth pc bulk source $f_i$，零过去数据。以下每个 $G,H,\rho,D$ 都按 §5 的 transport derivatives 读取；§2 的 IBVP 实现证明它们等于下列 solution/normal-response operators，不另提供 classical matrix。于是恢复的 relation 为

$$
\phi_i=G_{i,D}^{\rm ret}f_i+H_i^{\rm ret}q,
\qquad \rho_i^{\rm ret}f_i=-\partial_{n_i}G_{i,D}^{\rm ret}f_i,
\qquad D_i^{\rm ret}q=\partial_{n_i}H_i^{\rm ret}q.
$$

这里 $H_i^{\rm ret}$ 是由 $\nabla_{(0,h)}^R\Phi(f)$ 的所有 scalar coefficients 恢复的 map，$D_i$ 是 $-\nabla_{(0,h)}^R R_\eta$ 恢复的 map；source directions 同样恢复 $G_{i,D}^R,\rho_i^R$。因此 §2–5 不可在保持当前输入接口的同时删除。共同 action variation 给

$$
(D_1^{\rm ret}+D_2^{\rm ret})q=\rho_1^{\rm ret}f_1+\rho_2^{\rm ret}f_2.
$$

inverse 必须限定为零过去 smooth pc histories 上的 causal inverse，不是所有 rough histories 上的有界 everywhere inverse。对实际 source-response range，以下论证已经足够；任意 smooth pc interface forcing 的 lifting 证明见 §7.4。存在性由第 6 节独立 constructed $K_{\rm sew}$ 的 retarded solution 给出；其 trace 解该式。若两个 $q$ 解同一个 retarded problem，差组装成零过去、零源的 form wave solution，所以为零。这证明 inverse 在所用 range 上存在且唯一，没有使用 global target 来定义它。

故在此域

$$
G_{\rm sew}^{\rm ret}=G_D^{\rm ret}
+H^{\rm ret}(D_1^{\rm ret}+D_2^{\rm ret})^{-1}
(\rho_1^{\rm ret},\rho_2^{\rm ret}),
$$

其中 $G_D$ diagonal，$Hq=(H_1q,H_2q)$。advanced prescription 给相应公式；相减得到 $E_{\rm sew}$。该核正是第 6 节 CCR 的核，因其满足同一 zero-past/future problem。对 rough $L_c^1(H)$ source，使用第 6 节 energy-continuous extension；不逐项声称所有 sharp normal derivatives 已有界延拓。

### 7.2 显式 continuum transfer 与 nonzero cross commutator

对 $\operatorname{Re}s>0$ 的 Laplace parameter，取 $\kappa=\sqrt{s^2+m^2}$，$\operatorname{Re}\kappa>0$。以下计算 causal transfer kernels，或 compact/exponentially bounded inputs 的 Laplace transforms；不假设所有 smooth pc histories 都有 Laplace transform。把 §4–5 的 derivatives 作 Laplace transform，bulk-to-field 项解 Dirichlet resolvent，history-to-field 项解零 bulk source 的 endpoint problem，response 项测定其 outward derivative。唯一性因此给每侧恢复值

$$
H_i(s)q(y)=\frac{\sinh(\kappa y)}{\sinh(\kappa L)}q,\qquad
D_i(s)=\kappa\coth(\kappa L),\qquad
\rho_i(s)f=\int_0^L\frac{\sinh(\kappa z)}{\sinh(\kappa L)}f(z)\,dz.
$$

此外 source-field derivative 恢复

$$
G_{i,D}(s;y,z)=
\frac{\sinh(\kappa y_<)\sinh(\kappa(L-y_>))}
{\kappa\sinh(\kappa L)},\qquad y_<=\min(y,z),\quad y_>=\max(y,z).
$$

这些公式完整来自 $\Phi,T,R$ 的矩阵元素：$H$ 由端值唯一性、$G$ 由单位 source derivative jump、$\rho,D$ 由指定 response section 的 variation 确定。把它们代入 §6.1 relation，才得到 correction。因此同侧 resolvent 获得 $H_i(D_1+D_2)^{-1}\rho_i$ correction；异侧原本为零的 block 变成

$$
G_{12}(s;y,z)=\frac{\sinh(\kappa y)\sinh(\kappa z)}
{2\kappa\coth(\kappa L)\sinh^2(\kappa L)}.
$$

在物理坐标 $x<0<x'$，它等于

$$
\frac{\sinh(\kappa(x+L))\sinh(\kappa(L-x'))}
{\kappa\sinh(2\kappa L)},
$$

正是 independently computed connected resolvent cross block。ODE、boundary derivative、该恒等式均已符号检查。它不是只恢复 eigenvalues，而是恢复所有 bulk source 的 Green response。

同侧也可直接核对：对第一段 $0<y\le z<L$，

$$
G_{11}(s;y,z)
=G_{1,D}(s;y,z)
+\frac{\sinh(\kappa y)\sinh(\kappa z)}
{2\kappa\coth(\kappa L)\sinh^2(\kappa L)}
=\frac{\sinh(\kappa y)\sinh(\kappa(2L-z))}
{\kappa\sinh(2\kappa L)}.
$$

另一顺序由 symmetry，另一段由反射坐标得到。这是所有 same-side source generators 上的精确 correction。

该 cross kernel 非零；取严格内部 $y,z$，传播到/跨越接口的路程为正，retarded 与 advanced corrections 分别支撑在严格正/负 time difference，不能仅以一个 $t=s$ contact term 相互抵消。所以 causal difference 也不恒零。可选择 timelike-separated smooth bulk smearings 检测它，证成 K1 的 CCR obstruction。对同侧 correction 同理；它说明 isolated Dirichlet commutator 也会改变。

在 $\operatorname{Re}s>0$ 处 $D_1+D_2$ 不为零：否则得到非零 homogeneous sewn resolvent solution，违背 $K_{\rm sew}$ positive self-adjoint 且 $-s^2\notin[0,\infty)$。不能把此结论搬到实频轴：$q=0$ Dirichlet poles 必须保留。无需除以 $\sin(kL)$ 的完整 amplitude determinant 是

$$
\det\begin{pmatrix}\sin kL&0&-1\\0&\sin kL&-1\\k\cos kL&k\cos kL&0\end{pmatrix}
=k\sin(2kL).
$$

$k>0$ 同时含 $\cos(kL)=0$ 的共同 history sector 与 $\sin(kL)=0$ 的 relative $q=0$ sector；$k=0$ 必须单独解线性 profile，外端零值及 summed derivative 迫使零解。这里的谱检查只作 completeness kill test，主证明不依赖 spectral decomposition。

### 7.3 部分消元必须保留外部 response 的完整四块

先给可反复使用的公式。所有 blocks 均由 §5 的 scalar derivatives 恢复。对若干尚未粘合的区域，用重复 port space 上的 $G,H,\rho,D$ 表示其 direct-sum causal relation。令 $Q$ 将共同 interface history 注入两份 port，$P_{\rm ext}$ 注入剩余外部 histories，记

$$
\begin{gathered}
H_a=HQ,\quad H_b=HP_{\rm ext},\quad
\rho_a=Q^*\rho,\quad \rho_b=P_{\rm ext}^*\rho,\\
D_{aa}=Q^*DQ,\quad D_{ab}=Q^*DP_{\rm ext},\quad
D_{ba}=P_{\rm ext}^*DQ,\quad D_{bb}=P_{\rm ext}^*DP_{\rm ext}.
\end{gathered}
$$

$Q^*$ 是各 interface 上 oriented response 的和；此处 scalar signs 已包含在各 outward $\Pi$ 中。于是

$$
0=\rho_a j-D_{aa}q_a-D_{ab}q_b,\qquad
\phi=Gj+H_aq_a+H_bq_b,\qquad
\pi_b=\rho_bj-D_{ba}q_a-D_{bb}q_b.
$$

在同一 causal inverse domain 上消去 $q_a$，得到

$$
\boxed{
\begin{aligned}
G'&=G+H_aD_{aa}^{-1}\rho_a,\\
H'&=H_b-H_aD_{aa}^{-1}D_{ab},\\
\rho'&=\rho_b-D_{ba}D_{aa}^{-1}\rho_a,\\
D'&=D_{bb}-D_{ba}D_{aa}^{-1}D_{ab}.
\end{aligned}}
$$

这里矩阵顺序适用于不交换的 operators；每次 $R/A$ 必须统一，不能混用 prescription。证明就是代回三行 relation，未使用任何 global target。对 composite field/response sections 的 affine translation 再求导，分别读出上述四块，因此它们是输出 $\mathbb Q'$ 的 reconstructed matrix，不是二次粘合时新增的 primitive。Green balance 求和后内部 $q,\pi$ 项因 $\mathsf S_e$ 消失，留下同一 external Green balance；因而 $R/A$ reciprocity、CPS 与 response commutators 也随部分消元保留。

### 7.4 三段 interval 的 two-port matrix 与 graph domains

取从左到右的三段长度 $\ell_1,\ell_2,\ell_3>0$，各段局部坐标 $y\in[0,\ell_i]$；最外两端 Dirichlet。中段的两个人工端点分别是 $a,b$，其 outward derivatives 为
$-\partial_y|_0,+\partial_y|_{\ell_2}$，所以 action responses 为
$+\partial_y|_0,-\partial_y|_{\ell_2}$。令共同 histories 为 $q_a,q_b$。
物理外端固定为零的第一、第三段各有一个 port，中段有两个，绝不可删掉中段的 transmission off-diagonal。

在 Laplace domain $\operatorname{Re}s>0$、
$\kappa=\sqrt{s^2+m^2}$、$\operatorname{Re}\kappa>0$，从 field-transport derivatives 恢复中段 Poisson columns

$$
H_\ell(s)(q_a,q_b)(y)
=\frac{\sinh(\kappa(\ell-y))}{\sinh(\kappa\ell)}q_a
+\frac{\sinh(\kappa y)}{\sinh(\kappa\ell)}q_b.
$$

对 response sections 的 history derivatives 取负号，得到

$$
D_\ell(s)=\kappa
\begin{pmatrix}
\coth(\kappa\ell)&-\operatorname{csch}(\kappa\ell)\\
-\operatorname{csch}(\kappa\ell)&\coth(\kappa\ell)
\end{pmatrix}.
$$

其 $\rho_\ell$ 两个 rows 由 source-response derivatives 恢复，分别是以上两列对 source 的空间积分；这是 §5.3 reciprocity 在 resolvent 中的实现。该 DtN 没有作为独立输入假设：两列解 $(-\partial_y^2+\kappa^2)H=0$ 和指定端值，response derivative 正好测其 outward normal derivatives。

同时 sewing 的 interface equation 为

$$
M^\epsilon\binom{q_a}{q_b}=\binom{r_a}{r_b},\qquad
r_a=\rho_1^\epsilon j_1+\rho_{2,a}^\epsilon j_2,\quad
r_b=\rho_{2,b}^\epsilon j_2+\rho_3^\epsilon j_3,
$$

其 Laplace matrix 是

$$
M(s)=
\begin{pmatrix}a&b\\b&c\end{pmatrix},\qquad
\begin{aligned}
a&=\kappa[\coth(\kappa\ell_1)+\coth(\kappa\ell_2)],\\
b&=-\kappa\operatorname{csch}(\kappa\ell_2),\\
c&=\kappa[\coth(\kappa\ell_2)+\coth(\kappa\ell_3)].
\end{aligned}
$$

**Causal domain 命题（proved，当前三段模型）。**
 simultaneous、先 $a$、先 $b$ 的 relations 均在 pc smooth inputs 上为 unique retarded graphs，advanced 对 fc 同理；中间外部 history 必须允许 pc/fc，而非仅 compact。

证明不用 global target。对任一已粘合 cluster，取逐段 $H^1$、匹配内部值、所有未粘合外部端点均为零 Dirichlet 的 homogeneous fluctuation form domain，form 为各段 $\int(|u'|^2+m^2|u|^2)$ 的和。非零给定的外部 histories 先减去在 cluster 内匹配值和导数的有限维空间 lift；物理外端的 history 恒为零。这个 homogeneous form 稠密、positive closed，lift 后的零过去 wave problem 唯一。不能把仍受 prescribed history 控制的端点改成 natural Neumann。任意 smooth interface forcing $r(t)$ 也可处理：迹泛函
$v\mapsto\sum_e r_e(t)v(e)$ 连续于该 form domain，Riesz/elliptic lifting 给 $w(t)\in V$ 满足
$\mathfrak a(w(t),v)=\sum_e r_e(t)v(e)$。
$w$ 随 $t$ smooth 且零过去；令 $u=w+z$，$z$ 解同一 form operator 的零过去 wave equation，forcing 为 $-\ddot w\in H$。于是 $u$ 实现所需 derivative jump/flux forcing。若另有 bulk source，线性相加。这证明每个本题所用 smooth interface RHS 的 causal inverse 存在，差解的零初始能量给唯一性。各有限 slab 上由 lift 和 energy estimates 给连续性；不宣称任意 distributional histories 的 everywhere inverse。

同一论证适用于先粘 $1,2$ 并保留 $b$、或先粘 $2,3$ 并保留 $a$；逐段 elliptic regularity 给空间 piecewise smooth、跨已粘接口的 transmission。对一般 piecewise smooth source，不要求高阶空间 jets 跨切口相等。

Laplace 的各 pivots 非零是上述 interval resolvent 的另一校验：若零，则构造出非零 homogeneous cluster solution，违背 positive self-adjoint form operator 的 $-s^2$ resolvent uniqueness。只在 $\operatorname{Re}s>0$ 使用除式，不能靠延到实频轴忽略 Dirichlet pole sectors。

### 7.5 Relation associativity 与实际 Schur stress test

**先在 relations 上证明。** 保留一开始的全部 $j_i,\phi_i$、剩余外 ports 和中间见证变量。对 simultaneous relation 的定义是存在 $q_a,q_b$ 使三条 regional relations 和两条 $\mathsf S_a,\mathsf S_b$ 同时成立。
依次 $\exists q_a\,\exists q_b$ 与 $\exists q_b\,\exists q_a$ 是同一条件；内部 response 变量由各 regional relations 决定，一并消去。这给 projection 后的 relations 相等。
关键是 §7.4 已证明每一 intermediate graph 都有相同 causal prescription 和完整所需 domain，§7.3 还保留所有外部 response。因此此处不是把一个只保留 bulk kernel 的不完整中间对象拿来声称结合性。

在 graph domain 上可以给更强的显式检验。令
$S_b=c-ba^{-1}b$；先消去 $a$ 得

$$
q_b=S_b^{-1}(r_b-ba^{-1}r_a),\qquad
q_a=a^{-1}(r_a-bq_b),
$$

及

$$
M^{-1}=
\begin{pmatrix}
a^{-1}+a^{-1}bS_b^{-1}ba^{-1}&-a^{-1}bS_b^{-1}\\
-S_b^{-1}ba^{-1}&S_b^{-1}
\end{pmatrix}.
$$

将 $a\leftrightarrow c$、$q_a\leftrightarrow q_b$ 得反序公式；直接乘 $M$ 得 identity。对 causal convolution operators 按所写顺序相乘；本 stationary scalar 模型 Laplace 中它们可交换，但关系级证明不依赖这一点。

特别地，

$$
\begin{aligned}
D_{12,\mathrm{remaining}}
&=\kappa\coth(\kappa\ell_2)-b^2/a
=\kappa\coth(\kappa(\ell_1+\ell_2)),\\
S_b&=\kappa[
\coth(\kappa(\ell_1+\ell_2))+\coth(\kappa\ell_3)].
\end{aligned}
$$

第一式连同 §7.3 的 $G',H',\rho'$ 检验第一次消元确实输出一个仍能被边界驱动的 composite。第二式给与 simultaneous matrix 完全相同的剩余 equation；反序同样成立。不能只验证 $D'$ 而遗忘 bulk-to-port rows 或 port-to-bulk columns。

明确写 $H_a=(H_1,H_{2,a},0)^T$、
$H_b=(0,H_{2,b},H_3)^T$。则两种逐次构造均给

$$
G_{123}^\epsilon
=G_D^\epsilon+(H_a^\epsilon,H_b^\epsilon)
(M^\epsilon)^{-1}
\binom{\rho_a^\epsilon}{\rho_b^\epsilon},
\qquad
\rho_a=(\rho_1,\rho_{2,a},0),\
\rho_b=(0,\rho_{2,b},\rho_3).
$$

这逐 block 覆盖所有 cross 及 same-side kernels，而非只比较特征值。
Laplace 恒等式是显式代数校验；time-domain 的因果存在、唯一性和 domains 已由前一节的 form/lifting 论证给出，不以 symbolic PASS 代替。

### 7.6 Intrinsic CCR associator

**定理（proved，三段、声明的 smooth 及 full-energy label categories）。**
令 $(12)3$ 和 $1(23)$ 都使用 §6.1 的 binary operation，第一次输出保留未粘 port 的全部结构。两者有不借助 global algebra 的 canonical associator。

证明：将嵌套 source direct sums 用显式 flattening

$$
\alpha_{\mathscr T}:((f_1,f_2),f_3)\longmapsto(f_1,(f_2,f_3))
$$

认同。§7.5 证明该 map 下 $G^R,G^A$ 相同，从而 $E$、$\ker E$ 与 $\sigma$ 都相同。它因此降到 source quotients，universal property 给

$$
\begin{aligned}
\alpha_{\rm CCR}\widehat\Phi_{(12)3}([((f_1,f_2),f_3)])
&=\widehat\Phi_{1(23)}([(f_1,(f_2,f_3))]),\\
\alpha_{\rm CCR}W_{(12)3}([((f_1,f_2),f_3)])
&=W_{1(23)}([(f_1,(f_2,f_3))]).
\end{aligned}
$$

反向 flattening 给 inverse，故 polynomial 与 universal Weyl 层皆为 exact isomorphism，且 source 支撑未动，保持对应 local nets。Cauchy solution relation 与演化也未动，故 dynamics-covariant。若保留外 ports/background，relation equality 还给相同 affine torsor 和常数 functional，intertwine $T^{R/A},R$，成为 enriched-system associator。

full-energy 版本取同一个
$L_c^1(\mathbb R;H_1\oplus H_2\oplus H_3)$。
共同 transmission form 的 energy estimate 使 smooth source kernels 唯一连续延拓，故两种 $E$ 在全部 energy sources 上相等；随后是 **exact quotient map**，不是 Weyl norm closure。任一全能量 solution 的 source-on-to proof 仍是 §6.4 的时间 cutoff 公式。这不要求在所有 rough controls 上逐项定义 $D^{-1}$。

associator 的定义完全在 regional generators、causal relations 与 universal CCR presentation 内完成；§6.5 的 global assembly 只是另外的 comparison theorem。三段定理没有声称一般几何或任意 abstract system 的 graph gates 总成立；更多段的 coherence 需要对应 domains 保持闭合后才可沿同一 flattening 论证。

## 8. 后续 representation theorem candidates

| 候选 | 实际需要的输入 | 本文结论 |
|---|---|---|
| Fiberwise tensor product / 对 central history 作 balanced product | central base algebra 及明确两侧 homomorphisms | 可匹配参数，不能改变 K1 的 CCR；作为 full physical sewing 为 false |
| Matched-label fixed points | distinguished Weyl labels、trace grading、实际 character action | parent kinematics 中 proved；第 9 节作 corollary；不量子化完整 response |
| Equalizer | 两个指定的 algebra homomorphisms | response 数值/derivation 不是自动的 algebra map；未给 maps 就只有类比 |
| Cotensor product | coalgebra/Hopf algebra，实际 left/right coactions、兼容的 tensor completion | discrete jump grading 可在 algebraic Weyl span 上给 group-like coaction；其 degree-zero equalizer 是 kinematic。物理 history/response coaction open |
| Balanced algebra product | base algebra 及保证 balancing ideal 与乘法相容的 central maps，或其他已证相容结构 | 一般 bimodule tensor product 只是 module，不自动成为 algebra；noncentral balancing 不能凭符号定义 |
| Crossed product | 一个单代数上的具体 group action、拓扑、covariant universal representation | transport groupoid 并不自动给这个 action。无限维 smooth history group非局部紧，不能默认 Haar；把它离散化可造 algebraic crossed product，但不因此恢复物理 response/locality，Gap B open |
| Connes fusion | 指定 von Neumann algebras、normal left/right actions、Hilbert correspondences | 当前没有提供这些；是 sector composition 候选，不是本文 observable algebra 定义 |
| Factorization algebra / descent | open-set assignment、disjoint structure maps、locality/descent axioms及必要 derived structures | timelike closed-cell histories 本身不是这样的数据；本稿没有此定理 |
| $\operatorname{Sew}_{\rm CCR}$ | $\mathbb Q_i$、指定 $\Phi,T^{R/A},R$ 与 action-derived $\mathsf S_e$；Green blocks 由 derivatives 恢复 | 本文两/三段 interval composition、assembly 与 intrinsic associator proved；它重构 CCR，不保留旧 field multiplication |

本节仅讨论已定义 composition 的后续 representation theorem candidates，不再承担当前 gluing 的定义。一个可检验的后续目标是：构造某个具体 realization，并证明其重新识别的 physical generators、关系与 $\operatorname{Sew}_{\rm CCR}$ 的 presentation 一致。至少须产生第 7 节的 cross block、改变同侧 Dirichlet CCR、处理 initial compatibility 与 pole sector。没有这些验证，不能称为完成。

## 9. 原 formalism 字典与旧 Weyl 定理的 corollary 地位

| `gluing formalism.md` | 本文对象 | 不得混同 |
|---|---|---|
| $\mathcal Z_{i,e}$ | Green identity 看见的完整 $(q_i,\Pi_i^{\rm out})$ variational trace，含 domain/duality | 不是已定义的 interface operator algebra |
| $\omega_{i,e}^{\rm out}$ | $\int\delta\Pi_i\wedge\delta q_i$ 及 endpoint balance | 不是 fixed-fiber symplectic form；后者令 $\delta q_i=0$ |
| $\mathcal B_i$ | chosen admissible history space；smooth charts 与实际 energy trace range分别声明 | 不是可随意带平移不变测度的 Hilbert configuration space |
| $\mathfrak D_i\subset\Xi_i^-\times\mathcal B_i$ | fiber 非空性、初始 jets 与可用 transport directions 的定义域 | 不只是 $\mathcal B_i$ 内部 face compatibility |
| $\mathcal P_i[q_i]$ | 本文 $j=0$ fiber；扩展为 $\mathcal P_i[j,q]$ 与指定 affine source quotient | 不等于 variable-trace Cauchy parent |
| $\mathcal R_i$ | $\Pi_i^{\rm hom}[\xi_i^-]+\rho_i j-D_iq_i$；smearing 后的 affine $R_{i,h}$ | 不是仅依赖 $q_i$ 的函数；不是无 endpoint 的 Hessian |
| $\mathsf S_e=\operatorname{Graph}(\mathbb J_{ij})$ | full trace transmission；cotangent chart 为 $q_j=J_{ij}q_i$、$\Pi_i+J_{ij}^*\Pi_j=0$ | 不是单一 configuration jump kernel |
| $\mathscr U_i$、$\Theta_i^\pm$ | driven affine evolution、transport covariance 和 response Green identity 的 endpoint data | 不能由 response map 单独替代 |
| $\mathcal C$、$\operatorname{Ass}$ | 第 6 节 independently defined sewn weak locus 与 piecewise assembly | 不通过 global restriction image 定义 $\mathcal C$ |
| $\mathcal S_M$、$\Xi_i^\pm$ | solutions 与 Cauchy data 分别命名；$\mathcal E$ 是 observable source quotient | 三种 labels 不复用同一符号 |

有 face/corner compatibility 时，response 只在实际 common-history tangent 的 dual 中求和；不得把 ambient face covectors 的 representatives 当作无歧义 intrinsic quantities。高维、gauge、null extensions 要重新证明 $\mathcal Z$、domain、Green identity 和 reconstruction，不能套用本 interval 定理。

对旧 `Weyl algebra factorization.md`，保留以下 package，均在其声明的 parent-label category 内理解：

$$
\mathcal X_i^{\rm par}=V_i\oplus H_i,\qquad
\mathcal X_{\rm match}=V^{\rm sew}\oplus H^{\rm dup},\qquad
\Lambda_{\rm jump}=\left(\bigoplus_i\mathcal X_i^{\rm par}\right)/\mathcal X_{\rm match}.
$$

给 $\Lambda_{\rm jump}$ discrete topology，characters 作用为 $\beta_\chi W(z)=\chi([z])W(z)$。compact dual 的 Haar expectation 在 Weyl polynomials 上恰好留下 matched labels；由 norm contraction 延到 completion。因此

$$
\left(\bigotimes_i\mathfrak W(\mathcal X_i^{\rm par},\sigma_i)\right)^{\widehat{\Lambda}_{\rm jump}}
\cong\mathfrak W(\mathcal X_{\rm match},\sigma|_{\rm match}).
$$

选 $\sigma_i=-\Omega_i$ 时，第 6 节 source-to-solution duality 和 assembly 使右侧同构于本文 $\mathfrak A_M^W$。若保持旧文 $\sigma_i=\Omega_i$，就是对应 opposite convention 的同构。没有把 smooth label subalgebra 冒充 full energy completion。

可保留的 corollaries：parent direct-sum/tensor-product identity、上述 fixed points、matched energy assembly、weak flux/operator-domain realization、character expectation reduction-by-stages，以及 energy density 不推出 Weyl norm density 的诊断。有限 partition 中 commuting label selectors 的顺序无关也可保留。

不能由此声称：$\mathfrak A_i^{\rm aff}[q]$ 已有 fusion；character action 是 action-derived physical interface symmetry；Flux matching 是一个 quantum moment-map quotient；所有 parent dynamics 限制到 fixed points；旧 matched-label selectors 已证明本文 §7.6 的 enriched associator；任何 regional product Fock factorization。

当前旧文第 3.2 节已经先从 restricted form 得到 dynamics，再证明 intertwining；**不能再批评它只是用 global evolution 共轭定义 dynamics**。它本身没有给出本文 §2–7 的 source/history/response 重构与 causal elimination；后者是此稿新增的 composition theorem，不是对该 form argument 的重命名。

符号修订仅在新文件实行：$\Gamma_e$ 始终为 worldtube；商群用 $\Lambda_{\rm jump}$；Cauchy data 用 $\mathcal X$；源商用 $\mathcal E$；$q$-fixed algebra 与 parent algebra 严格分名。没有改动旧文件。

## 10. 一般 assembly theorem 所需的分项条件

| 要求 | 必须给出的证据 | 本文 interval 状态 |
|---|---|---|
| Map well-defined / CCR preservation | test map 降到方程商，且 Peierls pairings intertwine | proved：$E$ intertwining |
| Injectivity | kernel 无额外丢失；或已构造 inverse；存在 gauge 时另需正确 radical quotient | proved：restriction inverse |
| Surjectivity | 所有目标 labels 可实现，含 compatibility、pole/zero sectors、全部 energy category | proved：source restriction 与 cutoff-in-time exact onto argument |
| Dynamics covariance | independently defined regional sewing evolution，与 global uniqueness/Green operators相容 | proved：closed form、operator domain、functional calculus |
| Support/locality preservation | local test assignment 双向对应，causal Green support / finite speed | proved：第 6.6 节；不是 sharp boundary locality |
| Cross-history covariance | arrows 的域、composition、与 evolution 交换 | proved：smooth compatible affine translations；一般 rough chart conditional |
| Associativity of enriched sewing | 三段 two-port relation、全部剩余 response、causal domains 和 source quotient | proved：§7.3–7.6；一般几何仍 conditional |
| Bare field-preserving fusion | 同时保持旧同侧及新 physical CCR | false/no-go：K1 与 §7.2 |

一般 linear bosonic extension 是 **conditional**：若上述前四类解析数据和 support 条件已给出，则同一个 universal-generator proof 给 algebra isomorphism。它不是 nonlinear Peierls deformation、gauge/BRST quantization、任意 AdS timelike IBVP 或 null Goursat theorem。尤其不允许把“defined as global restriction image”当作 unrestricted regional onto 的证明。

## 11. Claim ledger 与剩余 gates

| ID | Claim | Tier |
|---|---|---|
| H1 | 指定 affine source quotient、polynomial/Weyl fibers、regional local net，origin independence | proved，§2 的 smooth category |
| H2 | $(j,q)$ translation groupoid、$R/A$ transport、cocycle、causal/evolution covariance | proved，§4 的 compact 与单侧 smooth domains |
| H3 | smeared response 在指定 source quotient 内；四块 response 由 quantum section derivatives 唯一恢复，commutators 与 Green duality 相容 | proved，§5 |
| H4 | retarded connection 就是 response inner derivation，或 connection 平衡自动等于 flux sewing | 无条件等同为 false；具体 Ward/module realization open |
| H5 | enriched causal relation elimination 定义复合 CCR，产生 cross 与 same-side correction | proved，两段 interval，§6–7.2 |
| H6 | full-energy polynomial/Weyl assembly，exact onto、evolution、local net | proved，§6；使用明确 energy source category |
| H7a | bare fixed-history on-shell algebras 的 ordinary field-preserving fusion | false/no-go：K1 + same-side correction；不是待完成目标 |
| H7b | enriched boundary-response CCR composition/deformation | proved，当前 interval model；不是普通 algebra amalgamation |
| H8 | 三段中间 two-port 的 simultaneous/逐次 causal relation equality 及 intrinsic CCR associator | proved，§7.3–7.6；不由 global target 定义 |
| H9 | crossed product/cotensor/Connes fusion realization，flux 的 opposite-module interpretation | open，仅 representation theorem candidates；Gap B/C 的候选识别未证明 |
| H10 | general rough-history smooth bundle、一般高维/非线性/gauge/null theorem、sharp response operators、Fock factorization | open / not claimed |

**Checked symbolically** 单独记录在 §12，不是上述 functional-analysis claims 的证据等级。

下一步只剩独立扩展 gates：明确高维 source/history trace spaces 和 conormal estimates；证明相应 causal graph、partial composition 的 domain closure 及 energy extension；或另选具体 representation 模型，检验其 physical generators 是否实现已知 correction。不能再把 H7a 当成未解决的正目标，也不能用一个候选术语替换已定义的 H7b。

## 12. Verification 与来源边界

**本轮新增 checked symbolically:** Mathematica 的 15 个命名检查组全部为零，包括 two-port ODE/DtN、两个 Schur 顺序、剩余 port 的 DtN、两段 cross/same-side kernels、source/response Green 符号，以及三段全部九个 Green blocks 在两种消元顺序下的相等。以下代码只验证这些代数恒等式；causal inverse domains、energy extension、source quotient onto 与 universal CCR theorem 的依据仍是正文证明。

```wolfram
ClearAll["Global`*"];
om[u_,v_]:=u[[2]]v[[1]]-v[[2]]u[[1]];
pb[f_,g_]:=D[f,q]D[g,p]-D[f,p]D[g,q];
h0=Sinh[k(l-y)]/Sinh[k l]; h1=Sinh[k y]/Sinh[k l];
dn={{-D[h0,y],-D[h1,y]}/.y->0,{D[h0,y],D[h1,y]}/.y->l};
a=k(Coth[k l1]+Coth[k l2]); b=-k Csch[k l2]; c=k(Coth[k l2]+Coth[k l3]);
mat={{aa,bb},{bb,cc}}; inv=Inverse[mat]; s=cc-bb^2/aa;
byFirst={{1/aa+bb^2/(aa^2 s),-bb/(aa s)},{-bb/(aa s),1/s}};
q1=(r1-bb r2/cc)/(aa-bb^2/cc); q2=(r2-bb q1)/cc;
gd[x_,z_,len_]:=Sinh[k x]Sinh[k(len-z)]/(k Sinh[k len]);
checks=<|
"twoPortODE"->FullSimplify[{-D[h0,{y,2}]+k^2 h0,-D[h1,{y,2}]+k^2 h1}],
"twoPortDtN"->FullSimplify[dn-k{{Coth[k l],-Csch[k l]},{-Csch[k l],Coth[k l]}}],
"SchurFirst"->Simplify[inv-byFirst],
"SchurReverse"->Simplify[mat.{q1,q2}-{r1,r2}],
"effectivePort12"->FullSimplify[c-b^2/a-k(Coth[k(l1+l2)]+Coth[k l3]),Assumptions->k>0&&l1>0&&l2>0&&l3>0],
"sameSide"->FullSimplify[gd[y,z,l]+Sinh[k y]Sinh[k z]/(2 k Coth[k l]Sinh[k l]^2)-gd[y,z,2l],Assumptions->k>0&&l>0],
"crossSide"->FullSimplify[Sinh[k y]Sinh[k z]/(2 k Coth[k l]Sinh[k l]^2)-Sinh[k y]Sinh[k z]/(k Sinh[2k l])],
"affineResponseSign"->Expand[pb[b0 q-a0 p,d0 q-c0 p]+om[{a0,b0},{c0,d0}]],
"forcedGreen"->Expand[(D[u[t,y],{y,2}]-m^2 u[t,y]+kk[t,y])v[t,y]-(D[v[t,y],{y,2}]-m^2 v[t,y]+ll[t,y])u[t,y]-D[D[u[t,y],y]v[t,y]-D[v[t,y],y]u[t,y],y]-kk[t,y]v[t,y]+ll[t,y]u[t,y]],
"rhoPoisson"->FullSimplify[-(D[gd[z,y,l],y]/.y->l)-Sinh[k z]/Sinh[k l]]
|>;
Print[checks];Print["allZero=",And@@(TrueQ[FullSimplify[#==0]]&/@Flatten[Values[checks]])];

ClearAll["Global`*"];
mm={{a,b},{b,c}};
hh={{h1,0},{ha,hb},{0,h3}};
rr={{r1,ra,0},{0,rb,r3}};
gg=DiagonalMatrix[{g1,g2,g3}];
direct=gg+hh.Inverse[mm].rr;
gfirst=gg+Outer[Times,hh[[All,1]],rr[[1]]]/a;
hremain=hh[[All,2]]-hh[[All,1]] b/a;
rremain=rr[[2]]-b rr[[1]]/a;
first=gfirst+Outer[Times,hremain,rremain]/(c-b^2/a);
glast=gg+Outer[Times,hh[[All,2]],rr[[2]]]/c;
hother=hh[[All,1]]-hh[[All,2]] b/c;
rother=rr[[1]]-b rr[[2]]/c;
last=glast+Outer[Times,hother,rother]/(a-b^2/c);
checks=<|
"allNineGreenBlocksFirst"->Simplify[first-direct],
"allNineGreenBlocksReverse"->Simplify[last-direct],
"sourceActionSign"->Expand[-aa pp+j pp-(-aa+j)pp],
"responseBoundaryGreenSign"->Expand[(-piu)qv-(-piv)qu+piu qv-piv qu],
"phaseTransportCocycle"->Expand[(u+v)f-u f-v f]
|>;
Print[checks];Print["allZero=",And@@(TrueQ[#==0]&/@Flatten[Values[checks]])];
```


**Verified:** 本文给出 affine source quotient/local net、source/history transport、smeared response 的 source代表、四块响应恢复与 Green reciprocity、causal relation elimination、两段 cross/same-side correction、三段 two-port intrinsic associator、interval energy extension 和 assembly inverse 的证明。使用的标准分析输入为 interval Sobolev trace/patching、positive closed-form representation、self-adjoint wave functional calculus 及局部 energy estimate；相应应用的 domain 已逐项写出。

**既有检查，本轮已重跑:** 原 11 个 Mathematica residual 仍全部为零：scalar first variation、observable/CPS dual sign、oscillator Peierls sign、Poisson-kernel ODE、normal derivative、cross-interface resolvent、完整三振幅 determinant、Weyl cocycle、response Green identity、interface-action sign、inverse summed DtN 恒等式。这些只检查局部公式，未机器验证 functional analysis、surjectivity 或 universal $C^*$ theorem。

下面是同一批检查的可复现合并版本；所有除式仅在分母非零的声明域使用，Laplace application 取 $\operatorname{Re}s>0$：

```wolfram
ClearAll[t, y, m, L, k, s, q, p, a, b, c, d, j, n, om,
  phi, eta, r, u, lam, sg, pb];
sg[x_, z_] := x[[2]] z[[1]] - z[[2]] x[[1]];
pb[f_, g_] := D[f, q] D[g, p] - D[f, p] D[g, q];
poisson = Sinh[k y]/Sinh[k L];
checks = <|
  "firstVariation" -> Expand[
    D[phi[t,y],t] D[eta[t,y],t] - D[phi[t,y],y] D[eta[t,y],y]
    - m^2 phi[t,y] eta[t,y]
    - (-D[phi[t,y],{t,2}] + D[phi[t,y],{y,2}]
       - m^2 phi[t,y]) eta[t,y]
    - D[D[phi[t,y],t] eta[t,y],t]
    + D[D[phi[t,y],y] eta[t,y],y]],
  "observableCPSDualSign" -> Expand[pb[b q-a p,d q-c p]+b c-d a],
  "oscillatorPeierlsSign" -> FullSimplify[
    pb[q Cos[om t]+p Sin[om t]/om,q Cos[om s]+p Sin[om s]/om]
    + Sin[om (t-s)]/om],
  "PoissonODE" -> FullSimplify[-D[poisson,{y,2}]+k^2 poisson],
  "DtN" -> FullSimplify[(D[poisson,y]/.y->L)-k Coth[k L]],
  "crossResolvent" -> FullSimplify[
    Sinh[k (L+y)] Sinh[k (L-s)]/(2 k Coth[k L] Sinh[k L]^2)
    - Sinh[k (L+y)] Sinh[k (L-s)]/(k Sinh[2 k L])],
  "spectrum" -> FullSimplify[
    Det[{{Sin[k L],0,-1},{0,Sin[k L],-1},
      {k Cos[k L],k Cos[k L],0}}]-k Sin[2 k L]],
  "WeylCocycle" -> Expand[sg[{a,b},{c,d}]+sg[{a+c,b+d},{j,n}]
    - sg[{c,d},{j,n}]-sg[{a,b},{c+j,d+n}]],
  "responseGreen" -> Expand[
    (D[r[t,y],{y,2}]-m^2 r[t,y]) u[t,y]
    - (D[u[t,y],{y,2}]-m^2 u[t,y]) r[t,y]
    - D[D[r[t,y],y] u[t,y]-D[u[t,y],y] r[t,y],y]],
  "interfaceAction" -> D[-lam q^2/2,q]+lam q,
  "inverseDtN" -> FullSimplify[1/(2 k Coth[k L])-Tanh[k L]/(2 k)]
|>;
Print[checks];
Print[And @@ (SameQ[#, 0]& /@ Values[checks])];
```

**Assumptions:** real free scalar、$m>0$、两段或三段长度正的一维区间、homogeneous physical Dirichlet、无额外 interface/corner action。$L=-P$，$L\phi=j$；$\Pi=-\partial_n\phi$，$D=+\partial_nH$，$E=G^A-G^R$。smooth compact/pc/fc response charts 与 full-energy $L_c^1(\mathbb R;L^2)$ labels 分开；部分消元保留全部未粘 ports 和 source generators。所有 Weyl statements 指 universal algebra；不先选择 state 或 Fock representation。

**Not verified:** general history topology 的光滑 bundle theorem、rough boundary response 的普遍连续延拓、crossed-product/cotensor/Connes realization、跨模型 associativity、gauge/nonlinear/AdS/null extensions，以及 sharp-boundary/Fock/无限维测度主张。bare field-preserving fusion 已有 no-go，不能再归入“尚未验证”。

本地概念与符号来源是 `formalism.md`、`gluing formalism.md` Part I/II/IV/V、`roadmap.md` Gap B/C，以及 `perturbation/formalism.md` 的 CPS/Peierls convention；旧 Weyl note 只用作第 9 节对照。外部文献 [Benini–Dappiaggi–Schenkel, Quantum field theory on affine bundles](https://arxiv.org/abs/1210.3457) 提供 affine quantization 的相关先例；其 globally hyperbolic affine-bundle framework **不自动证明本文人工 timelike boundary IBVP 或 history fusion**。这里的 interval construction 与证明已在正文给出，不把文献的 abstract 当成该扩展的 theorem citation。
