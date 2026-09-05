# Classical Regional Observable Algebra Gluing

研究起点：2026-09-05。本文针对非规范系统，独立定义 regional/global classical observable algebra、其拓扑与局域子代数，然后从区域作用量和响应定义 sewing。`classical_gluing_formalism.md` 提供作用量及 transmission 的几何设置；本文补上其中未定义的 observable 类别与代数组合。

**结论。** 对下文指定的 static free scalar interval，区域作用量、历史输运和响应给出不使用 global algebra 作输入的经典 sewing。允许的历史 families 由 §§22–23 的统一 mixed coefficients、smooth history-derivative densities 和有限 Sobolev loss 定义；它们包含平滑时间涂抹的 polynomial local composites、相应能量和 smeared boundary responses。§24 的连续 split quotient 覆盖独立 global algebra 的整个选定函数类别，保持乘法、括号与时间演化，并给出 cutting inverse。这里的 local-net 同构指 §24.4 的商后 supported-core 分层完成；不声称每个严格局域 family prequotient 都有保持原支撑的 section。

§§3–13 的小 regular completion 保留独立 tensor theorem。扩大后的 $\mathfrak A,\mathfrak B$ 具有每层及整个 LF 空间的完备性；乘法与括号分别连续，并有明确的层间联合估计。但是它们在整个并集上的联合连续性、扩大类别的 canonical independent completed projective tensor identity 均被 §25 的反例否定。本文的重建同构是保持分层 Poisson operations 的连续线性同构，不将扩大空间称为通常具有联合连续运算的 locally convex Poisson algebra。bare fixed-history fusion 仍为 **false**。

**Proved** 指正文在声明模型/函数类别内的论证；**conditional** 指尚须满足列出的具体前提；**checked symbolically** 只指 §§12、20、26 的有限恒等式检查。本轮审计与最终边界见 §§21–26；不开展量子化、非线性或 gauge 推广。

## 1. 所要求的结构

设区域为时间 slab $M_i=I\times\Sigma_i$，人工边界为 timelike worldtube。区域对象必须在指定物理外边界条件下独立构造，不定义为已知全局解或全局代数的 restriction image。

| 条件 | 本文的具体含义 |
|---|---|
| Support/locality | 保留原始 bulk smearing space 与 field map；由支撑定义 local net。因果分离支撑的 Poisson 括号为零。 |
| History dependence | 保留 prescribed-history theories、causal transports 和响应；joint families 的全部 mixed derivatives 满足 §22 的统一 density/loss bounds，释放时使用完整 chain rule。 |
| Completed tensor structure | 小代数有独立 projective tensor identity；扩大类按 joint Hamiltonian coefficients 完成 cylinder tensor core，具有层间 tensor maps，不能认同先完成各因子后的 projective tensor product，§25.4。 |
| Cutting behavior | 涂抹核的每个变量按区域分块；接口 histories/response 在切割后保留。cut 后 sew 恢复原对象；反向只恢复相容的区域数据。 |
| Dynamics and reconstruction | sewing 从区域响应产生新 Peierls 核；随后证明与独立 global kernel 的 intertwining、双向映射及连续性。 |

不能用普通 Poisson tensor product 的零 cross bracket 作为 glued timelike-separated fields 的括号。也不能用 spatial support of $Ef$ 代替 smearing $f$ 的 localization。以下不要求每个完成元素都有唯一最小支撑；localization 的精确对象是指定的子代数 net。

### 1.1 Action Input 与符号

后文基准取 $\Sigma_i=[0,\ell_i]$，$y_i$ 朝共同切口增加；物理端 $y_i=0$ 为 Dirichlet。signature 为 $(-,+)$，$m>0$，无真实 interface action/field。先给区域作用量

$$\begin{align}
S_i[\phi_i;j_i]=\frac12\int_I\!dt\int_0^{\ell_i}\!dy_i (\dot\phi_i^2-\phi_i'^2-m^2\phi_i^2)+\int_I(j_i,\phi_i)_{H_i}dt.
\end{align}$$

变分后得到 $L_i\phi_i=j_i$，$L_i=\partial_t^2-\partial_{y_i}^2+m^2$，以及

$$\begin{align}
q_i&=\phi_i(\ell_i), & \Pi_i&=-\phi_i'(\ell_i),\\
\delta S_i&=\int(-L_i\phi_i+j_i)\delta\phi_i +\Theta_i(t_+)-\Theta_i(t_-)+\langle\Pi_i,\delta q_i\rangle,\\
\Theta_i(t)&=\int_0^{\ell_i}\dot\phi_i\delta\phi_i\,dy_i.
\end{align}$$

固定历史时 $\delta q_i=0$，但每份区域理论保留历史变化的响应。先建立这些区域对象，再于 §6 认同共同历史并从其自由变分导出 flux matching；不事先把 transmission 作为孤立区域的边界条件。

## 2. 静态线性理论的 Observable Labels

先给区域与整体共同使用的定义方法。令 $H$ 为实 bulk $L^2$ 空间，$K\ge\mu^2>0$ 为由该系统自身的作用量和边界条件定义的正自伴空间算子。假设 $K$ 有 compact resolvent，且某个 $(1+K)^{-r}$ 为 trace class。interval 的这些条件在 §6 独立验证。取

$$\begin{align}
L&=\partial_t^2+K, & \mathcal X_K^\infty&=D(K^\infty)\oplus D(K^\infty),\\
p_r(u,v)&=\|K^{r+1/2}u\|_H+\|K^rv\|_H, & r&=0,1,\ldots.
\end{align}$$

该 Fréchet 空间描述全部 smooth-vector homogeneous Cauchy data。其解空间记为 $\mathcal S_K^\infty$。保留 CPS convention

$$\begin{align}
\Omega(z,w)&=(v_z,u_w)_H-(v_w,u_z)_H, & \{Q,P_Q\}&=1.
\end{align}$$

### 2.1 原始涂抹函数与 Source 的角色

对任意非空有限 slab $I$，取

$$\begin{align}
\mathscr F_K(I)&=C_c^\infty(I^\circ;H)_{\mathrm{observable}}, & \mathscr J_K(I)&=C_c^\infty(I^\circ;H)_{\mathrm{control}}.
\end{align}$$

固定 bulk $L^2$ 配对后，以 $\iota:\mathscr J_K\to\mathscr F_K$ 认同函数系数，保持两个角色不同。$j$ 改变方程 $L\phi=j$；$f$ 标记同一解空间上的函数 $\Phi(f)(\phi)=\int(f,\phi)_Hdt$。下面 $Gf$ 简写 $G\iota^{-1}f$。

使用光滑时间、空间 $L^2$ 的 labels 有一个目的：任意空间切割的 restriction 与 piecewise assembly 都保持同一类别。不把分段光滑函数的零延拓叫作全局光滑。内部 $C_c^\infty(O)$ tests 仍定义一个另行指定的 smooth local core。

取 $L$ 的零过去/零未来 Green maps，并定义

$$\begin{align}
E_K&=G_K^A-G_K^R,\\
(E_Kf)(t)&=-\int_I K^{-1/2}\sin((t-s)\sqrt K)f(s)\,ds,\\
V_K&=\mathscr F_K(I)/\ker E_K, & \sigma_K([f],[g])&=\int_I(f,E_Kg)_Hdt.
\end{align}$$

### 2.2 Label Topology、精确 onto 与 Time-Slice

**引理。** $E_K:\mathscr F_K(I)\to\mathcal S_K^\infty$ 连续且 onto，并有连续线性 right inverse。因此 quotient topology 将 $V_K$ 拓扑同构于 $\mathcal X_K^\infty$；并且

$$\begin{align}
\sigma_K([f],[g])=-\Omega(E_Kf,E_Kg).
\end{align}$$

**证明。** compact time support 消去时间分部积分的端点项。把任意次 $\sqrt K$ 作用到 sine/cosine 核，再把对应时间导数移给 $f$，得到 $E_Kf$ 在每个 $p_r$ 中的界，右侧只需有限个 $\|\partial_t^af\|_{L^1(I;H)}$。因此空间上只为 $L^2$ 的输入也产生 homogeneous smooth-vector solution。

给定任意 $\psi\in\mathcal S_K^\infty$，取 $\chi$ 在 $I^\circ$ 内从 $0$ 变为 $1$，且 $\chi'$ compact，置

$$\begin{align}
f_\psi=\iota(\chi''\psi+2\chi'\dot\psi).
\end{align}$$

$G^Rf_\psi=\chi\psi$、$G^Af_\psi=(\chi-1)\psi$，故 $E_Kf_\psi=-\psi$。$\psi\mapsto-f_\psi$ 连续进入一个固定时间支撑的测试空间，是 right inverse。Green identity 给最后的 pairing identity；$\Omega$ 在 $\mathcal X_K^\infty$ 上非退化，故 $\sigma_K$ 也非退化。$\chi$ 的 transition 可放在任意更小时间带，证明 exact time-slice，不使用 density 替代 onto。$\square$

由 trace-class power 假设，$\mathcal X_K^\infty$ 为核 Fréchet 空间；在 $K$ 的本征基上这是加权快速衰减序列空间。有限 spectral projections 在每个 $p_r$ 中收敛。这里选择的是 smooth-vector labels，**没有**以稠密性认同全部 finite-energy labels 的另一种代数。

## 3. 明确的 Completed Classical Observable Algebra

### 3.1 函数类别与 Poisson 连续性

令 $(V,\sigma)$ 为上述实核 Fréchet observable-label space，复化并取代数对称代数 $S(V_\mathbb C)$。对 $a=\sum a_n$ 和任意连续 seminorm $p$，定义

$$\begin{align}
\|a\|_{p,1/2}=\sum_{n\ge0}\sqrt{n!}\;p^{\otimes_\pi n}(a_n).
\end{align}$$

各 $a_n$ 使用对称 projective tensor topology；$p$ 遍历所有连续 seminorms，包括它们的任意正倍数。定义

$$\begin{align}
\boxed{\mathcal A^{\mathrm{cl}}(V,\sigma)=\widehat S_{1/2}(V_\mathbb C).}
\end{align}$$

即按这些 seminorms 完成 $S(V_\mathbb C)$。元素是所有 $a_n\in\widehat S_\pi^n(V_\mathbb C)$、并对每个 $p$ 满足上述和有限的序列。这个明确的增长条件既完成每个次数，也控制无限次数；不同权重会给不同函数类别，不宣称该选择唯一。

乘法为对称乘积；$*$ 为实结构诱导的复共轭。在线性生成元上规定 $\{v,w\}=\sigma(v,w)\mathbf1$，按 Leibniz 延拓。若 $q\ge p$ 且 $|\sigma(v,w)|\le q(v)q(w)$，则

$$\begin{align}
\|ab\|_{p,1/2}&\le\|a\|_{2p,1/2}\|b\|_{2p,1/2},\\
\|\{a,b\}\|_{p,1/2}&\le\|a\|_{2q,1/2}\|b\|_{2q,1/2}.
\end{align}$$

**证明。** 乘法使用 $(n+m)!\le2^{n+m}n!m!$。括号的 $n,m$ 次项有 $nm$ 个 contraction，并使用

$$\begin{align}
nm\sqrt{(n+m-2)!}\le2^{n+m}\sqrt{n!m!},\qquad n,m\ge1.
\end{align}$$

该界由 $(n+m-2)!\le2^{n+m-2}(n-1)!(m-1)!$ 和 $n\le2^{n-1}$ 推出。先对 factorizing tensors 估计，再取 projective infimum、对次数求和并完成。Jacobi、Leibniz 与 $*$ 相容性由稠密 polynomial core 和连续性延拓。因此这是 complete locally convex Poisson $*$-algebra。核性由核空间上的完成对称张量构造给出：选择更强 seminorm 使基础 label spaces 的映射 nuclear，再放大该 seminorm，使各次数映射的 nuclear-norm 上界成为可求和的几何级数。本文不使用 Hilbert/Fock completion。$\square$

该 topology 是 factorially weighted symmetric-algebra topology 的一个标准选择；相关先例见 §13。上述乘法/括号估计是本文实际使用的连续性证据。

### 3.2 它确实是一类函数，而非仅形式级数

在一个 homogeneous solution $\psi$ 上，令

$$\begin{align}
\ell_\psi([f])=\int(f,\psi)dt=-\Omega(E_Kf,\psi),\qquad a(\psi)=\sum_{n\ge0}\ell_\psi^{\otimes n}(a_n).
\end{align}$$

$\ell_\psi$ 连续，故该级数绝对收敛，并沿每条复化场方向 entire。特别地 $\exp(i\Phi(f))$ 属于该代数，因为其第 $n$ 项的 seminorm 为 $p([f])^n/\sqrt{n!}$。这里的 $\exp$ 是普通经典函数。

**忠实性。** 若 $a(\psi)=0$ 对所有 smooth solutions 成立，对 $a(\lambda\psi)$ 作 Taylor 展开，逐次数为零；polarization 给各 $a_n$ 在所有 smooth solution evaluations 上为零。有限 spectral projections 把它化为有限维张量，此时非退化的 $\Omega$ 保证 evaluations 分离所有系数。投影在完成张量中收敛，故 $a_n=0$。因此上式是 injective 的实际函数实现。对有限能量解 evaluation 也连续，smooth labels 仍分离这些解，但没有因此更换 label completion。

对 polynomial core，functional Poisson formula 正是 $\langle F^{(1)},E_KG^{(1)}\rangle$。完成后以连续延拓定义同一 bracket；逐项微分的收敛由同类 seminorm bounds 控制。

### 3.3 独立系统的 Completed Tensor Theorem

**定理。** 对两份独立的 label spaces，有 canonical topological Poisson isomorphism

$$\begin{align}
\mathcal A^{\mathrm{cl}}(V_1\oplus V_2,\sigma_1\oplus\sigma_2)
\cong \mathcal A^{\mathrm{cl}}(V_1,\sigma_1)\widehat\otimes_\pi \mathcal A^{\mathrm{cl}}(V_2,\sigma_2).
\end{align}$$

**证明。** 在 polynomial core，将 $v_1\oplus0$ 送到 $v_1\otimes1$，$0\oplus v_2$ 送到 $1\otimes v_2$；逆映射为两份包含后相乘。这两个 maps 已在生成元上互逆。展开每个对称 tensor 的所有区域分配，最多 $2^N$ 项，且 $\sqrt{n!m!}\le\sqrt{(n+m)!}$，所以去往 tensor product 的 map 在 $p_1+p_2$ 的固定正倍数下连续。反向使用 §3.1 的乘法估计，也连续。两个 maps 因而分别延到完成，并由 core density 互逆。projective tensor universal property 给反向 bilinear map 的延拓。独立双方的 cross bracket 为零，故 Poisson 性在 core 成立并延拓。$\square$

这一定理的对象是独立系统；它没有声称人工墙拆除后的 physical bracket 仍为 $\sigma_1\oplus\sigma_2$。

### 3.4 与全部 Hamiltonian 泛函的区别

在 smooth phase space 上，模态 Hamiltonian

$$\begin{align}
H_{\mathrm{en}}=\tfrac12\sum_n(P_n^2+\lambda_nQ_n^2)
\end{align}$$

有 smooth Hamiltonian vector $(v,-Ku)$。但其 quadratic coefficient 的对角项为 $1$ 与 $\lambda_n$，并非 smooth label tensor 所要求的快速衰减序列，因此 $H_{\mathrm{en}}\notin\mathcal A^{\mathrm{cl}}(V_K,\sigma_K)$。这给出与 $\mathcal A_{\mathrm{Ham}}$ 的具体区别。

时间演化仍有连续 algebra automorphisms：$U_t$ 是 smooth Cauchy wave evolution，$\alpha_tF(\psi)=F(U_t\psi)$；在线性 labels 上由 $U_{-t}$ 作用。它保持 $\sigma$，其各 seminorm 在紧时间区间受控；生成元把 $D(K^\infty)$ 连续送到自身。因此 dynamics 是该代数上的连续导子，不要求其 Hamiltonian 属于同一 regular algebra。local stress tensor、任意 diagonal distributional kernels 也未自动加入。§§14–19 更换系数拓扑后纳入平滑涂抹的 polynomial local composites 和 $H$；那是明确的扩大，不能反过来称它们属于本节的小代数。

## 4. Prescribed-History Regional Algebra

### 4.1 Regional Action、Histories 与非空性

使用 §1.1 的区域作用量、方向与物理边界条件。固定 $q_i$ 后，$K_{i,D}=-\partial_{y_i}^2+m^2$ 的域为 $H^2(0,\ell_i)\cap H_0^1(0,\ell_i)$。定义

$$\begin{align}
\mathcal P_i[j_i,q_i](I)=\{\phi_i\in C^\infty(I;H^2(0,\ell_i)):
L_i\phi_i=j_i,\ \phi_i(0)=0,\ \phi_i(\ell_i)=q_i\}.
\end{align}$$

$j_i$ 在时间上 smooth、空间上为 $H_i=L^2(0,\ell_i)$；$q_i$ 在时间上 smooth。slab 数据假定在 $I$ 的一个开邻域给出；存在性可先在过去乘 cutoff，再令该 cutoff 在 $I$ 附近等于 $1$。取 lift $\ell_i^{\mathrm{lift}}(y)q_i=yq_i/\ell_i$，构造

$$\begin{align}
s_i=\ell_i^{\mathrm{lift}}q_i+ G_{i,D}^R\bigl(j_i-L_i(\ell_i^{\mathrm{lift}}q_i)\bigr).
\end{align}$$

对零过去的 smooth-time $H_i$ forcing $a$，时间分部积分给

$$\begin{align}
G_{i,D}^Ra(t)=K_{i,D}^{-1} \left[a(t)-\int_{-\infty}^t\cos((t-s)\sqrt{K_{i,D}})\dot a(s)\,ds\right].
\end{align}$$

每个时间导数满足同一估计，所以该解为 $C^\infty(I;D(K_{i,D}))$；interval elliptic regularity 给所需 $H^2$。lift 后得到上式 $s_i$，并有

$$\begin{align}
\mathcal P_i[b]=s_i+\mathcal S_{K_{i,D}}^\infty.
\end{align}$$

因为两个同 source/history 解的差为 homogeneous Dirichlet 解，反复用方程给全部 $K$-compatibility。换 cutoff 或 particular solution 只改变 homogeneous origin。所有允许的初始数据保留在这个 homogeneous 部分；$\mathfrak D_i$ 定义为该区域问题实际产生的 initial-data/history pairs，不把 $q$ 与初始 jets 当作任意独立数据。零过去 particular solution 本身不是整个 phase space。

### 4.2 Affine Quotient 与完成

令 $F_{c,f}(\phi)=c+\int(f,\phi)dt$，定义

$$\begin{align}
\mathcal N_i[b]&=\{(c,f):F_{c,f}|_{\mathcal P_i[b]}=0\}, & \mathcal E_i^{\mathrm{aff}}[b]&=(\mathbb R\oplus\mathscr F_i)/\mathcal N_i[b].
\end{align}$$

由 §2 的 onto 与非退化性，

$$\begin{align}
(c,f)\in\mathcal N_i[b]\quad\Longleftrightarrow\quad E_{i,D}f=0,\qquad c+\langle f,s_i\rangle=0.
\end{align}$$

先取 $S(\mathcal E_i^{\mathrm{aff}}[b]_\mathbb C)$，令常数 affine functional 对应同一个 algebra unit 的倍数。选 origin $s_i$，在生成元上用

$$\begin{align}
[(c,f)]\longmapsto(c+\langle f,s_i\rangle)\mathbf1+[f]\in S(V_{i,D})
\end{align}$$

给此 polynomial algebra 赋予 §3 topology 并完成，定义 $\mathcal A_i^{\mathrm{cl}}[b]$。Poisson pairing 为 $\sigma_i([(c,f)],[(d,g)])=\langle f,E_{i,D}g\rangle$。上述判据给 representative independence 和双向 inverse。

若换 origin $s_i'=s_i+u$，$\lambda_u([f])=\langle f,u\rangle$ 是 $V_{i,D}$ 上连续线性 functional。origin change 为 $v\mapsto v+\lambda_u(v)\mathbf1$，且

$$\begin{align}
\|\tau_\lambda a\|_{p,1/2}\le\|a\|_{p+|\lambda|,1/2}.
\end{align}$$

这是 binomial expansion 和 $\sqrt{k!}\le\sqrt{n!}$ 的结果。$-\lambda$ 给连续 inverse。故函数类别与 topology 与 origin 无关；$\Phi_{i,b}(f)=[(0,f)]$ 始终是指定的原始 field map，不能在选 origin 后忘掉。

### 4.3 Local Net

对开放 $O\subset I^\circ\times\operatorname{int}\Sigma_i$，定义

$$\begin{align}
\mathcal A_i^{\mathrm{cl}}[b](O) =\overline{\operatorname{alg}_{\mathbb C}\{\mathbf1,\Phi_{i,b}(f):
f\in\mathscr F_i,\ \operatorname{supp}f\Subset O\}}.
\end{align}$$

支撑是 $L^2$-valued test 所确定的 spacetime distributional support；也可取 $C_c^\infty(O)$ 的 smooth sub-net。isotony 由生成集包含得到。finite propagation 和 Dirichlet wall 的零功给因果分离 tests 的 $\sigma_i=0$；由 bracket continuity 延到闭包。

另定义完整时间带的代数 $\mathcal A_i^{\mathrm{cl}}[b;J]$，其生成元允许所有 $f\in C_c^\infty(J;H_i)$，$J\subset I^\circ$ 非空。§2 的 cutoff construction 在 $J$ 内给全部 linear labels，故 $\mathcal A_i^{\mathrm{cl}}[b;J]=\mathcal A_i^{\mathrm{cl}}[b]$。这里允许空间 tests 触及边界；不以严格内部 compact tests 默认为包含完整边界 Cauchy data。

## 5. History Transport 与 Action Response

在全实时间的 compact controls 上同时定义 $R/A$；零过去 smooth controls 只用 $R$，零未来只用 $A$。所有估计在有限 slab 上解释。非紧支撑的一侧 history 可由 finite-time cutoff 和因果唯一性一致定义，不使用 rough-history completion。

对于 $d=(k,h)$，令

$$\begin{align}
r_i^\epsilon[d]&=G_{i,D}^\epsilon k+H_i^\epsilon h, & H_i^\epsilon h&=\ell_i^{\mathrm{lift}}h-G_{i,D}^\epsilon L_i(\ell_i^{\mathrm{lift}}h).
\end{align}$$

其源为 $k$，人工 trace 为 $h$，物理 trace 为零，且有指定 causal support。lift 的改变由 homogeneous-boundary Green inverse 抵消。$\phi\mapsto\phi+r$ 诱导 continuous Poisson isomorphism

$$\begin{align}
T_r\Phi_{i,b}(f)=\Phi_{i,b+d}(f)-\langle f,r\rangle\mathbf1.
\end{align}$$

选择 $s_{b+d}=s_b+r$ 时它在两份 $\widehat S_{1/2}(V_{i,D})$ 中是 identity；其他 origins 由 §4.2 的连续 translations 联系。这证明完成后的 map 良定义。线性、causal uniqueness 给 $T_{r_2}T_{r_1}=T_{r_1+r_2}$；同一强迫方程和初始数据唯一性给它与 driven evolution 的 covariance。

对 compact smooth boundary test $\eta$，定义

$$\begin{align}
R_{i,\eta;b}(\phi)=\int_I\Pi_i(\phi)\eta\,dt.
\end{align}$$

它不是额外 interface oscillator。置 $k_\eta=H_i^R\eta-H_i^A\eta$，则其 boundary 值抵消，$k_\eta\in\mathcal S_{K_{i,D}}^\infty$。Green balance 给 $R_{i,\eta;0}(\psi)=\Omega_i(k_\eta,\psi)$。用 §2 的 $f_\eta=f_{k_\eta}$，$E_{i,D}f_\eta=-k_\eta$，因此

$$\begin{align}
R_{i,\eta;b}=[(c_\eta[b],f_\eta)],\qquad c_\eta[b]=\langle\Pi_i(s_i),\eta\rangle-\langle f_\eta,s_i\rangle.
\end{align}$$

所以 smeared response 已属于所定义的 affine algebra；变化 $s_i$ 或 cutoff 不改变它。

在 field/response sections 上定义 $\nabla_d^\epsilon A(b)=\partial_\lambda|_0T_{\lambda r_i^\epsilon[d]}^{-1}A(b+\lambda d)$，得到

$$\begin{align}
\nabla_{(k,h)}^\epsilon\Phi_i(f)&=\langle f,G_{i,D}^\epsilon k+H_i^\epsilon h\rangle\mathbf1,\\
\nabla_{(k,h)}^\epsilon R_{i,\eta} &=\langle\rho_i^\epsilon k-D_i^\epsilon h,\eta\rangle\mathbf1,\\
\rho_i^\epsilon&=-\partial_{n_i}G_{i,D}^\epsilon, &D_i^\epsilon&=+\partial_{n_i}H_i^\epsilon.
\end{align}$$

这些连续测试配对唯一确定四个 response blocks。在当前 smooth-time $H_i$ 控制域，§4.1 的 $H^2$ 估计使 normal trace 连续；不用假设 $L^2$ momentum 有 boundary trace。Green identity 给 $G^{R*}=G^A$、$H^{A*}=\rho^R$、$D^{R*}=D^A$，其中 $*$ 表示测试对偶转置。endpoint CPS 项在 $R/A$ 配对中因相反时间支撑消失；两份 retarded controls 则通常保留未来 endpoint 项，不能把 $D^R$ 认成无端点修正的 action Hessian。

**完整区域对象** 是这些 $\mathcal A_i^{\mathrm{cl}}[b](O)$ 连同原始 $\mathscr F_i,\mathscr J_i$、配对、field maps、admissible $\mathfrak D_i$、causal transports、smeared responses 和 CPS/evolution。其四块矩阵是等价的响应编码；bare algebra multiplication 不单独确定这些矩阵。本文只在上述 generators 及其允许的可微 sections 上使用 $\nabla$，不宣称任意无限维 history bundle 的光滑性定理。

## 6. 从区域对象定义 Sewing

### 6.1 Causal Relation Composition

先令 $q_2=Jq_1$，再在两个区域作用量之和中释放共同变分。初末面的 test variations 固定时得到

$$\begin{align}
\delta(S_1+S_2)|_\Gamma =\langle\Pi_1+J^*\Pi_2,\delta q_1\rangle,\qquad q_2=Jq_1,\quad\Pi_1+J^*\Pi_2=0.
\end{align}$$

此例 $J=1$。$R/A$ causal relation 从 §5 的响应定义为

$$\begin{align}
\phi_i=G_{i,D}^\epsilon j_i+H_i^\epsilon q_i,\qquad \pi_i=\rho_i^\epsilon j_i-D_i^\epsilon q_i.
\end{align}$$

Sewing 是同时满足这两份 relation 与两条 transmission conditions，并消去内部 $q_i,\pi_i$。先定义 relation；只有证明它在声明域上为唯一 causal graph 后，才记所得 bulk map 为 $G_{\mathrm{sew}}^\epsilon$。于是

$$\begin{align}
G_{\mathrm{sew}}^\epsilon =G_D^\epsilon+\binom{H_1^\epsilon}{H_2^\epsilon J} (D_1^\epsilon+J^*D_2^\epsilon J)^{-1}
\begin{pmatrix}\rho_1^\epsilon&J^*\rho_2^\epsilon\end{pmatrix}.
\end{align}$$

逆只在唯一可解的 causal domain 上使用。它不表示实频轴上可无条件除以 DtN function；齐次初值和 Dirichlet pole sectors 从未删除。

### 6.2 不使用 Global Operator 的存在性证明

取 $H^{\mathrm{dup}}=H_1\oplus H_2$，$V_i=\{u_i\in H^1(0,\ell_i):u_i(0)=0\}$，定义

$$\begin{align}
V^{\mathrm{sew}}&=\{u\in V_1\oplus V_2:u_1(\ell_1)=u_2(\ell_2)\},\\
\mathfrak a^{\mathrm{sew}}(u,w)&=\sum_i\int_0^{\ell_i}(u_i'w_i'+m^2u_iw_i)dy_i.
\end{align}$$

Trace continuity 使 $V^{\mathrm{sew}}$ 闭合；内支撑 smooth functions 的直和给 $H^{\mathrm{dup}}$ 中的稠密性；$m>0$ 给 coercivity。该正闭二次型定义 $K_{\mathrm{sew}}$，没有输入 $K_M$。逐段 integration by parts 给

$$\begin{align}
D(K_{\mathrm{sew}})=\{u_i\in H^2(0,\ell_i):
u_i(0)=0, u_1(\ell_1)=u_2(\ell_2), u_1'(\ell_1)+u_2'(\ell_2)=0\}.
\end{align}$$

弱方程的 interior tests 先给 $u_i''\in L^2$；一维 regularity 给 $H^2$；共同 endpoint test 给最后一条条件。反向直接消去 boundary term。$V^{\mathrm{sew}}\hookrightarrow H^{\mathrm{dup}}$ compact。把 form domain 夹在所有 artificial endpoints 为 Dirichlet 与 natural Neumann 的两个 direct-sum domains 之间，min-max 与单区间谱给 $\lambda_n(K_{\mathrm{sew}})\asymp n^2$。因此满足 §2 的 trace-class-power 条件，完全在区域数据内证明。

正自伴 wave equation 给每个 smooth-time $H^{\mathrm{dup}}$ source 唯一零过去/零未来解。其逐段限制满足 §6.1 的区域 relations 和 transmission；反向满足这些条件的场也满足同一个 form wave equation，故相同。这证明 causal relation 是图，且其 $G_{\mathrm{sew}}^{R/A}$ 正是 $\partial_t^2+K_{\mathrm{sew}}$ 的 Green maps。零源时所有 $\mathcal X_{K_{\mathrm{sew}}}^\infty$ 初值仍保留。

尚有外部 prescribed ports 的 cluster 同样取剩余端点齐次 Dirichlet fluctuation form，再对外部 histories 作 lift。若需实现中间接口 forcing $r(t)$，先由 $\mathfrak a(w(t),v)=r(t)\gamma v$ 作 elliptic lift；$w\in V$ smooth in time。令 $u=w+z$、$z$ 解同一 form wave problem 且 forcing 为 $-\ddot w$，便给指定 flux jump 的 causal solution。这给中间 DtN inverse 的所需 smooth causal domain；不声称任意 boundary distributions 上的 everywhere inverse。

### 6.3 Sewn Algebra 的定义

保留尚未按旧 $E_{i,D}$ 取商的 $\mathscr F^{\mathrm{dup}}=C_c^\infty(I^\circ;H^{\mathrm{dup}})$，定义

$$\begin{align}
E_{\mathrm{sew}}&=G_{\mathrm{sew}}^A-G_{\mathrm{sew}}^R, & V_{\mathrm{sew}}&=\mathscr F^{\mathrm{dup}}/\ker E_{\mathrm{sew}},\\
\sigma_{\mathrm{sew}}([f],[g])&=\langle f,E_{\mathrm{sew}}g\rangle, & \boxed{\mathcal A_{\mathrm{sew}}^{\mathrm{cl}}=\widehat S_{1/2}((V_{\mathrm{sew}})_\mathbb C).}
\end{align}$$

赋予 §2 的 quotient/smooth-vector topology 和 §3 的 Poisson completion。§6.2 使这些定义全部成立。有剩余 history/source 时，按 §4 取对应 affine quotient，并保留其全部外部 response 与 transports，作为再次 sewing 的输入。

这是新 on-shell relation 与新 bracket 的构造。没有对旧 $\mathcal A_1[b_1]\widehat\otimes\mathcal A_2[b_2]$ 声称存在保持同名物理场的 Poisson quotient map。

### 6.4 完成张量代数上的显式 Presentation

还可以把 sewing 写成真正的 algebra presentation。定义原始交换代数

$$\begin{align}
\mathscr B_i=\widehat S_{1/2}((\mathscr F_i)_\mathbb C),\qquad \mathscr B^{\mathrm{dup}}=\mathscr B_1\widehat\otimes_\pi\mathscr B_2 \cong\widehat S_{1/2}((\mathscr F_1\oplus\mathscr F_2)_\mathbb C).
\end{align}$$

这里 $\mathscr F_i$ 使用原有 smooth-time $L^2$ 测试拓扑；它不必 nuclear。§3.3 的两个连续 inverse 的证明并不依赖 nuclearity，故仍成立。在 $\mathscr B^{\mathrm{dup}}$ 的线性 raw generators 上赋予 **新的** pairing $\langle f,E_{\mathrm{sew}}g\rangle$。它通过连续 quotient map $Q_{\mathrm{sew}}:\mathscr F^{\mathrm{dup}}\to V_{\mathrm{sew}}$ 因子化，故连续；§3.1 给完成后的 Poisson bracket。

令 $\mathscr I_{\mathrm{sew}}$ 为线性 labels $\ker E_{\mathrm{sew}}$ 生成的闭理想，则

$$\begin{align}
\boxed{ \mathcal A_{\mathrm{sew}}^{\mathrm{cl}}
\cong \frac{(\mathscr B_1\widehat\otimes_\pi\mathscr B_2, \{\ ,\ \}_{E_{\mathrm{sew}}})}{\mathscr I_{\mathrm{sew}}}.}
\end{align}$$

**证明。** §2 的 cutoff construction 给 $Q_{\mathrm{sew}}$ 一个连续 right inverse $s$，故 $\widehat S_{1/2}(Q_{\mathrm{sew}})$ 也有连续 right inverse $\widehat S_{1/2}(s)$。特别地它是 onto 的 topological quotient，不假设 completion 自动与 arbitrary quotient 交换。在 polynomial core，kernel 是 $\ker Q_{\mathrm{sew}}$ 生成的理想。对完成中的 kernel 元素 $a$，取 polynomial approximating net $a_\lambda$，再取
$a_\lambda-\widehat S(s)\widehat S(Q_{\mathrm{sew}})a_\lambda$；它们属于该 polynomial ideal 并收敛到 $a$。这里使用 polynomial net $a_\lambda\to a$，不要求一般 raw completion 另有 sequential density。因此完成后的 kernel 恰为闭理想。其生成元在新 pairing 中为 radical，所以理想为 Poisson ideal。$\square$

由 §3.2 的 faithful evaluation，$\mathscr I_{\mathrm{sew}}$ 也恰好是所有在 sewn smooth solutions 上消失的 raw completed observables。这给出了 completed tensor structure、sewing ideal 与新括号之间的具体关系。它保留两份区域的原始交换 observable presentations，但不能先除掉旧 $\ker E_{i,D}$。带外部 histories 的情形同样使用 affine relation 与常数的指定取值。

## 7. 独立 Global Algebra 与同构证明

令 $M=I\times(-\ell_1,\ell_2)$，physical endpoints 为 Dirichlet。独立定义

$$\begin{align}
H_M&=L^2(-\ell_1,\ell_2), & K_M&=-\partial_x^2+m^2,\quad D(K_M)=H^2\cap H_0^1,\\
\mathscr F_M&=C_c^\infty(I^\circ;H_M), & V_M&=\mathscr F_M/\ker(G_M^A-G_M^R),\\
\boxed{\mathcal A_M^{\mathrm{cl}}=\widehat S_{1/2}((V_M)_\mathbb C),} &&\{\Phi_M(f),\Phi_M(g)\}=\langle f,E_Mg\rangle.
\end{align}$$

这里 $y_1=x+\ell_1$，$y_2=\ell_2-x$。$K_M$ 与 $\mathcal A_M^{\mathrm{cl}}$ 的定义均未引用分区。

**定理（static scalar completed observable assembly）。** 上述区域 sewing 与独立 global 定义满足 canonical topological Poisson $*$-isomorphism

$$\begin{align}
\boxed{\operatorname{Ass}_*:\mathcal A_{\mathrm{sew}}^{\mathrm{cl}}\xrightarrow{\cong}\mathcal A_M^{\mathrm{cl}},\qquad \Phi_{\mathrm{sew}}([f])\longmapsto\Phi_M([\operatorname{Ass}f]).}
\end{align}$$

它保持指定 local nets、smooth local cores 的对应像，以及 global-time evolution。

**证明。**

1. Piecewise assembly $\operatorname{Ass}:H^{\mathrm{dup}}\to H_M$ 为实 unitary，逆是区域 restriction。它在 matched form domains 上保持二次型。一维 $H^1$ patching 中相等 traces 消去 field jump；$H^2$ patching 中 oriented derivative sum 消去一阶导数 jump。因此 $\operatorname{Ass}D(K_{\mathrm{sew}})=D(K_M)$，且 $\operatorname{Ass}K_{\mathrm{sew}}=K_M\operatorname{Ass}$。这是两个独立算子的比较结论。
2. Functional calculus 给 $\operatorname{Ass}E_{\mathrm{sew}}=E_M\operatorname{Ass}$。原始 source restriction/assembly 是 $C_c^\infty(I^\circ;H)$ 的连续双射，故准确识别两个 kernels，下降到 $U:V_{\mathrm{sew}}\to V_M$ 的连续双射。反向 restriction 同样连续。也可在 smooth-vector seminorms 中直接使用各 $K$ powers 的 intertwining。
3. Bulk pairing preserved 给 $\sigma_M(Uv,Uw)=\sigma_{\mathrm{sew}}(v,w)$。于是 $S(U)$ 在 polynomial core 是 Poisson isomorphism。对每个目标 seminorm $p$，源端 $p\circ U$ 连续，且 $\|S(U)a\|_{p,1/2}\le\|a\|_{p\circ U,1/2}$。$U^{-1}$ 有同样估计，所以两份完成上的连续 maps 互逆。injectivity 与 surjectivity 都来自实际 inverse，不来自 density 或预先指定的 global image。
4. $\operatorname{Ass}$ 与 restriction 保持同一物理支撑；因此将 supported-generator sets 双向对应，连续 inverse 再将其 algebra closures 双向对应。$K$ intertwining 同时给 wave evolution 与 induced observable evolution 的 intertwining。$\square$

本文的 smooth local core 是 global smooth tests 及其 **分段 restrictions 的像**；不把任意逐段 smooth test 宣称为 global smooth test。大的 $C_c^\infty(I;L^2)$ source 类别已保证所有 raw cutting maps 闭合，故主定理无需这种错误识别。

## 8. Cutting、再次粘合与结合性

### 8.1 Cutting 的定义及 Inverse

先在作用量层切割，保留每侧独立 prescribed histories 和 action responses。原始 source restriction 给连续双射

$$\begin{align}
\operatorname{cut}_{\mathscr F}:\mathscr F_M\longrightarrow
\mathscr F_1\oplus\mathscr F_2,\qquad f\longmapsto(f|_{M_1},f|_{M_2}).
\end{align}$$

在 raw commutative completed algebras 上，取 $\widehat S_{1/2}(\operatorname{cut}_{\mathscr F})$ 并使用 §3.3。对 $n$ 次核，其含义是给每个变量独立分区：

$$\begin{align}
f_n\longmapsto
\{f_n|_{M_{i_1}\times\cdots\times M_{i_n}}\}_{i_1,\ldots,i_n}.
\end{align}$$

对非-factorizing 完成张量，此式由 simple tensors 的连续延拓定义。它包含所有 mixed-region 项；例如 $\Phi(f)\Phi(g)$ 切割后有 $11,12,21,22$ 四项。没有把一般 observable 假设为两个区域函数之和。

因为 $\operatorname{cut}_{\mathscr F}\ker E_M=\ker E_{\mathrm{sew}}$，cutting 降为

$$\begin{align}
\operatorname{Cut}_*:\mathcal A_M^{\mathrm{cl}}\longrightarrow\mathcal A_{\mathrm{sew}}^{\mathrm{cl}},\qquad \operatorname{Cut}_*\Phi_M([f])=\Phi_{\mathrm{sew}}([\operatorname{cut}_{\mathscr F}f]).
\end{align}$$

§7 的 inverse proof 给

$$\begin{align}
\operatorname{Ass}_*\operatorname{Cut}_*=\mathrm{id},\qquad \operatorname{Cut}_*\operatorname{Ass}_*=\mathrm{id}.
\end{align}$$

这是 **sewn presentation** 中的 cutting inverse。on-shell observable 的任意 raw representative 切割后只需在新理想模掉的意义下相同；不声称有 canonical raw representative。也不声称 $\operatorname{Cut}_*$ 的目标是两份已经固定 $q_i$ 的旧 Poisson algebras 的 tensor product。

在 solutions 上，逆关系是全局解与满足 continuity/flux 的区域集合之间的双射。任意独立的两份区域解不一定满足 transmission，不能要求 sew 再 cut 恢复整个未经匹配的 product。这是 cutting 条件的实际范围。

### 8.2 逐次 Sewing 保留什么

中间区域有两个 ports 时必须同时保留它们。对统一 $\epsilon=R$ 或 $A$ 的多-port response，划分要消去的共同 history $q_a$ 与剩余外部 history $q_b$：

$$\begin{align}
\phi&=Gj+H_aq_a+H_bq_b,\\
0&=\rho_aj-D_{aa}q_a-D_{ab}q_b,\\
\pi_b&=\rho_bj-D_{ba}q_a-D_{bb}q_b.
\end{align}$$

在同一 causal graph domain 上，输出的四块为

$$\begin{align}
G'&=G+H_aD_{aa}^{-1}\rho_a, & H'&=H_b-H_aD_{aa}^{-1}D_{ab},\\
\rho'&=\rho_b-D_{ba}D_{aa}^{-1}\rho_a, & D'&=D_{bb}-D_{ba}D_{aa}^{-1}D_{ab}.
\end{align}$$

按这个顺序保持 operator multiplication；不混合 retarded 和 advanced prescriptions。§6.2 给每个 finite interval cluster 的 existence/uniqueness 与 smooth-time controls 的中间闭合。新的 affine fibers、response 和 transports 用 §§4–5 从这些输出重建；不会把尚受驱动的外部端点改为 Neumann，也不会只留下 $G'$。

对 finite interval chain，任何相邻 clusters 的完整粘合顺序都等价于一次要求所有内部 transmission。存在性量词对有限个内部 histories 的消元顺序可交换；每个中间 relation 的 causal graph 与所需域已由 §6.2 给出。因此它们在原始 source direct sum 的 flattening 下有相同的 $G^{R/A},E,\ker E,\sigma$。$\widehat S_{1/2}$ 的连续函子性给完成代数的 canonical associator。该证明不通过已知 global algebra 定义 associator。

这里证明的是有限 **interval chain** 的顺序无关和切分细化不变性，不是任意 timelike geometry/图、rough-history category 或一般 monoidal formalism 的定理。

## 9. Static Free Scalar 的显式检验与 Bare-Algebra No-Go

令 $\ell_1=\ell_2=\ell$。在 Laplace domain 取 $s>0$、$\kappa=\sqrt{s^2+m^2}>0$；公式也在 $\operatorname{Re}s>0$ 的一致分支解析延拓。区域 resolvent、history lift 与正 outward DtN 为

$$\begin{align}
G_D(s;y,z)&=\frac{\sinh(\kappa y_<)\sinh(\kappa(\ell-y_>))} {\kappa\sinh(\kappa\ell)},\\
H(s;y)&=\frac{\sinh(\kappa y)}{\sinh(\kappa\ell)}, & D(s)&=\kappa\coth(\kappa\ell).
\end{align}$$

$\rho(s)$ 是 $H(s;z)$ 对 source 的积分，因为 $-\partial_yG_D(s;y,z)|_{y=\ell}=H(s;z)$。于是

$$\begin{align}
G_{{\mathrm{sew}},12}(s;y,z) &=\frac{H(s;y)H(s;z)}{2D(s)} =\frac{\sinh(\kappa y)\sinh(\kappa z)}{\kappa\sinh(2\kappa\ell)},\\
G_{{\mathrm{sew}},11}(s;y,z) &=G_D(s;y,z)+\frac{H(s;y)H(s;z)}{2D(s)}\\
&=\frac{\sinh(\kappa y)\sinh(\kappa(2\ell-z))}{\kappa\sinh(2\kappa\ell)},\qquad 0<y\le z<\ell.
\end{align}$$

这同时恢复独立 connected resolvent 的 cross block 和 same-side block。局部 energy identity 给 finite propagation：经过人工接口时 $\phi$ 与 oriented derivative matching 使两侧能流抵消，physical Dirichlet wall 的功为零。因而上述 kernel 的非零 correction 对应真正的传播；retarded 与 advanced 的跨侧贡献分别位于正、负传播时间，不能当作同一 equal-time contact term 抵消。存在内部 timelike-separated smooth tests 使 $\langle f_1,E_{{\mathrm{sew}},12}f_2\rangle\ne0$。

**No-go 1：旧 Poisson tensor product。** 在 $\mathcal A_1[b_1]\widehat\otimes\mathcal A_2[b_2]$ 中，所有跨侧 brackets 为零。任何保持 designated regional fields 为 sewn bulk fields 的 Poisson homomorphism 都保持这个零值，与上式矛盾。同侧 correction 还排除了保持全部同名 fields、同时保持旧 Dirichlet bracket 的任何 ordinary fusion presentation。因果传播不触及人工墙的小 diamond 是有限的例外，不足以定义全部 regional history algebra 的这种嵌入。

**No-go 2：只匹配 central histories。** 在逐纤维 section bracket 中，标量 history functions 是 Poisson central。Poisson quotient 保持中心元素的中心性。因此仅以这种 quotient 认同两份 $q$，不能使共同 history 获得 sewn field 的非零 brackets。完成 tensor topology 不改变这个代数事实。

**谱的两部分均保留。** 对不同长度，用完整 amplitudes $(B_1,B_2,q)$，有

$$\begin{align}
\det\begin{pmatrix}
\sin(k\ell_1)&0&-1\\
0&\sin(k\ell_2)&-1\\
k\cos(k\ell_1)&k\cos(k\ell_2)&0
\end{pmatrix}=k\sin(k(\ell_1+\ell_2)).
\end{align}$$

$k>0$ 时给出全部 $k_r=r\pi/(\ell_1+\ell_2)$。$k=0$ 单独用 $B_iy_i$ 解：连续性给 $B_i=q/\ell_i$，flux matching 给 $q(1/\ell_1+1/\ell_2)=0$，故只有零解。等长情形，$\cos(k\ell)=0$ 的共同非零-history sector 与 $\sin(k\ell)=0$ 的 relative $q=0$ sector 都在完整系统中。本文的 onto proof 是 §2 的 source-cutoff argument；谱检查只检验没有遗漏 pole sector，不替代代数同构证明。

## 10. 一般非规范系统：条件定理与明确障碍

### 10.1 一般条件定理

本构造对满足下列条件的非规范 **线性** 边界控制系统成立：

- 原始 observable/control spaces、测试配对、admissible initial/history domains 与 action response 独立给定，区域 $R/A$ 问题及中间 composite 问题唯一可解。
- $E$ 连续，source quotient 有声明的 Hausdorff topology；用于 completed quotient presentation 时有连续线性 splitting，或另有证明 completion 与所需商相容的定理。
- 指定的 labels 分离所讨论的解，且完成张量有 faithful functional evaluation；例如 §3.2 的有限 spectral projections 论证。一般空间不能仅凭线性 labels 分离性就省略这项完成后的检查。
- 原始 source cutting/assembly 连续且闭合于同一测试类别；区域 transmission 的解具有正确 patching regularity，并与独立 uncut 方程的解双向对应。
- 由作用量的线性化 Green identity 和因果唯一性得到两边 $E$ 的 intertwining；locality 来自该 IBVP 的 finite propagation。

在这些输入下，§6 定义新 pairing 和 closed ideal，§7 的生成元、inverse 及 seminorm proof 给 completed Poisson algebra isomorphism。核性可由 smooth-vector compactness 输入保证，但 functorial isomorphism 本身只需连续 pairing 和实际连续 inverse。以上条件不包含“假设代数已经同构”，也不把 global restriction image 作为区域定义。static scalar interval 已逐项验证。

对一般非线性非规范系统，应从**预先声明的** admissible off-shell functional algebra $\mathcal F^{\mathrm{adm}}$ 开始，以在实际区域解上消失的泛函取商。其 bracket 必须使用背景解 $\phi$ 处线性化算子的 Peierls kernel $E_\phi$。若此函数类对乘法、$\langle F^{(1)},E_\phi G^{(1)}\rangle$、cutting 以及 history-dependent transport 闭合，且这些操作连续，以下条件性证明成立：

1. 直接从区域 nonlinear equations 与 action transmission 定义 matched solution locus；不赋予它旧逐纤维 product bracket。
2. 在每个 matched solution 处，线性化这些区域方程和 transmission，以零过去/零未来解定义 $E_{\mathrm{sew},\phi}$。假设所需线性化 IBVP 唯一可解并对背景具有该函数类要求的正则依赖。
3. 用原始 cutting presentation 上的新 Peierls bracket 和 vanishing ideal 定义 $\mathcal A_{\mathrm{sew}}$。切割原始泛函的映射若连续、可逆并保持所选函数类，solution patching 双射使两边 vanishing ideals 对应。
4. 线性化方程的相同 transmission 与唯一性给 $E_{\mathrm{sew},\phi}$ 与独立 $E_{M,\operatorname{Ass}\phi}$ 的 intertwining；chain rule 于是证明商上的 Poisson 性。两份实际连续 inverse 给完成后的同构。

这里函数类的 Poisson/Jacobi 闭合、背景依赖的正则性、raw cutting 的连续 inverse 与 nonlinear IBVP/linearized transmission 都是独立 gates。没有证明这些，就没有一般 nonlinear completed sewing theorem。不能把本节改写成“非规范就自动成立”。

### 10.2 本文 Entire Regular 类别不能无条件推广

给出一个无 gauge 的有限维反例。取 $\Omega=dp\wedge dq$、$\{q,p\}=1$ 和 Hamiltonian $H=q^2p$。其局部流为

$$\begin{align}
q(t)=\frac{q_0}{1-tq_0},\qquad p(t)=p_0(1-tq_0)^2,\qquad |tq_0|<1.
\end{align}$$

在这个明确的存在域内，流是 canonical，但

$$\begin{align}
\{q(t),p(0)\}=\frac1{(1-tq_0)^2}.
\end{align}$$

当 $t\ne0$ 时，$q(t)$ 与这个 bracket 作为 $q_0$ 的函数有有限复极点；它们不是 §3 的 entire completion 元素。即使只要求在零附近的实开集上相等，entire function 的唯一延拓也不允许该极点。因此从初始线性 observables 生成的这个固定 entire algebra 不受该 nonlinear dynamics 保持。若把整段历史的 $q(t)$ 强行作为 observables 加入，又会立即需要更大的 bracket-closed 函数类。

这个反例准确否定“把 §3 的函数类别直接用于所有非规范系统”。它不否定选择局部解析函数、其他受控光滑函数类或其他 completed algebra 后的非线性 sewing。field theory 中，单写通常的 microcausal 条件也不足以完成无限维 smoothness/闭合证明；equicausal framework 的相关结果见 §13，不能不检查 timelike boundary 和背景依赖就直接移用。

## 11. Claim Ledger：小代数

| 项目 | 结论与证据 | Tier |
|---|---|---|
| Regional definition intrinsic | 区域 action/IBVP、affine vanishing quotient、origin-independent completion，§§1、4 | proved，当前 scalar 类别 |
| Global definition intrinsic | 独立 $K_M$、同类 source quotient 与 $\widehat S_{1/2}$，§7 | proved |
| Topology and Poisson closure | 阶乘 seminorms、projective contraction bounds、actual functional realization，§3 | proved，声明的 regular completion |
| Completed independent tensor | 两个互逆 maps 的连续估计，§3.3 | proved；独立 bracket |
| Locality | supported-generator nets、finite propagation、bracket continuity，§§4.3、9 | proved；不主张所有元素的最小支撑或 sharp composites |
| History dependence | 全部相容齐次初值、continuous affine transport、action response 及 causal domains，§§4–5 | proved，smooth histories |
| Sewing algebra presentation | response-derived $E_{\mathrm{sew}}$、raw completed tensor、闭 Poisson ideal、连续 splitting，§6 | proved |
| Static scalar assembly | 独立 closed form、operator/Green comparison、topological inverse，§7 | proved |
| Cutting | 每个变量分块，商上的 well-defined inverse，§8.1 | proved，目标为 sewn presentation |
| Finite interval chain | 中间 forms/ports/response 闭合、relation elimination、completed associator，§8.2 | proved，声明的 smooth-time interval 类别 |
| Bare fixed-history fusion | 跨侧零 bracket 与物理非零 bracket 冲突；同侧 bracket 也改变，§9 | false |
| All Hamiltonian functionals | $H_{\mathrm{en}}$ 不属于 §3 的小代数；§16.2 将其纳入扩大类别 | 两类均不定义为全部 $\mathcal A_{\mathrm{Ham}}$ |
| General linear non-gauge theorem | 指定的解析、拓扑、cutting 条件，§10.1 | conditional，interval 已验证 |
| General nonlinear non-gauge theorem | 背景依赖 Peierls closure、IBVP 和 cutting gates，§10.1 | conditional |
| Universal use of this entire class | $H=q^2p$ 的 rational evolution/bracket，§10.2 | false；不否定其他函数类别 |

前述小代数给出一个明确且对线性响应 sewing 闭合的正定理；扩大后的定义见 §§14–20，统一 family 类、重新审计的证明与最终边界见 §§21–26。两者都不把完成张量代数、全部 Hamiltonian functions、局域复合场和某个 Hilbert-space representation 认同。

## 12. Verification：小代数

**Verified:** 在本文声明的 static scalar/smooth-history/$C_c^\infty(I;L^2)$ label 类别内，正文证明 completed Poisson closure、tensor identity、affine topology independence、causal sewing、closed-ideal presentation、global topological inverse、local net 与 dynamics covariance，以及有限 interval chain 的组合。证明所用标准分析事实为一维 trace/patching、正闭二次型表示、self-adjoint functional calculus、compact interval spectral estimates 与 projective tensor universal property；其应用域已在各节列明。

**Checked symbolically（2026-09-05）:** 以下 Mathematica 程序的 17 个命名 residual groups 全为零，包括两个 $3\times3$ Schur block residuals。另检查 $1\le n,m\le40$ 的权重不等式共 1600 对，全部为 True；一般次数的证明是 §3.1 的组合不等式，不是这个有限检查。该程序没有机器证明 PDE well-posedness、kernel onto、nuclearity、completion 与商的相容性或一般 nonlinear theorem。

**Assumptions:** $m>0$、有限正长度的 interval cells、无 gauge、physical outer Dirichlet、无真实 interface field/action；smooth-time $L^2$ bulk sources、smooth histories 及实际相容初始域；$R/A$ 使用一致 causal prescription。Laplace inverse 只用于 $\operatorname{Re}s>0$，实频 pole sectors 由完整 amplitudes 保留。

**Not verified / not claimed:** 任意 rough-history enriched closure、一般高维/非紧/非静态 IBVP、任意非多项式或未涂抹的 local composite 类别、一般 nonlinear sewing，以及任何 continuum Fock factorization。平滑涂抹的 polynomial local composites 和能量由 §§14–20 的新系数拓扑处理，不由本节的 finite checks 推出。§10.2 给出的失败针对本文 entire 函数类的无条件 nonlinear 推广。

可在 fresh Wolfram kernel 中重跑：

```wolfram
ClearAll["Global`*"];
pb[f_,g_]:=D[f,q]D[g,p]-D[f,p]D[g,q];
ass=k>0&&ell>0&&0<y<z<ell;
gd[y_,z_,len_]:=Sinh[k y]Sinh[k(len-z)]/(k Sinh[k len]);
hh[y_]:=Sinh[k y]/Sinh[k ell];
corr=hh[y]hh[z]/(2 k Coth[k ell]);
mat={{aa,bb},{bb,cc}};
hmat={{h1,0},{ha,hb},{0,h3}};
rmat={{r1,ra,0},{0,rb,r3}};
gmat=DiagonalMatrix[{g1,g2,g3}];
direct=gmat+hmat.Inverse[mat].rmat;
first=gmat+Outer[Times,hmat[[All,1]],rmat[[1]]]/aa+
 Outer[Times,hmat[[All,2]]-hmat[[All,1]]bb/aa,
 rmat[[2]]-bb rmat[[1]]/aa]/(cc-bb^2/aa);
last=gmat+Outer[Times,hmat[[All,2]],rmat[[2]]]/cc+
 Outer[Times,hmat[[All,1]]-hmat[[All,2]]bb/cc,
 rmat[[1]]-bb rmat[[2]]/cc]/(aa-bb^2/cc);
qt=q/(1-t q); pt=p(1-t q)^2;
lag=(phit^2-phiy^2-mm^2 phi^2)/2;
checks=<|
"actionMomentum"->D[lag,phit]-phit,
"actionOutwardResponse"->D[lag,phiy]+phiy,
"oscillatorPeierlsSign"->FullSimplify[(D[-Sin[om(t-s)]/om,s]/.s->t)-1],
"sourceCutoffIdentity"->Expand[D[chi[t]u[t],{t,2}]+kap chi[t]u[t]-
chi[t](D[u[t],{t,2}]+kap u[t])-chi''[t]u[t]-2chi'[t]u'[t]],
"liftODE"->FullSimplify[-D[hh[y],{y,2}]+k^2 hh[y]],
"outwardDtN"->FullSimplify[(D[hh[y],y]/.y->ell)-k Coth[k ell]],
"sourceResponse"->FullSimplify[-(D[gd[z,y,ell],y]/.y->ell)-hh[z]],
"sameSideGreen"->FullSimplify[gd[y,z,ell]+corr-gd[y,z,2ell],Assumptions->ass],
"crossSideGreen"->FullSimplify[corr-Sinh[k y]Sinh[k z]/(k Sinh[2k ell])],
"completeAmplitudeDeterminant"->FullSimplify[
Det[{{Sin[k l1],0,-1},{0,Sin[k l2],-1},{k Cos[k l1],k Cos[k l2],0}}]
-k Sin[k(l1+l2)]],
"allNineSchurFirst"->Simplify[first-direct],
"allNineSchurReverse"->Simplify[last-direct],
"affinePoissonTranslation"->Expand[pb[(q+a)^2,(p+b)^2]-4(q+a)(p+b)],
"nonlinearHamiltonEquationQ"->Simplify[D[qt,t]-qt^2],
"nonlinearHamiltonEquationP"->Simplify[D[pt,t]+2qt pt],
"nonlinearBracket"->Simplify[pb[qt,p]-1/(1-t q)^2],
"nonlinearCanonicalFlow"->Simplify[pb[qt,pt]-1]
|>;
Print[checks];
Print["allResidualsZero=",And@@(SameQ[#,0]&/@Flatten[Values[checks]])];
Print["finiteWeightInequalityCheck[n,m=1..40]=",And@@Flatten[
Table[n^2 m^2 Factorial[n+m-2]<=4^(n+m)Factorial[n]Factorial[m],
{n,1,40},{m,1,40}]]];
```

## 13. 来源与用途

- 本地 action、CPS/Peierls 符号与 scalar transmission：formalism.md、classical_gluing_formalism.md，以及上级 perturbation/formalism.md。
- 本地 affine labels、causal transport、response 与 relation elimination：history-indexed observable algebra gluing.md 的 §§2、4–7。本文重新选择统一的 smooth-time $L^2$ 原始测试类别，明确加入 classical factorial completion、其 tensor/quotient 证明与 cutting inverse；不借用其中的 quantum/Fock 主张作经典证明。
- [Benini–Dappiaggi–Schenkel, Quantum field theory on affine bundles](https://arxiv.org/abs/1210.3457)：affine observable construction 的相关先例；不提供本文 timelike boundary theorem。
- [Waldmann, A Nuclear Weyl Algebra](https://arxiv.org/abs/1209.5551)；[Esposito–Stapor–Waldmann, Convergence of the Gutt Star Product](https://arxiv.org/abs/1509.09160)：locally convex symmetric-algebra factorial topologies、完成与连续操作的来源背景。本文只使用上述明确给出的 classical multiplication/Poisson estimates，不从这些文献推出 interface sewing。
- [Hawkins–Rejzner–Visser, A novel class of functionals for perturbative algebraic quantum field theory, v3](https://arxiv.org/html/2312.15203v3)：microcausal 函数类闭合问题与 equicausal 修正。其函数类结果不自动解决本文未处理的 nonlinear timelike-boundary gates。

## 14. 包含复合场和能量的扩大类别

§§3–13 的小代数保留为 regular core。本节起扩大其系数拓扑，解决 $H_{\mathrm{en}}$ 缺席的问题。模型仍是 static free scalar interval；任意有限阶 jets 的背景取 $j\in C^\infty(I\times\overline\Sigma)$、$q\in C^\infty(I)$，并保留相容初值。原始线性 observable labels 和辅助 response probes 仍允许 $C_c^\infty(I^\circ;L^2)$。这两个正则性要求不能混淆：仅有 §4 的 $C^\infty(I;H^2)$ particular solution 不足以评价任意高阶局域复合场。重建定理先取物理 $j=0$；若保留物理 sources，要求其拼接后仍属于整体允许的 smooth-background class。

这个 smooth-background 子类确实有需要的 particular solutions：从 §4 的 $C^\infty_tH^2_x$ 解出发，方程把二阶空间导数表达为时间导数、场和 $j$；一维 elliptic estimate 于是逐次将空间正则性从 $H^k$ 提高到 $H^{k+2}$。对全部时间导数重复同一步，得到 $C^\infty(I\times\overline\Sigma)$，并且每个输出 seminorm 只需要有限个 smooth-control seminorms。prescribed trace 保留为 $q$，不把这个非齐次 particular solution 误认作 $D(K_D^\infty)$ 元素。

**扩大后的结论。** 按有限 Sobolev derivative loss 分层完成的函数 Poisson 代数 $\mathfrak A(K)$ 包含小代数、光滑时间涂抹的有限阶 polynomial local composites 和整体总能量。乘法与括号有明确的层间连续估计。固定历史的这一定义须配合 §22 的 joint family 类才能支持全量词的 history release；§24 的连续右逆证明其 sewing quotient 覆盖独立 global $\mathfrak A(K_M)$ 的整个类别。整个 LF 空间的完备性另由 §25.1 证明；所有双线性操作联合连续的更强说法则被 §§25.2–25.3 否定。

### 14.1 用 Hamiltonian Contraction 定义系数

重新编号 §2 的同一个 smooth phase space。令

$$\begin{align}
W&=(1+K)^{1/2},& X_s&=D(W^{s+1})\oplus D(W^s),\\
\|z\|_s^2&=\|W^{s+1}u\|_H^2+\|W^sv\|_H^2,& X^\infty&=\bigcap_{s\ge0}X_s,\qquad s=0,1,\ldots.
\end{align}$$

$W\ge1$ 使 scale inclusions 的范数不超过一。这些 seminorms 与 §2 的 $p_r$ 生成同一个 Fréchet topology，且 $|\Omega(z,w)|\le\|z\|_0\|w\|_0$。以下先在复化空间写系数，实 observable 取相应实形式；$\Omega$ 和 observable coefficients 的配对作复双线性延拓，Hilbert norms 仅用于估计。后文能量的 norm-square 公式先在实 data 上书写，复化时同样使用双线性 quadratic form。

写实际函数

$$\begin{align}
F(z)&=B_0+\sum_{n\ge1}B_n(z,\ldots,z).
\end{align}$$

每个 $B_n$ 为对称 $n$-linear form，要求存在对称 $(n-1)$-linear map $T_n:(X^\infty)^{n-1}\to X^\infty$，满足

$$\begin{align}
B_n(h,z_2,\ldots,z_n) &=-\Omega\bigl(T_n(z_2,\ldots,z_n),h\bigr),\\
X_{B_n(z^n)}(z)&=nT_n(z^{n-1}),& \iota_{X_F}\Omega&=-dF.
\end{align}$$

$n=1$ 时 $T_1$ 是一个 smooth vector。该等式连同 $B_n$ 的全对称性是条件，不能任取 multilinear vector field 后把它称为 Hamiltonian。

固定整数 loss $r\ge0$。要求每个 $T_n$ 在每个 $s$ 上延拓为 bounded map $(X_{s+r})^{n-1}\to X_s$，并定义

$$\begin{align}
P_{s,r}(T_n) &=\max_{0\le j\le s}
\|T_n:(X_{j+r})^{n-1}\to X_j\|_{\mathrm{op}},\\
\|F\|_{s,R,r} &=|B_0|+\sum_{n\ge1}\sqrt{n!}\,R^nP_{s,r}(T_n), \qquad R=1,2,\ldots.
\end{align}$$

满足全部这些估计的系数空间记为 $\mathcal A_r(K)$。这里同一个 $r$ 同时控制所有输出阶数 $s$ 和所有次数 $n$；允许 $r$ 随整个 observable 改变。取 $\max_{j\le s}$ 是为了获得单调 seminorms，不能假定变动 domain 的单个 operator norm 随 $s$ 单调。

**完备性与实际函数。** 各 $s,n$ 的 bounded multilinear operator spaces 是 Banach 空间；不同 $s$ 的相容性及上述 Hamiltonian 对称性在其乘积中为闭条件。加上次数方向的加权 $\ell^1$ 条件，$\mathcal A_r$ 是 Fréchet 完备空间。对固定 $z$，

$$\begin{align}
|B_n(z^n)|\le P_{0,r}(T_n)\|z\|_r^{n-1}\|z\|_0.
\end{align}$$

因此级数及其任意阶导数在每个所需 Banach-scale ball 上收敛；$X_F(z)=\sum_{n\ge1}nT_n(z^{n-1})$ 是实际 $X^\infty$-valued entire map。Taylor derivatives 与 polarization 恢复所有 $B_n,T_n$，故 evaluation faithful。这里没有把 distributional coefficients 当作尚未定义的形式级数。

### 14.2 乘法和 Poisson 括号的封闭估计

令 $F\in\mathcal A_r$、$G\in\mathcal A_{r'}$。定义

$$\begin{align}
\{F,G\}&=dF(X_G)=-\Omega(X_F,X_G),\\
X_{FG}&=F X_G+G X_F,\\
X_{\{F,G\}}&=dX_F\,X_G-dX_G\,X_F.
\end{align}$$

最后一个符号来自 $\Omega=dp\wedge dq$ 和 $\iota_{X_F}\Omega=-dF$：通常的 vector-field commutator 满足 $[X_F,X_G]=-X_{\{F,G\}}$。

对次数分别为 $n,m$ 的齐次项，令 $N=n+m-2>0$。括号的 Hamiltonian coefficient 是

$$\begin{align}
T_N^{\{F_n,G_m\}} =\frac{nm}{N}\Bigl[ (n-1)\operatorname{Sym}(T_n^F\circ T_m^G) -(m-1)\operatorname{Sym}(T_m^G\circ T_n^F) \Bigr].
\end{align}$$

这里 $\circ$ 是把内层 vector 插进外层的一个 slot，$\operatorname{Sym}$ 是其余 $N-1$ 个输入的平均对称化；零 slot 的项按零处理。$n=m=1$ 单独给常数 $-\Omega(T_1^F,T_1^G)$。例如第一项先需要 $X_{s+r}$-valued $T_m^G$，再输入 $T_n^F$，故总 loss 为 $r+r'$，不产生未定义的 distribution product。

用 $\Omega$ 的 $X_0$ 界估计乘法中的 scalar factors，并用

$$\begin{align}
\sqrt{(n+m)!}&\le 2^{(n+m)/2}\sqrt{n!m!},\\
nm\sqrt{(n+m-2)!} &=\sqrt{nm\binom{n+m-2}{n-1}}\sqrt{n!m!} \le 2^{n+m-2}\sqrt{n!m!},
\end{align}$$

得到下列连续映射；例如将右端的 $R$ 换成 $4R$ 足以吸收次数因子：

$$\begin{align}
\mathcal A_r\times\mathcal A_{r'}&\longrightarrow \mathcal A_{\max(r,r')},& (F,G)&\longmapsto FG,\\
\mathcal A_r\times\mathcal A_{r'}&\longrightarrow \mathcal A_{r+r'},& (F,G)&\longmapsto\{F,G\},\\
\|FG\|_{s,R,\max(r,r')} &\le C\|F\|_{s,4R,r}\|G\|_{s,4R,r'},\\
\|\{F,G\}\|_{s,R,r+r'} &\le C\|F\|_{s+r',4R,r}\|G\|_{s+r,4R,r'}.
\end{align}$$

$C$ 可取与 $n,m,F,G$ 无关的数。第二个组合界由 $\binom{N}{n-1}\le2^N$、$n\le2^{n-1}$ 和 $m\le2^{m-1}$ 得到。有限齐次截断在每个声明的层中收敛；常 symplectic form 上的 polynomial Jacobi/Leibniz identities 因这些估计延拓到整个类别。这证明闭合，而非将“对括号闭合”放进定义。

## 15. 分层完成、柱函数稠密性与张量含义

### 15.1 扩大类别仍由原始 Observable Core 完成

令 $\mathscr P(K)$ 为有限多个 smooth Hamiltonian linear functions 的 polynomial algebra。§2 的 cutoff onto 说明，它正是 $S(\mathscr F_K/\ker E_K)$ 的实际函数实现。定义

$$\begin{align}
\mathcal C_r(K)&=\overline{\mathscr P(K)}^{\,\mathcal A_r(K)},& \mathfrak A(K)&=\underset{r\ge0}{\operatorname{ind\,lim}}\mathcal C_r(K).
\end{align}$$

每个 $\mathcal C_r$ 使用上述 Fréchet topology，完成后元素仍是实际函数；并集使用 locally convex inductive-limit topology。下面证明该并集恰好等于 $\bigcup_r\mathcal A_r$，因此这个定义不是只给抽象 completion 而不知道其元素。

令 $P_N$ 为 $K$ 的前 $N$ 个 eigenmodes 在两个 canonical coordinates 上的共同投影，$w_{N+1}$ 为第一个被删去的 $W$ eigenvalue。$P_N$ 与 $\Omega$ 的配对相容，故

$$\begin{align}
T_n^{F\circ P_N} &=P_N T_n^F(P_N\,\cdot,\ldots,P_N\,\cdot),\\
P_{s,r+1}(T_n^F-T_n^{F\circ P_N}) &\le w_{N+1}^{-1} \bigl[P_{s+1,r}(T_n^F)+(n-1)P_{s,r}(T_n^F)\bigr].
\end{align}$$

证明是将差分成一个输出 tail 和 $n-1$ 个输入 tails；每个 tail 使用一次 $W^{-1}$。因此

$$\begin{align}
\|F-F\circ P_N\|_{s,R,r+1} \le w_{N+1}^{-1}\|F\|_{s+1,2R,r}.
\end{align}$$

再对固定 $N$ 截断次数，得到 $\mathscr P$ 在 $\mathcal A_{r+1}$ 中逼近每个 $\mathcal A_r$ 元素。由此有连续 inclusions

$$\begin{align}
\mathcal C_r\subset\mathcal A_r\subset\mathcal C_{r+1},\qquad \mathfrak A(K)=\bigcup_{r\ge0}\mathcal A_r(K)
\end{align}$$

以及两种 inductive-limit topology 的一致性。所有 evaluation 都连续且分离点，所以该拓扑 Hausdorff。§3 的小代数连续嵌入 $\mathcal A_0$：其 completed smooth tensors 经 $-\Omega$ 的 partial contractions 满足上述 operator bounds；故它包含在 $\mathcal C_1\subset\mathfrak A$ 中。

### 15.2 完成的准确范围

§14.2 的 joint estimates 和 $\mathscr P$ 的稠密性给连续线性 maps

$$\begin{align}
\mathcal C_r\widehat\otimes_\pi\mathcal C_{r'} &\longrightarrow\mathcal C_{\max(r,r')},&&F\otimes G\longmapsto FG,\\
\mathcal C_r\widehat\otimes_\pi\mathcal C_{r'} &\longrightarrow\mathcal C_{r+r'},&&F\otimes G\longmapsto\{F,G\}.
\end{align}$$

因此 $\mathfrak A$ 是实际函数的 Poisson algebra，并具有明确的 completed layerwise tensor operations；固定一个输入后的操作在 inductive-limit topology 下连续。后文的 fixed linear cutting/sewing maps 在每一层连续，因而在整个并集连续。

**边界。** 本节只证明层间 maps。§25.1 另外验证 (Q)，从而证明整个 inductive limit 完备；§§25.2–25.4 则给出全空间联合连续性和扩大类 independent projective tensor identity 的反例。进行 operations 时仍保留 $\mathcal C_r$ 和 bracket 输出层 $r+r'$。实际 sewing 使用 §19 的 raw regional presentation 或 §24 的 joint-family split quotient，不借用被否定的 tensor-factorization identity。

## 16. 局域复合场、边界接触项和能量

### 16.1 Smoothly Smeared Polynomial Jets

令 $P$ 是总阶数不超过 $d$ 的 spacetime jets 的有限 polynomial，$f$ 光滑且时间支撑 compact。先取 $f$ 的空间支撑在 interval 内部，定义

$$\begin{align}
F_{f,P}(\phi) &=\int dt\,dx\, f(t,x)P(j^d\phi(t,x)),\\
a_F[\phi] &=\sum_{|\alpha|\le d}(-\partial)^\alpha \left(f\,\frac{\partial P}{\partial(\partial^\alpha\phi)}\right),\\
dF_\phi(h)&=\langle a_F[\phi],h\rangle,& X_F(\phi)&=E_K a_F[\phi].
\end{align}$$

最后一式沿用 $\langle a,h\rangle=-\Omega(E_Ka,h)$。代入 $\phi=s_b+\psi_z$ 后是 $z$ 的有限 polynomial。对其 polarizations，用 oscillator representation 作 $s$ 次时间分部积分，得到

$$\begin{align}
\|\operatorname{Cau}_0 E_K a\|_s \le C_{s,I}\sum_{j=0}^{s}\|\partial_t^j a\|_{L^1_tL^2_x}.
\end{align}$$

这里可以使用 $m>0$ 控制低频。$\partial_t^j a_F$ 最多涉及 $j+2d$ 阶 field jets。一维 $H^1\hookrightarrow L^\infty$、Leibniz formula 及 wave equation 给每个齐次 coefficient 一个与 $s$ 无关的有限 loss；例如取 $r=2d+4$ 总是足够。常数可依赖 $s,P,f,s_b$，但不依赖输入 fields。故

$$\begin{align}
F_{f,P}\in\mathcal A_{2d+4}(K)\subset\mathcal C_{2d+5}(K).
\end{align}$$

这不要求 diagonal kernel 在所有变量中快速衰减。固定 $P$、jet order、时间支撑及空间 stratum 时，$f\mapsto F_{f,P}$ 对 smooth-test topology 连续进入声明的层；背景改变时，有限 polynomial coefficients 对所需 smooth seminorms 连续。

切割后 $f$ 可以光滑至每个 closed cell 的端点，或者出现光滑时间涂抹的 boundary jets。必须将变分写成 bulk 项加 boundary trace 项，不能删掉后者。把一阶导数统一表示为

$$\begin{align}
a_F=a_{\mathrm{bulk}}+ \sum_{\gamma,a}\eta_{\gamma,a}[\phi](t)\,\delta_\gamma^{(a)}(x),
\end{align}$$

其中 $\delta_\gamma^{(a)}$ 的意思是闭 interval 上的 trace functional，配对为 $(-1)^a\partial_x^a h(\gamma)$；不使用未声明的 endpoint half-delta convention。自由 interval eigenfunctions 满足 $|e_n^{(a)}(\gamma)|\le C_a n^a$。对 compact-time $\eta$ 作 $s+a+3$ 次分部积分后，mode tails 至少按 $n^{-3}$ 衰减，故

$$\begin{align}
\|\operatorname{Cau}_0E_K(\eta\,\delta_\gamma^{(a)})\|_s \le C_{s,a,I}\sum_{j=0}^{s+a+3}\|\partial_t^j\eta\|_{L^1_t}.
\end{align}$$

对 bulk jet functional，边界项的 coefficient jets 阶数不超过 $2d-1-a$；对直接的 boundary jet functional，不超过 $2d-a$。再用 trace bound，以上 $r=2d+4$ 仍足够。因此有限阶、光滑时间涂抹的 boundary terms 也在同一并集内。这里先对每个光滑 cell integral 变分并保留 trace terms；从未相乘一个 sharp characteristic function 和一个无定义的 delta product。

### 16.2 总能量现在是代数元素

在独立的 homogeneous Dirichlet 或 connected system 中，

$$\begin{align}
H_{\mathrm{en}}(u,v) &=\frac12\bigl(\|v\|_H^2+\|K^{1/2}u\|_H^2\bigr),\\
D(u,v)&=(v,-Ku),& T_2^H&=\frac12D,\qquad D:X_{s+1}\to X_s.
\end{align}$$

所以 $H_{\mathrm{en}}\in\mathcal A_1\subset\mathcal C_2\subset\mathfrak A$，并且 $\{F,H_{\mathrm{en}}\}=dF(Dz)$。它仍不在 §3 的小代数中，两项结论不冲突。能量截断 $H_N=H_{\mathrm{en}}\circ P_N$ 在 loss-two 层收敛；在 energy-normalized coordinates 上，$D:X_{s+1}\to X_s$ 的高频 tail 范数不趋于零，而 $D:X_{s+2}\to X_s$ 的 tail 至多为 $w_{N+1}^{-1}$。必须声明这一阶额外 loss，不能把强收敛写成同阶 operator-norm convergence。

整体能量也有 local-composite presentation。取 $\eta\in C_c^\infty(I^\circ)$、$\int\eta=1$，则对 homogeneous solutions，

$$\begin{align}
H[\eta](\phi)&=\int\eta(t)\frac12\int
(\dot\phi^2+\phi'^2+m^2\phi^2)\,dx\,dt=H_{\mathrm{en}},\\
a_{H[\eta]}&=-\eta'\dot\phi+2\eta(-\partial_x^2+m^2)\phi,\\
E_Ka_{H[\eta]}&=\dot\phi.
\end{align}$$

能量的空间分部积分使用 physical Dirichlet variations；在人工切口释放历史后须加上下一段的 cut terms。最后一个等式可逐 oscillator 验证，或由 $dH[\eta]=dH_{\mathrm{en}}$ 和 $\Omega$ 非退化推出。

对 prescribed $q_i(t)$，sharp regional $H_i(t)$ 的形式向量为 $(\dot\phi_i,-K_{\mathrm{diff}}\phi_i)$。当 $\dot q_i(t)\ne0$ 时，其 position component 在切口非零，因而不属于固定历史的允许切向量；即便这一阶条件为零，还须满足其余 smooth compatibility conditions。适当的区域对象是

$$\begin{align}
H_i[\eta]&=\int\eta(t)H_i(t)\,dt\in\mathfrak A_i[j_i,q_i],\\
\frac{dH_i}{dt}&=(j_i,\dot\phi_i)_{H_i}-\Pi_i\dot q_i.
\end{align}$$

第一式的 quadratic part 为 $(\int\eta)H_{\mathrm{en},D}$；含 smooth particular solution 的 cross term 是一个 smooth-time source 的线性 observable，故已在 $\mathcal A_1$。第二式是局域 energy identity 的积分，保留真实 boundary work。共同 history 的自由变分已在 §6 给出 $\Pi_1+\Pi_2=0$；于是 sources 为零时

$$\begin{align}
H_{\mathrm{sew}}=H_1+H_2,\qquad \frac{dH_{\mathrm{sew}}}{dt}=0.
\end{align}$$

切割能量的变分含 $-\Pi_i\delta q_i$；这些项在 transmission 后相消。不能先以固定 $q_i$ 的规则丢弃它们，再声称由旧 regional brackets 得到了整体时间演化。

### 16.3 Locality 的对象

每个 open $O$ 保留支撑于 $O$ 的 linear smearings、上述 polynomial local functionals 及其 admissible polynomial products/brackets。在每个 $\mathcal C_r$ 中对其中属于该层的元素取闭包，最后取分层并集。这定义 local net；支撑以这些原始代表指定，不以 $E a_F$ 的空间支撑指定。

对 causally disjoint supports，$E$ 的 finite propagation 使 polynomial representatives 的 $\langle a_F,Ea_G\rangle$ 为零，层间 bracket continuity 把零括号延拓到这些闭包。这允许局域复合场；不宣称任意完成元素有唯一最小支撑，也不包含未作时间涂抹的任意 point composite。

## 17. Dynamics 与 History Transport

### 17.1 Free Evolution

自由演化 $U_t:X^\infty\to X^\infty$ 在每个 $X_s$ 上 bounded，且保持 $\Omega$。因此

$$\begin{align}
T_n^{U_t^*F} &=U_{-t}T_n^F(U_t\,\cdot,\ldots,U_t\,\cdot)
\end{align}$$

保持 loss $r$，并给 $\mathcal A_r\to\mathcal A_r$ 的连续映射。这些 bounds 在 compact $t$-interval 上一致。$U_t^*$ 保持 $\mathscr P$，所以也保持 $\mathcal C_r$；用该 core 的稠密性和一致界证明 $t\mapsto U_t^*F$ 在 $\mathcal C_r$ 中连续。这一步没有把 $U_t$ 在单个 Sobolev 空间上的 strong continuity 误写成 operator-norm continuity。

在一个足够大的输出层中，

$$\begin{align}
\frac{d}{dt}U_t^*F=U_t^*\{F,H_{\mathrm{en}}\}.
\end{align}$$

具体地，$D:X_{s+1}\to X_s$ 和 §14.2 的 composition estimate 给 $\mathcal D_HF=\{F,H_{\mathrm{en}}\}$ 的连续 map $\mathcal A_r\to\mathcal A_{r+1}$；它保持 polynomial core，故延拓为 $\mathcal C_r\to\mathcal C_{r+1}$。这样 free dynamics 既保持函数类，也由类内的 $H_{\mathrm{en}}$ 生成。

### 17.2 Affine Origins 与 Causal Histories

在固定 $b=(j,q)$ 下写 $\phi=s_b+\psi_z$，用这个坐标定义 $\mathfrak A_i[b]$。换 origin 相当于 $z\mapsto z+u$，其中 $u\in X^\infty$。若 $\tau_uF(z)=F(z+u)$，其系数满足

$$\begin{align}
T_k^{\tau_uF} &=\sum_{n\ge k}\binom nk T_n^F(u^{n-k},\,\cdot^{\,k-1}),\qquad k\ge1.
\end{align}$$

对 $U=\|u\|_{s+r}$，$\sqrt{k!}\le\sqrt{n!}$ 和二项式公式给

$$\begin{align}
\|\tau_uF\|_{s,R,r}\le 2\|F\|_{s,R+U+1,r}.
\end{align}$$

右端非整数 radius 可向上取整。因此平移及其 inverse 在各 $\mathcal A_r,\mathcal C_r$ 连续，对 $(u,F)$ 在每个固定层也联合连续；并保持常 Poisson bracket。这里证明的是固定历史下 particular solution 的选择无关性；joint families 的 history-dependent origin changes 还须满足 §23.4 的 transpose 条件。

令 §5 的 retarded/advanced solution transport 为 $\phi\mapsto\phi+r^\epsilon[k,h]$。从 $b$ 到 $b'=b+(k,h)$ 的 homogeneous coordinates 满足

$$\begin{align}
z'&=z+\Delta,& \psi_\Delta&=s_b+r^\epsilon[k,h]-s_{b'}.
\end{align}$$

右侧满足 homogeneous equation 和零 Dirichlet trace，且对 controls 连续进入 $X^\infty$。observable 的正向 transport 是 $\tau_{-\Delta}$；于是它在每个完成层上是连续 Poisson isomorphism。仅指定逐点的 history-indexed functions 而不给这项正则性，不足以推出这个结论。

非恒定 $q$ 的 physical time translation 将历史同时变为 $q(t+\tau)$，对 $j$ 同样处理；在共有 slab 上，其坐标表达为 $U_\tau$ 加一个 smooth affine shift。这先给逐历史 maps；对 §22 的 joint family 类，保持性由 §23.4 的双向有限-loss 估计另行证明。除非历史本身有相应对称性，不把它称为同一个 prescribed-history theory 的 stationary dynamics。

## 18. 切割和接口响应的连续性

### 18.1 Smeared Response

区域 response 仍是由作用量得到的

$$\begin{align}
\mathcal R_\eta(\phi_i) =-\int_I\eta(t)\partial_{y_i}\phi_i(t,\ell_i)\,dt, \qquad \eta\in C_c^\infty(I^\circ).
\end{align}$$

它是 affine linear observable。令 $b_n=e_n'(\ell_i)$、$\omega_n^2=\lambda_n$，其 homogeneous part 的 Hamiltonian vector 在 $t=0$ 为

$$\begin{align}
(X_{\mathcal R_\eta})_{Q_n} &=-\frac{b_n}{\omega_n}\int\eta(t)\sin(\omega_nt)\,dt,\\
(X_{\mathcal R_\eta})_{P_n} &=b_n\int\eta(t)\cos(\omega_nt)\,dt.
\end{align}$$

$b_n=O(n)$，故 $\|X_{\mathcal R_\eta}\|_s$ 由 $\eta$ 的至多 $s+3$ 阶 $L^1$ derivatives 连续控制。它已经是 $\mathscr P$ 中的线性元素；于是 $\eta\mapsto\mathcal R_\eta$ 连续进入 $\mathcal C_0$。沿 §5 的 causal solution transport，其 response increment 为 $\rho k-Dh$。这不同于在一个 history-dependent normalized origin 下冻结 $z$ 的单独 $D_q$：后者及其补偿项在 §§23.2、23.4 明确给出。这里不把未涂抹的 normal trace 当成 $L^2$-bounded observable。

### 18.2 一个连续的区域坐标提取及其 Symplectic Adjoint

固定 §2 的时间 cutoff $\chi$，置 $A_\chi=[\partial_t^2,\chi]=\chi''+2\chi'\partial_t$。对任意足够光滑的区域 field history 定义

$$\begin{align}
\mathcal P_i=-E_{i,D}A_\chi.
\end{align}$$

它在 homogeneous Dirichlet solutions 上为 identity。若最初选了 $s_b^0$，改用 $s_b=s_b^0-\mathcal P_i s_b^0$，则 $\mathcal P_i s_b=0$，每个 prescribed-history solution 的 homogeneous coordinate 正好是 $\mathcal P_i\phi_i$。这只是 origin choice；causal transports 仍用 §17.2 的实际 $R/A$ solutions。

现在使用 §6 已从区域 action/response 独立构造的 $E_{\mathrm{sew}}$。令 $R_i$ 为 spatial $L^2$ restriction，$e_i=R_i^*$ 为 spatial zero extension。定义 solution maps

$$\begin{align}
\mathsf T_i&=-E_{i,D}A_\chi R_i: X^\infty_{\mathrm{sew}}\longrightarrow X^\infty_i,\\
\mathsf T_i^\sharp&=-E_{\mathrm{sew}}e_iA_\chi: X^\infty_i\longrightarrow X^\infty_{\mathrm{sew}}.
\end{align}$$

解与 Cauchy data 在此已认同。二者在每个 $X_s\to X_s$ 上 bounded：§16.1 的 bulk smoothing bound 只需 $A_\chi\phi$ 的 $s$ 阶时间导数，即 $\phi$ 的至多 $s+1$ 阶时间导数；这些恰由初值的 $X_s$ norm 控制。$R_i,e_i$ 只作用在 $L^2$ source 上，因此没有将不相容的 sharp Cauchy zero extension 当作 smooth data。

由于 $A_\chi^*=-A_\chi$，且 $\chi'$ 的时间端点项为零，

$$\begin{align}
\Omega_i(\mathsf T_i z,w) &=\langle A_\chi R_i z,w\rangle =-\langle z,e_iA_\chi w\rangle\\
&=\Omega_{\mathrm{sew}}(z,\mathsf T_i^\sharp w).
\end{align}$$

因此纯 homogeneous-coordinate observable 的切后重建满足

$$\begin{align}
X_{F_i\circ\mathsf T_i}(z) &=\mathsf T_i^\sharp X_{F_i}(\mathsf T_i z),\\
T_n^{F_i\circ\mathsf T_i} &=\mathsf T_i^\sharp T_n^{F_i}(\mathsf T_i\,\cdot,\ldots,\mathsf T_i\,\cdot).
\end{align}$$

上述两个 loss-zero bounds 给 $\mathcal A_r\to\mathcal A_r$ 连续性；smooth linear core 也被保持，故得到 $\mathcal C_r\to\mathcal C_r$ 连续性。这个 map 保持 ordinary multiplication，但一般不保持旧 regional Poisson bracket；实际括号由 $E_{\mathrm{sew}}$ 给出，仍须包含 same-side correction 和 cross bracket。

对含 $q$ 的物理 observable family，不能只代入 $\mathsf T_i z$ 而冻结 coefficients：还要代入实际 $q(z)=\gamma_iR_i\phi_z$ 并对其求导。额外项同时包含 bulk transpose $\mathsf S_i^\dagger a_{\mathrm{bulk}}$ 和 boundary trace densities，见 (23.6)，不能仅认作显式 boundary terms。§§22–24 给统一类别及其释放估计；任意未经控制的 history-dependent sections 不在该结论内。

### 18.3 物理 Cutting 的目标

真正的 cut 输出保留 $q(t)$、两侧 reconstructed fields 及其 response matching。它不是只有 $(\mathsf T_1z,\mathsf T_2z)$ 的旧固定历史 product。共同 trace 和 flux matching 对 smooth solutions 的时间导数也成立；用 wave equation 递推，得到所有需要的空间 derivatives 的 patching。初值上的分段 $H^{s+1}\oplus H^s$ norms 与 $K_{\mathrm{sew}}$ 的 smooth-scale norms 相容；重建及其 inverse 连续。

对 local composite，先把原始积分按空间 cells 分开，保持第二个 inward coordinate 的 $\partial_x=-\partial_{y_2}$ 等方向符号，再逐 cell 变分并保留 boundary terms。对已经完成的 multipoint observables，cutting 由 §19 的稠密 polynomial core 连续延拓。$\chi$ 只用于证明坐标提取、adjoint 和密度；物理 cutting 与最终 sewing 由原始 fields 和 $E_{\mathrm{sew}}$ 决定，不依赖这个辅助 cutoff。

## 19. 从区域 Raw Tensor 完成到独立 Global Algebra

### 19.1 Sewn Completion 的独立定义

先取 source-free physical equations。若 prescribed sources 拼接后为整体允许的 smooth background，则其版本通过 §17 的 affine origins 和 transports 得到；任意分段 $L^2$ response probe 不自动成为允许全部 global jets 的物理背景。全部输入为 regional action、$\mathscr F_i$、$G_i^{R/A},H_i^{R/A},\rho_i^{R/A},D_i^{R/A}$ 和 histories 的相容域。按 §6 认同共同 history 并自由变分，得到 flux matching；因果唯一性给 $E_{\mathrm{sew}}$。同一 transmission 的区域正闭二次型给 $K_{\mathrm{sew}}$，从而给 §14 所需的 $X_{\mathrm{sew},s}$。这些步骤没有使用 $K_M$ 或 global algebra。

在交换代数层先取

$$\begin{align}
\mathscr P_{\mathrm{raw}} &=S(\mathscr F_1)\otimes_{\mathrm{alg}}S(\mathscr F_2) \simeq S(\mathscr F_1\oplus\mathscr F_2),\\
\mathscr I_{\mathrm{sew}} &=\left\langle\ker E_{\mathrm{sew}}\right\rangle,\\
\sigma_{\mathrm{sew}}(f,g) &=\langle f,E_{\mathrm{sew}}g\rangle .
\end{align}$$

以最后一式定义新的 Poisson bracket。$\mathscr I_{\mathrm{sew}}$ 是其 Poisson ideal；§2 的 continuous cutoff splitting 和代数对称代数的 kernel identity 给

$$\begin{align}
\mathscr P_{\mathrm{raw}}/\mathscr I_{\mathrm{sew}} \simeq \mathscr P(K_{\mathrm{sew}}).
\end{align}$$

这里 raw tensor 尚未除去旧 $\ker E_{i,D}$，也没有赋予跨侧为零的旧 bracket。对这个实际 polynomial quotient，分别用 §14 的 $\|\cdot\|_{s,R,r}$ 完成，定义

$$\begin{align}
\mathfrak A_{\mathrm{sew}} &=\underset{r\ge0}{\operatorname{ind\,lim}}\, \widehat{\mathscr P_{\mathrm{raw}}/\mathscr I_{\mathrm{sew}}}
^{\,\|\cdot\|_{s,R,r}}\\
&\simeq \underset{r\ge0}{\operatorname{ind\,lim}} \mathcal C_r(K_{\mathrm{sew}}) =\mathfrak A(K_{\mathrm{sew}}).
\end{align}$$

每层 completion 的 faithful realization 与 §15 的密度已经证明，因而这不仅是把全部函数重新命名为 sewn algebra，也不依赖“completion 自动与 quotient 交换”。新的能量和 local composites 是在这个拓扑中从原始涂抹 polynomial core 得到的极限。

### 19.2 与独立定义的整体同类代数同构

整体一侧独立从区间 $(-\ell_1,\ell_2)$ 的作用量和 physical Dirichlet 条件定义

$$\begin{align}
K_M=-\partial_x^2+m^2,\qquad D(K_M)=H^2\cap H_0^1,
\end{align}$$

再用 §§14–15 的相同规则定义 $\mathfrak A(K_M)$。§7 的一维 $H^1/H^2$ patching 和 functional calculus 已证明

$$\begin{align}
\operatorname{Ass}K_{\mathrm{sew}} &=K_M\operatorname{Ass},& \operatorname{Ass}E_{\mathrm{sew}} &=E_M\operatorname{Ass}.
\end{align}$$

$\operatorname{Ass}$ 是 spatial $L^2$ unitary，故在每个 $X_s$ 上也是 isometry，并保持 $\Omega$。定义

$$\begin{align}
\alpha(F)(z_M)&=F(\operatorname{Ass}^{-1}z_M),\\
T_n^{\alpha(F)} &=\operatorname{Ass}\,T_n^F (\operatorname{Ass}^{-1}\,\cdot,\ldots, \operatorname{Ass}^{-1}\,\cdot).
\end{align}$$

于是对所有 $s,R,r$ 有 $\|\alpha(F)\|_{s,R,r}=\|F\|_{s,R,r}$。逆映射由 restriction 到相容的 sewn data 给出，也满足相同估计。它们保持 polynomial core、乘法和 $-\Omega$ contraction，所以延拓为

$$\begin{align}
\alpha_r:\mathcal C_r(K_{\mathrm{sew}}) &\xrightarrow{\ \cong\ }\mathcal C_r(K_M),\\
\alpha:\mathfrak A_{\mathrm{sew}} &\xrightarrow{\ \cong\ }\mathfrak A(K_M)
\end{align}$$

的层上 Fréchet isomorphisms 和整个 inductive limit 上保持分层 Poisson operations 的连续线性同构。injectivity 来自 faithful coefficients，surjectivity 来自实际 inverse，完成后的连续性来自相等的 seminorms；没有把 density 当作 onto，也没有假设全空间的双线性运算联合连续。

在原始 labels 上，$\alpha(\Phi_{\mathrm{sew}}(f_1,f_2))=\Phi_M(\operatorname{Ass}(f_1,f_2))$。因此切割每个 source variable 给其 inverse，并连续延拓到各层 completion。local polynomial densities 的逐 cell identity、§16 的 boundary terms 和这一连续延拓保持 local net。还满足

$$\begin{align}
\alpha(H_{\mathrm{sew}})&=H_M,& \alpha\circ U_{t,\mathrm{sew}}^*&=U_{t,M}^*\circ\alpha .
\end{align}$$

§17 中保持 transmission、且保持上述 background class 的 affine transports 经重建也与这些 maps 相容。独立改变两份 histories 而破坏 matching 时，只有各自区域的 transport，没有对应的 glued transport。对有限 interval chain，§8.2 的全部 port-response 消元给同一个 $E,K$ 和原始 source flattening；因此相同的 coefficient completion 给相同的 canonical associator。未增加一般 geometry 或一般 nonlinear well-posedness 的主张。

### 19.3 四个要求的结论

| 要求 | 当前定理 |
|---|---|
| Poisson bracket 有定义且封闭 | $\mathcal C_r\times\mathcal C_{r'}\to\mathcal C_{r+r'}$ 连续；Jacobi、Leibniz 由实际 Hamiltonian coefficients 和密度证明，§14。 |
| Dynamics 和 history transport 保持类别 | Free evolution 保持各层，$H\in\mathfrak A$ 生成 dynamics。固定增量的 transports 见 §17；joint history/increment families 的有限-loss bounds 与支持条件另见 §23.4。 |
| Cutting、response、sewing 连续 | Smeared response 与 cutoff extraction 的 fixed-history bounds 见 §18；完整历史协向量、release chain rule、部分组合由 §§23–24 补足。 |
| 恢复独立整体同类代数 | $\alpha_r$ 及逆逐 seminorm 等距，§19.2；§24 的 continuous family section 另行证明共同-history quotient onto 整个 $\mathfrak A(K_M)$，包含复合场和总能量。 |

这个正结果限定于已声明的 free scalar interval、smooth controls、finite-jet polynomial generators 和 finite-loss entire completion。它没有选择全部 Hamiltonian functions，也没有证明任意非线性动力学保持此 entire 类别；§10.2 的有限维极点反例仍适用。

## 20. 扩大类别的验证与边界

**Verified（本阶段的范围）:** §§14–19 给出固定历史 Hamiltonian coefficients 的 Banach-scale bounds、每层完备性、实际函数 realization、层间 Poisson closure、额外一阶 loss 下的 spectral-core density、fixed-history composite/能量 membership、固定增量 affine transport、response/cut adjoint，以及 sewn/global 独立 coefficient spaces 的逐层同构。§21 重新审计这些证明；统一 history-family release 和完整覆盖所缺的量词与导数估计由 §§22–24 补足。

**Checked symbolically（2026-09-05）:** 以下 fresh-kernel Mathematica 程序的 13 个命名 residual groups 全为零；同频 cutoff projection 为 $2\times2$ identity；$1\le n,m\le60$ 的 factorial inequality 共 3600 对全为 True。新检查包含 derivative composite 的 Euler term 与时间/空间 boundary currents，避免只检查 bulk 方程而遗漏切口项。程序中的 $\chi'(s)=3(1-s^2)/4$ 仅在积分区间 $[-1,1]$ 用作归一化、端点为零的有限检验 profile；正文的 smoothing/density proof 使用真正的 smooth compact-support transition。

**Assumptions:** 有限正长度、$m>0$、static free scalar、physical outer Dirichlet、无真实 interface action、无 gauge；物理背景和 histories 足够光滑以评价指定 jets，全部 homogeneous smooth initial data 保留；linear probes 使用 smooth-time $L^2$ 类别；local composite 和 boundary jet 的时间 tests compact，cutting 使用有限个固定 interval cells。每个函数只损失一个有限的 $r$，每次完成和操作明确记录其层。

**本轮审计后的修正：** 整体 LF 完备性现在由 §25.1 的 interpolation/(Q) 证明；全空间乘法/括号联合连续性和扩大类独立 projective tensor identity 则由 §§25.2–25.4 反例否定。任意 rough histories、任意未控制的非多项式或 sharp point composites、全部 smooth Hamiltonian functions，以及本轮范围外的动力学/模型推广仍未声称。有限 residuals 不证明 Fréchet completion、PDE、density、LF completeness 或 topology statements；证据分别是正文中的无限维估计、插值论证和反例。

以 Sobolev scales 控制 Hamiltonian vector fields 的相关方法背景可参见 [Bambusi–Grébert 的 tame-modulus Hamiltonian PDE 工作](https://arxiv.org/abs/math-ph/0411011)。这里的 finite-loss coefficient topology、层间 completion 和 timelike-boundary sewing 由本文逐项给出，不从该文的 normal-form theorem 推出。

可独立重跑新增检查：

```wolfram
ClearAll["Global`*"];
vars={q1,p1,q2,p2}; jmat=KroneckerProduct[IdentityMatrix[2],{{0,1},{-1,0}}];
grad[f_]:=D[f,#]&/@vars; xf[f_]:=jmat.grad[f];
pb[f_,g_]:=grad[f].jmat.grad[g];
jac[v_]:=Table[D[v[[i]],vars[[j]]],{i,4},{j,4}];
ff=q1^3+p1^2 q2+q1 p2^2; gg=p1^4+q2^3 p2+q1^2 p1 p2;
nn=3; mm=4; deg=nn+mm-2;
tn=xf[ff]/nn; tm=xf[gg]/mm;
tbr=nn mm/deg (jac[tn].tm-jac[tm].tn);
u[s_]:=qq Cos[om s]+pp Sin[om s]/om;
v[s_]:=D[u[s],s];
chp[s_]:=3(1-s^2)/4; chpp[s_]:=-3s/2;
aa[s_]:=chpp[s]u[s]+2chp[s]v[s];
projected=Integrate[Sin[om(t-s)]aa[s]/om,{s,-1,1},Assumptions->om>0];
modeProject[out_,in_]:=Module[{sol,ac},
 sol={Cos[in s],Sin[in s]/in};
 ac=chpp[s]sol+2chp[s]D[sol,s];
 Simplify[{
 Integrate[-Sin[out s]ac/out,{s,-1,1}],
 Integrate[Cos[out s]ac,{s,-1,1}]}]];
t23=modeProject[2,3]; t32=modeProject[3,2]; omega={{0,-1},{1,0}};
en=(D[phi[t,x],t]^2+D[phi[t,x],x]^2+mass^2 phi[t,x]^2)/2;
flux=D[phi[t,x],t]D[phi[t,x],x];
elEnergy=-D[eta[t]D[phi[t,x],t],t]-D[eta[t]D[phi[t,x],x],x]+mass^2 eta[t]phi[t,x];
localDensity=ffun[t,x](phi[t,x]^4+(D[phi[t,x],t]D[phi[t,x],x])^2);
localVar=D[ffun[t,x]((phi[t,x]+eps h[t,x])^4+
(D[phi[t,x]+eps h[t,x],t]D[phi[t,x]+eps h[t,x],x])^2),eps]/.eps->0;
localEuler=4ffun[t,x]phi[t,x]^3-
D[2ffun[t,x]D[phi[t,x],t]D[phi[t,x],x]^2,t]-
D[2ffun[t,x]D[phi[t,x],x]D[phi[t,x],t]^2,x];
timeCurrent=2ffun[t,x]D[phi[t,x],t]D[phi[t,x],x]^2 h[t,x];
spaceCurrent=2ffun[t,x]D[phi[t,x],x]D[phi[t,x],t]^2 h[t,x];
checks=<|
"hamiltonianCommutatorSign"->Expand[xf[pb[ff,gg]]-jac[xf[ff]].xf[gg]+jac[xf[gg]].xf[ff]],
"homogeneousBracketCoefficient"->Expand[deg tbr-xf[pb[ff,gg]]],
"productHamiltonianVector"->Expand[xf[ff gg]-ff xf[gg]-gg xf[ff]],
"energyHamiltonianVector"->Expand[xf[(p1^2+kap q1^2)/2]-{p1,-kap q1,0,0}],
"localCompositeEulerWithBothBoundaryCurrents"->Expand[localVar-localEuler h[t,x]-D[timeCurrent,t]-D[spaceCurrent,x]],
"localEnergyBalance"->Expand[D[en,t]-D[flux,x]-D[phi[t,x],t](D[phi[t,x],{t,2}]-D[phi[t,x],{x,2}]+mass^2 phi[t,x])],
"smearedEnergyEulerOnShell"->Expand[(elEnergy/.Derivative[2,0][phi][t,x]->Derivative[0,2][phi][t,x]-mass^2 phi[t,x])-(-eta'[t]D[phi[t,x],t]+2eta[t](-D[phi[t,x],{x,2}]+mass^2 phi[t,x]))],
"energySmearingPropagatesToTimeDerivative"->FullSimplify[Cos[om(t-s)]v[s]-om Sin[om(t-s)]u[s]-v[t],Assumptions->om>0],
"cutoffSkewAdjointDensity"->Expand[w[t](chi''[t]z[t]+2chi'[t]z'[t])+z[t](chi''[t]w[t]+2chi'[t]w'[t])-D[2chi'[t]z[t]w[t],t]],
"temporalProjectionIdentity"->FullSimplify[projected-u[t],Assumptions->om>0],
"cutProjectionSymplecticAdjoint"->FullSimplify[Transpose[t23].omega-omega.t32],
"smearedNormalResponseVector"->Expand[xf[-bn(q1 cc+p1 ss/om)]-{-bn ss/om,bn cc,0,0}],
"energyTailAtLossTwo"->FullSimplify[Sqrt[1+om^2]/(1+om^2)-1/Sqrt[1+om^2],Assumptions->om>0]
|>;
Print[checks];
Print["allResidualsZero=",And@@(SameQ[#,0]&/@Flatten[Values[checks]])];
Print["factorialBound[n,m=1..60]=",And@@Flatten[Table[
n^2 m^2 Factorial[n+m-2]<=4^(n+m-2)Factorial[n]Factorial[m],{n,1,60},{m,1,60}]]];
Print["sameFrequencyProjection=",FullSimplify[modeProject[2,2]]];
```

## 21. 函数空间审计：哪些证明可以保留

本节重新检查 §§14–19 的证明，不以此前的 claim ledger 为前提。本轮只处理自由标量的经典函数空间、历史 families 和连续组合。

### 21.1 固定历史系数类和完成

**结论：** §14 的 $\mathcal A_r$ 完备性、层间乘法/Poisson bounds，以及 §15 的额外一阶 loss 密度论证成立；同层柱函数稠密性不能补写成一个更强结论。

具体而言，固定 $n,s,r$ 后的 coefficient map 属于 bounded multilinear operators 的 Banach 空间。一个 Cauchy family 在每个这样的空间中有极限；不同 $s$ 上的 maps 在稠密的 smooth inputs 上相等这一条件为闭条件。Hamiltonian 对称性也为闭条件，因为它只使用连续的 $\Omega$ 配对。各 $R$ 的加权 $\ell^1$ Cauchy 条件使次数极限仍满足同一组 seminorms。实际函数级数及导数的局部一致收敛由增大 $R$ 控制，Taylor/polarization 保证没有 evaluation kernel。这给出 $\mathcal A_r$ 的完整证明，而不是仅对每个 coefficient 分别取极限。

乘法只使用 bounded scalar evaluation 和 $F X_G+G X_F$。括号的两项 composition 分别要求 inner vector 在 $X_{s+r}$ 和 $X_{s+r'}$；所以 §14.2 右端出现 $s+r'$、$s+r$ 是必要的。该估计没有证明不记录 loss 的联合连续性。

对 $F-F\circ P_N$，输出 tail 用 $T_n$ 在 $s+1$ 的估计，输入 tails 用一个 $X_{s+r+1}\to X_{s+r}$ 的 compact inclusion。再用 $n\le2^n$ 求和，确实得到 §15.1 的 $w_{N+1}^{-1}$ bound。因此连续 inclusions

$$\begin{align}
\mathcal C_r\subset\mathcal A_r\subset\mathcal C_{r+1}
\end{align}$$

成立。这里第二个 inclusion 不能降为 $\mathcal A_r=\mathcal C_r$。

**反例：$H_{\mathrm{en}}\notin\mathcal C_1$。** $\mathscr P$ 的 quadratic Hamiltonian coefficients 为 finite-rank operators；它们在 $X_1\to X_0$ operator norm 下的极限是 compact operator。但 $T_2^H=D/2$ 不 compact：对正交输入 $z_n=(0,w_n^{-1}e_n)$，有 $\|z_n\|_1=1$，而 $Dz_n=(w_n^{-1}e_n,0)$ 在 $X_0$ 中是正交单位向量。因此不存在任何同层柱函数逼近，不只是特定的 spectral truncation 失败。另一方面，§15 的 tail estimate 给 $H_{\mathrm{en}}\in\mathcal A_1\subset\mathcal C_2$。每层 completion 的准确对象必须继续写为 $\mathcal C_r$。

### 21.2 旧整体同构的覆盖范围

§19.2 的 operator intertwining 与 coefficient transport 逐个保持 seminorm；这足以证明独立构造的 $\mathfrak A(K_{\mathrm{sew}})$ 与 $\mathfrak A(K_M)$ 同构。它不自动证明“任意逐历史 family 都能粘合”：此前没有统一定义这种 family 的 mixed derivatives，也没有证明其释放后的 chain rule 在同一函数类中闭合。§17 的固定增量 affine transports 和 §18 的具体 local polynomial calculations 不能填补这个量词缺口。

### 21.3 连续光滑的历史参数也可能在释放后失败

取一个内部时刻 $t_*=0$，令

$$\begin{align}
F_q(z)=q(0).
\end{align}$$

每个固定 $q$ 下它是常数，因而属于所有 $\mathcal A_r[q]$；$q\mapsto F_q$ 还是 $C^\infty(\overline I)\to\mathbb C$ 的连续线性 map。其一阶历史导数是 $D_qF[h]=h(0)$，其余高阶导数为零。因此“逐纤维属于代数，加上参数方向光滑”仍不足够。

释放后它成为 $\bar F(\phi)=\phi(0,\Gamma)$。Cauchy variation 给

$$\begin{align}
X_{\bar F}=(0,-\delta_\Gamma),
\end{align}$$

这不属于 $X^\infty$，甚至不属于 $X_0$。在等长 connected interval 的中点，$\delta_\Gamma$ 的 sine-mode coefficients 沿奇数 modes 不衰减，直接验证了这一失败。缺失项正是 $D_qF[\delta q]$；固定 $q$ 的导数在这个例子中恒为零。

因此允许的 families 必须控制历史协向量本身，使其经 trace transpose 和 causal propagator 后成为合法 Hamiltonian vector。仅给标量 $D_q^kF[h_1,\ldots,h_k]$ 的连续性或有限 Sobolev loss 仍不够。以下使用 smooth compact-time history densities 和统一 mixed-coefficient bounds；不加入任意时间点的历史 evaluation。

## 22. 统一的历史依赖函数类别

以下定理取物理 $j=0$；辅助的 smooth-time $L^2$ sources 继续用于定义响应。允许有限个 interval cells 和有限个 prescribed boundary histories。时间 slab $I$ 固定，所有数据在其邻域光滑。用

$$\begin{align}
\mathcal Q_s&=H^s(\mathbb R;\mathbb C^p),& \mathcal Q^\infty&=\bigcap_{s\ge0}\mathcal Q_s
\end{align}$$

作历史的辅助代表空间。任意在 $\overline I$ 邻域光滑的物理历史都可延拓成其中的 compact-support 元素。下面的 observables 只依赖 $I^\circ$ 内一段 compact history，因此不依赖延拓；这没有给物理历史施加周期或时间 Dirichlet 条件。

### 22.1 Mixed Hamiltonian Coefficients 与历史协向量

取 $K\Subset I^\circ$，并令

$$\begin{align}
Y_s&=\left(\bigoplus_iX_{i,s}\right)\oplus\mathcal Q_s,\\
Z_{s,K}&=\left(\bigoplus_iX_{i,s}\right)\oplus H^{s+3}_K(\mathbb R;\mathbb C^p),\\
H^a_K&=\{a\in H^a(\mathbb R):\operatorname{supp}a\subset K\},\\
\beta((V,A),(z,h)) &=-\sum_i\Omega_i(V_i,z_i)+\int_{\mathbb R}A(t)\cdot h(t)\,dt .
\end{align}$$

各 direct sum 用 Hilbert norm。时间方向的三个额外导数用于控制释放后的 boundary-source propagator；§24 给出所需估计。配对满足 $|\beta(U,y)|\le\|U\|_{Z_{0,K}}\|y\|_{Y_0}$，且在协向量端分离点：若对所有 $y$ 配对为零，则 $U=0$。历史在 $K$ 之外的变化则被该配对消去，所以不称其在 $Y$ 端非退化，也不把 $Z^\infty_K$ 称为 $Y^\infty$ 的全部连续对偶。

**定义。** $\mathcal B_{r,K}$ 的元素是实际 joint entire functions

$$\begin{align}
F(y)&=B_0+\sum_{n\ge1}B_n(y^n),\qquad y=(z,q),\\
B_n(h,y_2,\ldots,y_n) &=\beta\bigl(U_n(y_2,\ldots,y_n),h\bigr),
\end{align}$$

其中 $B_n$ 全对称，$U_n$ 为对称 $(n-1)$-linear map，并且同一个有限整数 $r$ 满足

$$\begin{align}
U_n:(Y_{s+r})^{n-1}&\longrightarrow Z_{s,K} \quad\text{bounded for every }s,n,\\
P_{s,r,K}(U_n)&=\max_{0\le j\le s}
\|U_n:(Y_{j+r})^{n-1}\to Z_{j,K}\|_{\mathrm{op}},\\
\|F\|_{s,R,r,K} &=|B_0|+\sum_{n\ge1}\sqrt{n!}\,R^nP_{s,r,K}(U_n)<\infty \quad(s\ge0,\ R\ge1).
\end{align}$$

因此 full differential 是

$$\begin{align}
U_F(y)&=\sum_{n\ge1}nU_n(y^{n-1})=(V_F(y),A_F(y)),\\
dF(z,q)[w,h] &=-\sum_i\Omega_i(V_{F,i}(z,q),w_i) +\int A_F(z,q;t)h(t)\,dt. \tag{22.1}
\end{align}$$

这里 $V_F$ 是固定历史的 Hamiltonian vector，$A_F$ 是历史导数的 **smooth density**。正则性要求施加于包括历史 slots 的全部 $U_n$，而非只施加于 $F_q$ 的场方向系数。

**每层完成与函数实现。** $H^{s+3}_K$ 在 $H^{s+3}(\mathbb R)$ 中闭；不同 $s$ 的 operator extensions 相容、$B_n$ 的对称性、输出 support 条件均为闭条件。§21.1 的 Banach-operator 与加权 $\ell^1$ 论证因此逐字适用：$\mathcal B_{r,K}$ 是 Fréchet 完备空间，函数级数及任意有限阶 mixed derivatives 在所需 scale balls 上一致收敛。协向量端的分离性和 polarization 保证 faithful realization。若 $h$ 在 $K$ 邻域为零，则 $D_qF[h]=0$；沿直线积分说明 $F$ 只依赖 $q|_K$。

固定任意 $q\in\mathcal Q^\infty$，则 $F_q\in\mathcal A_r$；evaluation 连续，右侧半径只需按 $\|q\|_{\mathcal Q_{s+r}}$ 增大。反过来，每个 $q$-independent $F_0\in\mathcal A_r$ 都属于 $\mathcal B_{r,K}$。故这里既包含旧代数，又排除了 §21.3 的非法历史 dependence。

对固定方向 $h_1,\ldots,h_k\in\mathcal Q^\infty$，逐项求导给

$$\begin{align}
U_n^{D_q^kF[h_1,\ldots,h_k]} &=\frac{(n+k)!}{n!}\, U_{n+k}\bigl((0,h_1),\ldots,(0,h_k),\,\cdot\,\bigr),\\
\|D_q^kF[h_1,\ldots,h_k]\|_{s,R,r,K} &\le C_k\|F\|_{s,2R,r,K}
\prod_{a=1}^k\|h_a\|_{\mathcal Q_{s+r}}. \tag{22.2}
\end{align}$$

第一式适用于 $n\ge1$；常数项由 $k!B_k((0,h_1),\ldots,(0,h_k))$ 单独估计。证明使用 $\sqrt{(n+k)!/n!}\le(n+k)^{k/2}$，该因子被半径 $2R$ 吸收。特别地，所有历史导数仍有 smooth-density representative，且同一个 $r$ 控制任意有限阶 mixed derivative；$C_k$ 可依赖 $k$。这比标量意义的 $C^\infty$ 参数 dependence 更强。

### 22.2 柱函数完成及其准确密度层

令 $\mathscr P_K(Y)$ 为由 smooth Hamiltonian field-linear functions 和 $\int a q$（$a\in C^\infty_K$）生成的 finite cylinder polynomials，定义

$$\begin{align}
\mathcal D_{r,K}&=\overline{\mathscr P_K(Y)}^{\,\mathcal B_{r,K}}.
\end{align}$$

取 $K\subset\operatorname{int}K'\Subset I^\circ$，$\rho\in C_c^\infty(\operatorname{int}K')$ 在 $K$ 邻域等于 $1$。在一个包含 $\operatorname{supp}\rho$ 的辅助有限时间区间上取 Dirichlet spectral projection $\Pi_N$，定义

$$\begin{align}
Q_N=\rho\Pi_N\rho,\qquad L_N=(\bigoplus_iP_{i,N})\oplus Q_N,\qquad L_\infty=1\oplus\rho^2 .
\end{align}$$

Dirichlet projection 只用于逼近 compactly supported test representatives。由于 $\rho q$ 在辅助端点附近为零，谱 graph norms 与其普通 Sobolev norms 的比较无边界相容性缺口。谱 tail 和两次固定 cutoff 给

$$\begin{align}
\|Q_N-\rho^2:H^{s+1}\to H^s\| &\le C_sN^{-1},
\end{align}$$

在 density scales $H^{s+4}\to H^{s+3}$ 上同样成立；$Q_N$ 关于时间 $L^2$ 配对自伴。由 support 条件及 $B_n$ 的对称性，$F=F\circ L_\infty$，且

$$\begin{align}
U_n^{F\circ L_N} =L_N^\flat U_n^F(L_N\,\cdot,\ldots,L_N\,\cdot), \qquad L_N^\flat=(\bigoplus_iP_{i,N})\oplus Q_N .
\end{align}$$

输出 tail 和各输入 tail 逐个估计，再以半径的固定倍数吸收 cutoff norms 的 $n$ 次幂及 $n$ 个项，得到

$$\begin{align}
\|F-F\circ L_N\|_{s,R,r+1,K'} \le C_{s,r}\epsilon_N
\|F\|_{s+1,c_{s,r}R,r,K},\qquad \epsilon_N\longrightarrow0. \tag{22.3}
\end{align}$$

固定 $N$ 后截断次数即为 $\mathscr P_{K'}$ 元素。因此

$$\begin{align}
\mathcal D_{r,K}\subset\mathcal B_{r,K}
\subset\mathcal D_{r+1,K'}. \tag{22.4}
\end{align}$$

选一个包含 $\operatorname{supp}\chi'$、逐渐穷尽 $I^\circ$ 的 compact intervals $K_r\subset\operatorname{int}K_{r+1}$。连续 inclusions (22.4) 给出同一个 locally convex inductive limit：

$$\begin{align}
\boxed{\displaystyle \mathfrak B(Y;I) =\underset{r}{\operatorname{ind\,lim}}\mathcal D_{r,K_r} =\underset{r}{\operatorname{ind\,lim}}\mathcal B_{r,K_r}.} \tag{22.5}
\end{align}$$

它的元素正是上述某个 finite-loss、compact-history-support joint entire family。此处没有宣称同一 $\mathcal B_{r,K}$ 内的柱函数稠密；需要的一阶 loss 和 support enlargement 都已记录。

### 22.3 封闭操作与允许的代入

令 $\mathsf P:Z^\infty\to Y^\infty$ 是固定线性 map，满足 $\beta(U,\mathsf PV)=-\beta(V,\mathsf PU)$，并在每个固定 support stratum 有有限 loss $d$：

$$\begin{align}
\mathsf P:Z_{s+d,K}\longrightarrow Y_s .
\end{align}$$

定义

$$\begin{align}
\{F,G\}_{\mathsf P}&=\beta(U_F,\mathsf P U_G),\\
U_{\{F,G\}_{\mathsf P}} &=dU_F[\mathsf P U_G]-dU_G[\mathsf P U_F]. \tag{22.6}
\end{align}$$

第二式由 full Hessian 的 $\beta$-对称性推出，因而包括历史导数。与 §14.2 相同的 coefficient composition 给连续层间 maps

$$\begin{align}
\mathcal B_{r,K}\times\mathcal B_{r',K'} &\xrightarrow{\ \cdot\ }\mathcal B_{\max(r,r'),K\cup K'},\\
\mathcal B_{r,K}\times\mathcal B_{r',K'} &\xrightarrow{\ \{\ ,\ \}_{\mathsf P}\ } \mathcal B_{r+r'+d,K\cup K'} .
\end{align}$$

括号估计的两个输入 seminorms 可分别取输出阶 $s+r'+d$、$s+r+d$ 和半径 $4R$；常数还依赖 $\mathsf P$ 在这些阶数的 bounds。输出 density 支撑在 $K\cup K'$。常数 skew operator 上的 polynomial Jacobi/Leibniz identities 和 (22.3) 把这些操作延到 $\mathcal D$ 层。固定历史 bracket 对应 $\mathsf P_0(V,A)=(V,0)$，$d=0$；§24 的 released bracket 对应另一个 $\mathsf P$。

**允许的线性代入。** 一个 map $L:Y'^\infty\to Y^\infty$ 必须同时有 $\beta$-transpose $L^\flat:Z^\infty\to Z'^\infty$，且

$$\begin{align}
\beta(U,Ly')&=\beta'(L^\flat U,y'),\\
L:Y'_{s+a}&\longrightarrow Y_s,\qquad L^\flat:Z_{s+b,K}\longrightarrow Z'_{s,K'}
\end{align}$$

具有固定有限 $a,b$ 和受控的 compact support enlargement。则

$$\begin{align}
U_{F\circ L}(y')&=L^\flat U_F(Ly'),\\
L^*:\mathcal B_{r,K}&\longrightarrow\mathcal B'_{r+a+b,K'},& L^*:\mathcal D_{r,K}&\longrightarrow\mathcal D'_{r+a+b,K'} \tag{22.7}
\end{align}$$

连续。证明直接把 $L$ 代入每个 coefficient slot，把 $L^\flat$ 作用于输出；有限 operator constants 的次数幂由增大 $R$ 吸收。smooth fixed-vector translations 用 binomial expansion 得到同类估计，仍保留 $r,K$。有限次组合只累加有限 loss 和有限 support enlargements。

这就是下文使用的数学类别：函数对象按 (22.5) 定义，代入必须满足 (22.7)，Poisson operator 必须满足 (22.6)。不把“对所有希望进行的操作封闭”当作定义，也不允许只有逐纤维光滑性的任意坐标替换。

## 23. 物理 Families 的 Membership、输运与完整变分

### 23.1 标准历史 Lift 的双向估计

沿用 $\mathcal P_i=-E_{i,D}A_\chi$，令 $\kappa$ 为在 $\overline I$ 邻域等于 $1$ 的 compact cutoff。本文选定的历史坐标为

$$\begin{align}
\mathsf S_iq&=(1-\mathcal P_i)H_i^R(\kappa q),\\
\phi_i(z_i,q)&=\psi_{z_i}+\mathsf S_iq,\qquad \mathcal P_i\mathsf S_iq=0. \tag{23.1}
\end{align}$$

$\mathsf S_i$ 不同于作用量 $S_i[\phi_i]$。只在 $I$ 评价 (23.1)。改变 $\kappa q$ 在 $I$ 之外的延拓时，两次 retarded lifts 的差在 $I$ 是 homogeneous Dirichlet solution，故被 $1-\mathcal P_i$ 消去；所有 smooth solutions 都唯一写成 (23.1)。

下面列出证明 membership 和连续代入所需的估计。对固定 compact 时间窗，时间/空间总阶不超过 $N$ 的 field jets 满足

$$\begin{align}
\|\mathsf S_iq\|_{C^N_{t,y}} \le C_N\|q\|_{H^{N+4}(\mathbb R)}. \tag{23.2}
\end{align}$$

这里使用偏宽的整数 loss。证明从 $H_i^Rq=(y_i/\ell_i)q+ G_{i,D}^R[-(y_i/\ell_i)(\partial_t^2+m^2)q]$ 出发：能量估计控制每个时间导数的 $C_tH^1_y$ norm，$\partial_y^2\phi=(\partial_t^2+m^2)\phi$ 递推控制其余空间导数，再用一维 Sobolev embedding 和 trace。时间上一阶 embedding 也包含在额外四阶内。$\mathcal P_i$ 的时间 cutoff 与 §16 的 $E_i$ smoothing 保持这项有限 loss。这是 ordinary smooth jets 的估计，不把非零 trace 的 $\mathsf S_iq$ 放进 $D(K_{i,D}^\infty)$。

§24 的 section 还需直接使用低空间正则性的界。固定 $J\Subset I^\circ$，有

$$\begin{align}
\sup_{t\in J}\|\partial_t^j\mathsf S_iq(t)\|_{L^2_y}
&\le C_{j,J}\|q\|_{H^{j+3}(\mathbb R)}, \tag{23.2a}\\
\|\operatorname{Cau}E_i a\|_{X_s}
&\le C_s\sum_{\nu=0}^s\|\partial_t^\nu a\|_{L_t^1L_y^2}. \tag{23.2b}
\end{align}$$

在 (23.2a) 的证明中，将固定 $\kappa$ 计入 history。Duhamel 的 $K_D^{-1/2}\sin$ 核在有限时间窗上有界，给 $\partial_t^jH_i^R(\kappa q)$ 的 $C_tL_y^2$ bound，输入至多 $H^{j+2}$；normalization 项 $E_iA_\chi H_i^R(\kappa q)$ 由 (23.2b) 至多再使用一个时间导数，得到 $j+3$。式 (23.2b) 则把 $K^{s/2}$ 通过 functional calculus 移至 sine/cosine 核，作 $s$ 次时间分部积分；紧支撑消去端点项，$K\ge m^2$ 控制低 modes，位置分量的 $K^{-1/2}$ 补足 $X_s$ 的额外空间阶。这些估计只要求 source 空间上为 $L^2$。

对 compact-time smooth $L^2_y$ source $a$，定义 transpose density

$$\begin{align}
\langle\mathsf S_i^\dagger a,q\rangle &=\langle a,\mathsf S_iq\rangle,\\
\mathsf S_i^\dagger a &=\kappa\,\rho_i^A(a+A_\chi E_{i,D}a),\\
\|\mathsf S_i^\dagger a\|_{H^{s+3}} &\le C_s\sum_{j=0}^{s+5}
\|\partial_t^ja\|_{L^2_tL^2_y}. \tag{23.3}
\end{align}$$

Green identity 给 $(H_i^R)^*=\rho_i^A$；$E_i^*=-E_i$、$A_\chi^*=-A_\chi$ 给 $\mathcal P_i^*=-A_\chi E_i$，从而证明第二式，包括其正号。更具体地，§4 的时间分部积分公式将 $G^\epsilon a$ 写成 $K_D^{-1}$ 作用于 $a$ 和 $a'$ 的余弦积分。由 $K_D^{-1}:L^2\to H^2\cap H_0^1$ 及 normal trace，在固定观察窗 $J$ 上有

$$\begin{align}
\|\partial_t^k\rho_i^\epsilon a\|_{L^2(J)}
\le C_{k,J}\sum_{\nu=0}^{k+1}\|\partial_t^\nu a\|_{L_t^2L_y^2}.
\end{align}$$

先取 $k\le s+3$，再对 $A_\chi E_i a$ 使用 (23.2b) 及齐次波演化的时间导数界，输入至多 $s+5$ 阶，得到 (23.3)。此处没有给一般 $L^2$ momentum 取边界 trace。

还必须单独控制 boundary jets。令 $\gamma_{e,a}\phi=\partial_{y_i}^a\phi(t,e)$，$e$ 遍历两个端点，并以 $\gamma_{e,a}^*$ 表示这一 trace 的双线性 transpose。对 $c\in C_c^\infty(I^\circ)$，

$$\begin{align}
\|(\gamma_{e,a}\mathsf S_i)^\dagger c\|_{H^{s+3}} &\le C_{s,a}\|c\|_{H^{s+a+8}}. \tag{23.4}
\end{align}$$

证明可直接递推：偶阶 trace 为 $(\partial_t^2+m^2)^{a/2}$ 作用于 boundary value；奇阶 trace 为 $(\partial_t^2+m^2)^{(a-1)/2}$ 作用于 normal trace。retarded DtN 的 transpose 为 advanced DtN，二者由上述 lift 和 $H^2_y$ trace 具有有限时间导数界。normalization 的附加项为 $\kappa\rho_i^AA_\chi E_i\gamma_{e,a}^*c$；§16.1 的 boundary-mode estimate 再给至多 $s+a+7$ 阶输入导数，故 (23.4) 足够。特别地

$$\begin{align}
(\gamma_{\ell_i,0}\mathsf S_i)^\dagger c=c, \qquad (\gamma_{0,0}\mathsf S_i)^\dagger c=0. \tag{23.5}
\end{align}$$

第一项绝不能由 $E_{i,D}\gamma_{\ell_i,0}^*c=0$ 推断为零；后者只测试 homogeneous Dirichlet variations。

(23.3)–(23.4) 的 densities 实际支撑在 $\operatorname{hull}(\operatorname{supp}a\text{ 或 }c,\operatorname{supp}\chi')\Subset I^\circ$。 检验任意支撑在此 hull 之外的 $h$：若 $h$ 在它之后，retarded lift 在观察窗及 cutoff 窗均为零；若在它之前，lift 在整个 hull 上是 homogeneous Dirichlet solution，恰被 $\mathcal P_i$ 重现并消去。由线性分解得到所述 support。因此没有隐藏的 slab-endpoint deltas，$\kappa$ 也从最终 pairing 中消失。

### 23.2 局域多项式复合场和 Smeared Responses

先对物理 functional $\mathcal F(\phi_i)$ 作 **未固定 history 的** 变分，写成

$$\begin{align}
d\mathcal F_\phi(\delta\phi) &=\langle a_{\mathrm{bulk}}[\phi],\delta\phi\rangle+ \sum_{e,a}\langle c_{e,a}[\phi],\gamma_{e,a}\delta\phi\rangle .
\end{align}$$

时间 test compact，所以没有时间端点项；空间分部积分则保留两个端点的一切 trace terms。令 $F(z_i,q)=\mathcal F(\psi_{z_i}+\mathsf S_iq)$，则

$$\begin{align}
V_F&=E_{i,D}\left(a_{\mathrm{bulk}}+ \sum_{e,a}\gamma_{e,a}^*c_{e,a}\right),\\
A_F&=\mathsf S_i^\dagger a_{\mathrm{bulk}} +\sum_{e,a}(\gamma_{e,a}\mathsf S_i)^\dagger c_{e,a}. \tag{23.6}
\end{align}$$

这是同一 family 的两部分 gradient。对仅在 prescribed boundary value 上非零的 variation，第二行仍有 (23.5) 的直接贡献。

**Membership 定理。** 对任意固定有限 jet order $d$、有限 polynomial $P$、smooth spatial test（允许光滑至 cell endpoints）和 compact smooth time test，$\mathcal F=\int fP(j^d\phi)$ 以及相同类型的 boundary-jet polynomials 所定义的 $F$ 满足

$$\begin{align}
F\in\mathcal B_{2d+16,K}
\subset\mathcal D_{2d+17,K'}\subset\mathfrak B. \tag{23.7}
\end{align}$$

$K$ 可取 tests 与 $\chi'$ 的支撑 hull，$K\subset\operatorname{int}K'$。该界不要求最优。证明对 $P$ polarization 后逐 coefficient 使用 (23.2)–(23.6)。bulk Euler coefficient 的 field jets 至多为 $2d$ 阶；boundary coefficient $c_{e,a}$ 的阶数至多为 $2d-a$。为估计 $A_F$ 的 $H^{s+3}$ norm，(23.4) 最多需要 $s+a+8$ 个 coefficient 时间导数，故 field 的总阶数至多为 $s+2d+8$；(23.2) 再损失四阶，Sobolev 乘积/trace 的余量包含在 $2d+16$ 中。$V_F$ 的估计更弱。所有输入都以同一个 $Y_{s+2d+16}$ norm 控制，常数可依赖 $s,P,f$；次数有限，所以全部 factorial seminorms 有限。对固定 support、jet order 和 polynomial degree，test-to-family map 连续。柱函数完成的归属由 (22.3) 得出，而非由形式变分推断。

同样，smooth-time $L^2$ 的原始线性 field smearing 有 $U_1=(E_if,\mathsf S_i^\dagger f)$，所以属于 $\mathcal B_{0,K}$。作用量给出的 smeared normal response

$$\begin{align}
\mathcal R_\eta(z_i,q) &=-\langle\eta,\gamma_{\ell_i,1} (\psi_{z_i}+\mathsf S_iq)\rangle,\\
U_1^{\mathcal R_\eta} &=\left(-E_i\gamma_{\ell_i,1}^*\eta,\ -(\gamma_{\ell_i,1}\mathsf S_i)^\dagger\eta\right)
\end{align}$$

也在 $\mathcal B_{0,K}$。它本身是 smooth-density linear core 的元素，故属于 $\mathcal D_{0,K}$。固定 normalized $z$ 的历史导数为 $-(\gamma_{\ell_i,1}\mathsf S_i)^\dagger\eta$；沿 causal transport 再加入 homogeneous-coordinate shift 后，才得到 §5 的 smeared DtN increment，见下文。这里 $n=1$ 无输入 slots，因此高阶 test seminorms 不等于 observable 的 loss $r$。纯历史函数 $\int\eta(t)q(t)^n dt$ 亦满足定义，例如 $r=4$ 足够；其 density 为 $n\eta q^{n-1}$。

### 23.3 能量与释放时不可省略的项

对于 $H_i[\eta]$，full variation 是

$$\begin{align}
a_i&=-\partial_t(\eta\dot\phi_i) +\eta(-\partial_{y_i}^2+m^2)\phi_i =-\eta'\dot\phi_i+2\eta(-\partial_{y_i}^2+m^2)\phi_i,\\
dH_i[\eta](\delta\phi_i) &=\langle a_i,\delta\phi_i\rangle -\langle\eta\Pi_i,\delta q_i\rangle,\\
V_{H_i[\eta]}&=E_i a_i,\qquad A_{H_i[\eta]}=\mathsf S_i^\dagger a_i-\eta\Pi_i. \tag{23.8}
\end{align}$$

第一行最后一步使用 source-free wave equation；$\Pi_i=-\phi_i'(\ell_i)$。$H_i[\eta]$ 是 (23.7) 中 $d=1$ 的 quadratic family；固定 $q$ 的 sharper membership 仍为 §16.2 的 $\mathcal A_1$。独立 connected 总能量 $H_{\mathrm{en}}\in\mathcal A_1$ 无需改成更弱的层数结论。

设释放后 $q=q(z)$、$z_i=z_i(z)$。实际求导必须写为

$$\begin{align}
\delta\bigl(F(z_i(z),q(z))\bigr) &=-\sum_i\Omega_i(V_{F,i},\delta z_i) +\langle A_F,\delta q\rangle,\\
\delta\phi_i&=\psi_{\delta z_i}+\mathsf S_i\delta q. \tag{23.9}
\end{align}$$

这正是 $\left.\delta_\phi F_q\right|_q+D_qF_q[\delta q]$ 在 (23.1) 坐标中的完整 chain rule。(23.8) 中 $-\eta\Pi_i\delta q$ 是其边界部分。共同 history 的自由变分先给 $\Pi_1+\Pi_2=0$，再使两份能量的 boundary terms 相消；$\mathsf S_i^\dagger a_i$ 的贡献仍保留在 (23.9) 中。取 $\int\eta=1$ 后释放 $H_1[\eta]+H_2[\eta]$ 得到整体 $H_{\mathrm{en}}$ 及其 Hamiltonian vector，而非把两份固定-history 向量直接相加。

### 23.4 历史输运与坐标选择的准确范围

固定的 smooth causal history increment 给 §17.2 的 fixed-vector translation，因此保持 $\mathfrak B$，在每个固定层连续。若还要求 observable 对 **可变的 increment** 也属于同一 family 类，必须检验 (22.7)，不能仅逐 increment 使用上一句话。

具体取一个 compact control window，$\sigma\in C_c^\infty(I^\circ)$，让 increment 为 $\sigma h$。在 normalized coordinates 下 retarded/advanced solution transport 为

$$\begin{align}
(z,q,h)&\longmapsto
(z+\mathsf C^\epsilon h,\ q+\sigma h),\\
\mathsf C^\epsilon&=\mathcal P_iH_i^\epsilon\sigma .
\end{align}$$

将 $h$ 作为额外的 $\mathcal Q$ block。其 field/history transpose 的非平凡部分是

$$\begin{align}
-\Omega_i(v,\mathsf C^Rh) &=\langle-\sigma\rho_i^AA_\chi v,h\rangle,\\
-\Omega_i(v,\mathsf C^Ah) &=\langle-\sigma\rho_i^RA_\chi v,h\rangle. \tag{23.10}
\end{align}$$

同一组 Green/trace estimates 给 $\mathsf C^\epsilon:H^{s+4}\to X_{i,s}$ 和上述 transpose $X_{i,s+8}\to H^{s+3}_{\operatorname{supp}\sigma}$。 所以这是 (22.7) 的实际 map，joint increment pullback 至多增加 $12$ 阶 loss，所有历史导数仍在 $\mathfrak B$ 中。若 causal transport 使用更早或更晚的可变 controls，先把这些 control windows 包含在一个较大的有限 slab；只给定 $q|_I$ 不能决定依赖 $I$ 之外数据的 transport。

特别地，对 response family，$\mathsf C^Rh+\mathsf S_i(\sigma h)=H_i^R(\sigma h)$ 给

$$\begin{align}
-\Omega_i(V_{\mathcal R_\eta},\mathsf C^Rh) +\langle A_{\mathcal R_\eta},\sigma h\rangle =-\langle\eta,D_i^R(\sigma h)\rangle .
\end{align}$$

所以 causal DtN increment 与 fixed-$z$ 的 history derivative 不可混同；两者的差正是 full chain rule 中的 homogeneous-coordinate 项。advanced 版本相同。

物理时间平移同时移动 $I,\chi,q$ 时，(23.1) 的变换为 homogeneous wave evolution 加历史平移，均有 loss-zero bounds。若固定 cutoff 而在共有 slab 比较，则另加两个 normalized lifts 的差；(23.2)–(23.4) 给其有限-loss transpose。因此上述 family 类也保持 physical time translation。

**必要的限制。** 固定历史下任意 smooth origin shift 的独立性仍成立；对 joint families，只允许同时满足 (22.7) 的 history-dependent origins。反例是 $z\mapsto z+u_0q(t_*)$：它是 smooth parameter map，却把一个合法 field-linear function 变成含 $q(t_*)$ 的 family，其 history density 为 delta。故“任意 smooth history-dependent origin 都保持统一 family 类”是 false。本文的 normalized lifts、cutoff 变换及上述 causal transports 已逐项满足所需的双向估计。

## 24. 完整 Family 类的 Cutting、释放与整体同构

### 24.1 先构造 Joint Regional Families，再从响应释放

对多个独立区域，先在 direct-sum $Y$ 上使用 §22 的 **同一 mixed-coefficient completion**。其 cylinder core 是各区域 field/history cylinder cores 的 algebraic tensor product；完成使用 joint norms，而非先完成各因子后宣称一个 projective tensor identity。§25.4 证明两者确实不同。这一步只使用区域数据。

两个待粘合端口先取各自的 $q_1,q_2$，再代入 $q_1=q_2=q$。history diagonal 的 transpose 是 densities 相加，故 (22.7) 给一个 loss-zero map，输出是共同历史空间 $Y=(X_1\oplus X_2)\oplus\mathcal Q$ 上的 $\mathfrak B_{\mathrm{com}}$。 它 onto 整个共同-history 类：把任意 $F(z_1,z_2,q)$ 延拓为 $F(z_1,z_2,q_1)$，便得到同样具有 loss-zero transpose 的连续 section；忽略 $q_2$ 不损失任何共同-history family。 作用量在共同 $\delta q$ 下的变分给 $\Pi_1+\Pi_2=0$；§6 的 retarded/advanced response problem 与正闭 quadratic form 随后给 $E_{\mathrm{sew}}$、$K_{\mathrm{sew}}$。下列 maps 只使用这些已由区域数据构造的算子。

定义实际 cut map（历史用一个 compact extension 表示）

$$\begin{align}
\mathsf R:X_{\mathrm{sew}}^\infty&\longrightarrow Y^\infty,\\
\mathsf Rz&=(\mathsf T_1z,\mathsf T_2z,\kappa\gamma\phi_z),\\
\mathsf R^\flat(V_1,V_2,A) &=\mathsf T_1^\sharp V_1+\mathsf T_2^\sharp V_2+ E_{\mathrm{sew}}\gamma^*A . \tag{24.1}
\end{align}$$

其中 $\gamma$ 是共同 cut value，$\kappa=1$ 于 $I$；densities 支撑在 $I^\circ$，所以最后一项不含任意延拓。trace estimate
$\|\kappa\gamma\phi_z\|_{H^s}\le C_s\|z\|_{X_{{\mathrm{sew}},s}}$
和 §18.2 的 $\mathsf T_i,\mathsf T_i^\sharp$ bounds 给

$$\begin{align}
\mathsf R:X_{{\mathrm{sew}},s}&\longrightarrow Y_s,\\
\mathsf R^\flat:Z_{s,K}&\longrightarrow X_{{\mathrm{sew}},s}.
\end{align}$$

第二式的 boundary term 使用
$\|E_{\mathrm{sew}}\gamma^*A\|_{X_s}\le C_{s,K}\|A\|_{H^{s+3}}$，
即 §16.1 的 $a=0$ mode estimate。对任何 smooth $z$，

$$\begin{align}
\beta(U,\mathsf Rz)=-\Omega_{\mathrm{sew}}(\mathsf R^\flat U,z).
\end{align}$$

故释放 observable 的 map 连续保持相应层：

$$\begin{align}
\mathsf R^*F&=F\circ\mathsf R,\\
\mathsf R^*:\mathcal B_{r,K}&\to\mathcal A_r(K_{\mathrm{sew}}),& \mathsf R^*:\mathcal D_{r,K}&\to\mathcal C_r(K_{\mathrm{sew}}),\\
\boxed{\displaystyle X_{\mathsf R^*F}(z)= \sum_i\mathsf T_i^\sharp V_{F,i}(\mathsf Rz) +E_{\mathrm{sew}}\gamma^*A_F(\mathsf Rz).} \tag{24.2}
\end{align}$$

这是 (23.9) 在 smooth Hamiltonian vectors 中的实现。本自由模型的 $q(z)=\kappa\gamma\phi_z$ 与 $\mathsf R$ 均为线性，因而没有遗漏非零的 $D^2q$ 项。历史方向全部导数由 (22.2)、(22.7) 控制；不会在完成或再次求导时产生未受控项。§21.3 的反例恰因 $A_F$ 不是 smooth time density 而不能使用 (24.2)。

**哪些 families 能粘合：** 每个 $\mathfrak B_{\mathrm{com}}$ 元素都能经 (24.2) 释放；不同的 off-matching representatives 若在实际 cut data 上相等，给同一个 observable。仅有逐历史 $\mathfrak A[q]$ membership 的任意 family 则没有这个结论。

### 24.2 新 Poisson Bracket 及 Closed Ideal

在共同-history family 空间定义由响应决定的常 operator

$$\begin{align}
\mathsf P_{\mathrm{sew}}&=\mathsf R\mathsf R^\flat,\\
\{F,G\}_{\mathrm{sew}} &=\beta(U_F,\mathsf P_{\mathrm{sew}}U_G) =-\Omega_{\mathrm{sew}}(\mathsf R^\flat U_F,\mathsf R^\flat U_G).
\end{align}$$

$\mathsf P_{\mathrm{sew}}$ 是 $\beta$-skew、loss-zero map，因此 §22.3 证明此 bracket 对整个 $\mathfrak B_{\mathrm{com}}$ 封闭，并有

$$\begin{align}
\mathsf R^*\{F,G\}_{\mathrm{sew}} &=\{\mathsf R^*F,\mathsf R^*G\}_{K_{\mathrm{sew}}}. \tag{24.3}
\end{align}$$

它包括历史 blocks、same-side correction 和 cross blocks，一般不等于 $\mathsf P_0$。这一步更换的是由作用量响应指定的 Poisson operator；没有对 bare fixed-history bracket 作 tensor/quotient fusion。

令

$$\begin{align}
\mathcal I_{\mathrm{match}} =\ker\mathsf R^* =\{F:F(\mathsf Rz)=0\text{ for all }z\in X_{\mathrm{sew}}^\infty\}.
\end{align}$$

它是 closed multiplication ideal，也是新 bracket 的 Poisson ideal：若 $\mathsf R^*F=0$，则 (24.2) 的向量在每个 $\mathsf Rz$ 为零，(24.3) 随即给 $\mathsf R^*\{F,G\}_{\mathrm{sew}}=0$。此论证使用 actual derivatives；没有把“函数在约束面为零”直接当作旧 bracket 的 Poisson-ideal 判据。

### 24.3 连续右逆：覆盖整个选定类

不能用 cylinder density 代替 surjectivity。定义一个 extension 用的线性 map

$$\begin{align}
\mathsf C_i(z_i,q)&=\psi_{z_i}+\mathsf S_iq,\\
\mathsf B:Y^\infty&\longrightarrow X_{\mathrm{sew}}^\infty,\\
\mathsf By&=-E_{\mathrm{sew}}A_\chi (\mathsf C_1y,\mathsf C_2y). \tag{24.4}
\end{align}$$

括号中的有序对直接属于 $C^\infty(I;H^{\mathrm{dup}})$，$H^{\mathrm{dup}}=H_1\oplus H_2$；$A_\chi$ 使它成为 $E_{\mathrm{sew}}$ 的合法 compact-time $L^2$ probe。不使用 §7 的 $\operatorname{Ass}:H^{\mathrm{dup}}\to H_M$，也不要求任意输入 $y$ 已匹配。对真正的 cut data，$\mathsf C_i(\mathsf Rz)=R_i\phi_z$，所以 cutoff identity 给

$$\begin{align}
\mathsf B\mathsf R=1_{X_{\mathrm{sew}}^\infty}. \tag{24.5}
\end{align}$$

$\mathsf B$ 的用途是把任意 sewn observable 延拓成 regional family；对不匹配的输入，不把 $\mathsf By$ 称为其物理 sewing solution。

其 transpose 可直接计算。对 homogeneous $v\in X_{\mathrm{sew}}^\infty$，令 $a_i=-R_iA_\chi v$，则

$$\begin{align}
\mathsf B^\flat v &=\left(\mathsf T_1v,\mathsf T_2v,\ \sum_i\mathsf S_i^\dagger a_i\right),\\
-\Omega_{\mathrm{sew}}(v,\mathsf By) &=\beta(\mathsf B^\flat v,y). \tag{24.6}
\end{align}$$

证明使用 $-\Omega(v,-EA_\chi f)=\langle A_\chi f,v\rangle
=-\langle f,A_\chi v\rangle$，
再将每个 $\mathsf C_i$ 展开；这也固定了 density 前的负号。(23.2a) 控制 $A_\chi\mathsf S_iq$ 的至多 $s$ 阶时间导数，只要求 $q\in H^{s+4}$，然后用 (23.2b)。反向由 (23.3)，$a_i=-R_iA_\chi v$ 至多要求 $v$ 的 $s+6$ 阶时间导数的 $L^2$ 界；$X_{s+8}$ 是足够的统一上界。因此得到

$$\begin{align}
\mathsf B:Y_{s+4}&\longrightarrow X_{{\mathrm{sew}},s},\\
\mathsf B^\flat:X_{{\mathrm{sew}},s+8}&\longrightarrow Z_{s,K_\chi},\qquad K_\chi=\operatorname{hull}(\operatorname{supp}\chi') \Subset I^\circ .
\end{align}$$

于是

$$\begin{align}
\mathsf B^*:\mathcal A_r(K_{\mathrm{sew}})&\longrightarrow \mathcal B_{r+12,K_\chi},\\
\mathsf B^*:\mathcal C_r(K_{\mathrm{sew}})&\longrightarrow \mathcal D_{r+12,K_\chi},\\
\mathsf R^*\mathsf B^*&=1_{\mathfrak A(K_{\mathrm{sew}})}. \tag{24.7}
\end{align}$$

第二式因为 $\mathsf B^\flat$ 把每个 smooth field-linear label 送到一个 smooth-density family-linear label 而成立。右逆在整个 inductive limit 上连续；并非只在 polynomial core 上定义。

(24.5) 的 transpose 还给 $\mathsf R^\flat\mathsf B^\flat=1$， 所以 $\mathsf B^*$ 也保持新 bracket。连续 splitting 因而证明

$$\begin{align}
\boxed{\displaystyle
(\mathfrak B_{\mathrm{com}}/\mathcal I_{\mathrm{match}}, \{\ ,\ \}_{\mathrm{sew}})
\ \cong\
(\mathfrak A(K_{\mathrm{sew}}),\{\ ,\ \}_{K_{\mathrm{sew}}}).} \tag{24.8}
\end{align}$$

这里是 quotient topology 下的连续线性同构，保持乘法、$*$ 和 Poisson bracket；运算的拓扑级别由 §25 精确说明。特别地，(24.8) 覆盖 **全部** 所选 finite-loss entire functions。右逆可能增加 loss，故不宣称每个固定 family layer 的 quotient 都 onto 同编号 $\mathcal C_r$。

最后与 §19.2 独立构造的 $\alpha:\mathfrak A(K_{\mathrm{sew}})\to\mathfrak A(K_M)$ 复合。$\alpha$ 及逆逐个保持 $s,R,r$ seminorm，因此 (24.8) 给真正的 $\mathfrak B_{\mathrm{com}}/\mathcal I_{\mathrm{match}}\cong\mathfrak A(K_M)$， 而非“从 global algebra restriction 定义 regional algebra”。$\mathsf B$ 和 $\mathsf R$ 的公式在引入 $K_M$ 之前已经成立。

不同 smooth cutoffs 给 (23.4)、(22.7) 控制的坐标变化，因而给同一 joint family 类的连续同构。$\mathsf B^*$ 的 off-matching extension 可以不同；在 quotient 中其 image 都等于同一个实际 sewn observable。最终 field map 和此重建同构不依赖 auxiliary cutoff。

### 24.4 部分释放、Locality 与有限次组合

若一个 cluster 尚有 external prescribed histories，仍用其 homogeneous endpoint-Dirichlet $X_{\mathrm{cl}}$ 和剩余 $\mathcal Q_{\mathrm{ext}}$ 定义同一个 $\mathfrak B$ 类。需要的唯一新增 trace estimate 是内部点的 $\gamma\mathsf S_{\mathrm{cl}}$ 及 transpose，它也有固定有限 loss。具体把
$H^Rq=lq+G^R[-l(\partial_t^2+m^2)q]$
代入内部 point trace；transpose 的非局部部分为 $-(\partial_t^2+m^2)\langle l,G^A\gamma^*c\rangle_x$。 内部 $\delta$ 属于 $H^{-1}$，$K_D^{-1}\delta\in H_0^1$，故 §4 的时间分部积分给所需 smooth-time energy bounds。再加 normalization 项 $\rho^AA_\chi E\gamma^*c$，得到与 (23.4) 的 $a=0$ 同样足够的 $H^{s+8}\to H^{s+3}$ bound。support 仍由观察窗和 $\chi'$ 的 hull 控制。

因此一次部分 cut map $\mathsf R_a:Y_{\mathrm{cl}}\to Y_{\mathrm{children}}$ 可由以下实际 operations 组成：重建 $\psi_z+\mathsf S_{\mathrm{cl}}q_{\mathrm{ext}}$，限制到各 child，应用 $\mathcal P_i$，记录 internal traces，并保留 external histories。每个 operation 及其 transpose 已有上述固定有限-loss estimates。 反向 extension $\mathsf B_a$ 保留 $q_{\mathrm{ext}}$，从组装的 child fields 减去 $\mathsf S_{\mathrm{cl}}q_{\mathrm{ext}}$，再作用 $-E_{\mathrm{cl}}A_\chi$。同一 cutoff identity 给

$$\begin{align}
\mathsf B_a\mathsf R_a=1_{Y_{\mathrm{cl}}}.
\end{align}$$

于是 (22.7) 和 (24.5)–(24.8) 的证明再次适用：部分释放后的 observable 是同一声明类别中的 **整个** cluster family，而非只在固定剩余历史下合法。其 bracket 使用 $\mathsf R_a\mathsf P_{0,{\mathrm{cl}}}\mathsf R_a^\flat$； remaining histories 仍为 prescribed parameters。部分释放的 operator 可以有有限 loss $d_a$，括号相应落在 $r+r'+d_a$ 层。不得把本段的有限-loss statement 加强为所有 maps 均 loss-zero。

有限次组合时 cut maps 复合，transposes 逆序复合，mixed derivatives 按 (22.7) 完整传递。区域作用量的共同-history 变分和全套 response 消元给同一个最终 transmission problem；其因果唯一性使各顺序得到相同 $E_{\mathrm{sew}}$。因此组合后仍属于同一个 $\mathfrak B/\mathfrak A$ 类，并得到与 source flattening 一致的 associativity。各次 loss 和 support enlargement 只累加有限次；不声称无限 cut refinement 的 uniform bounds。

Support/locality 仍按原始 bulk/boundary representatives 指定。局域 polynomial density 的 cutting 是逐 cell 积分及完整 boundary variation；(23.7)、(24.2) 和层间连续性把它延到指定的 local closures。对 causally disjoint supports，新的 $E_{\mathrm{sew}}$ 给零括号。任意 $\mathfrak B$ 元素可以非局域，不能仅因其叫作 regional family 就给它一个额外的最小局域支撑。

**Local-net 同构的准确量词。** 先在 sewn quotient 中取物理支撑在 $O$ 的 raw linear/local-polynomial representatives 生成的 Poisson core $\mathscr P_{\mathrm{loc,sew}}(O)$，再定义

$$\begin{align}
\mathfrak A_{\mathrm{sew}}(O)
=\bigcup_r\overline{\mathscr P_{\mathrm{loc,sew}}(O)\cap\mathcal C_r}^{\,\mathcal C_r}.
\end{align}$$

这里的 smooth tests 可直接在 regional 几何中定义：在人工 cut 处，按 $\partial_x=\partial_{y_1}=-\partial_{y_2}$ 匹配全部 test jets；独立的 uncut 侧使用普通 smooth tests。光滑 patching 给这些 cores 的双向对应，§19.2 的逐层等距给 closures 的双向对应。这证明指定 net 的同构，不以 global algebra 定义区域对象。

若另取一个独立定义的严格局域 family 子代数 $\mathfrak B_{\mathrm{strict}}(O)$，则 $\mathfrak B_{\mathrm{strict}}(O)/(\mathcal I_{\mathrm{match}}\cap\mathfrak B_{\mathrm{strict}}(O))\cong\mathfrak A_M(O)$ **尚未由本文证明**。$\mathsf B^*$ 会把历史支撑扩大到与 $\operatorname{supp}\chi'$ 的 hull，因而 (24.7) 不是每个 $O$ 上保持原支撑的右逆。全类 exact onto 与商后 local-net 同构不能代替这个额外的局域提升定理。

## 25. 整个 Inductive Limit 的拓扑：完备性成立，联合连续性失败

### 25.1 完备性需要额外的 Interpolation 证明

**定理。** 使用 §§15、22 的 locally convex inductive-limit topology，$\mathfrak A$ 和 $\mathfrak B$ 均为 Hausdorff、compactly regular、complete LF spaces。这个结论不由“各层 Fréchet 完备”自动得到。

先证明 $\mathfrak A=\operatorname{ind}_r\mathcal A_r$。函数 evaluations 连续且分离元素，所以 inductive limit Hausdorff。固定 $r$，取任意 $k\ge r+2$，记 $d=k-r$。Hilbert-scale multilinear interpolation 给，对 $F\in\mathcal A_r$，

$$\begin{align}
\boxed{\displaystyle
\|F\|_{s,R,r+1} \le
\|F\|_{0,1,r}^{\,1-1/d}
\|F\|_{ds,R^d,k}^{\,1/d}.} \tag{25.1}
\end{align}$$

这里低阶 seminorm 固定为 $(0,1,r)$，不随目标 $(s,R)$ 变化，这是证明整个 inductive limit 所需的一点。具体地，对每个 $T_n$ 在

$$\begin{align}
(X_r)^{n-1}\to X_0,\qquad (X_{dj+k})^{n-1}\to X_{dj}
\end{align}$$

两条 bounds 之间取 interpolation parameter $1/d$，得到 $(X_{j+r+1})^{n-1}\to X_j$ 的 operator norm 不超过两端 norms 的相应幂乘积。可先对输入和输出作 spectral cutoffs，把共同 scale generator 的复幂放入每个 input slot 及 output test，用 three-lines inequality；虚部的幂为 unitary，所以没有随 $n$ 增长的 interpolation constant。再移去 cutoffs，取 $0\le j\le s$ 的最大值。最后对带权系数和用 Hölder：

$$\begin{align}
\sqrt{n!}R^n &=(\sqrt{n!})^{1-1/d} (\sqrt{n!}(R^d)^n)^{1/d}.
\end{align}$$

常数项单独作为同一正数序列的一项，得到 (25.1)。这给出的是本文 operator coefficients 的估计，不是假定 operator-space completion 与 interpolation 自动交换。

等价地，对每个 $\varepsilon>0$，

$$\begin{align}
\|F\|_{s,R,r+1} &\le\varepsilon\|F\|_{0,1,r} +\frac1d\left(\frac{d-1}{d\varepsilon}\right)^{d-1}
\|F\|_{ds,R^d,k}. \tag{25.2}
\end{align}$$

在 $\mathcal A_r$ 的固定 absolutely convex neighborhood
$U_r=\{\|F\|_{0,1,r}<1\}$ 上，(25.1) 对差分使用上界 $2$，说明 $\mathcal A_{r+1}$ 与任何 $\mathcal A_k$（$k>r+1$）诱导相同 topology。这正是 LF spectrum 的 condition (Q)。Wengenroth 的 (Q) 定理给 compact regularity，随后其 completeness corollary 给完整的完备性结论；所需的一般定理为 [Wengenroth, Theorem 2.7 与 Corollary 2.8](https://www.impan.pl/en/publishing-house/journals-and-series/studia-mathematica/all/120/3/109473/acyclic-inductive-spectra-of-frechet-spaces)，其 (Q) 条件和应用方式也明确列在 [Kunzinger–Ortner, Definition 2.1 与 Proposition 2.2](https://doi.org/10.1002/mana.70013)。本文的工作是验证 (25.1)，而非从那里的特定 sequence-space 结论类推。

对 $\mathfrak B=\operatorname{ind}_r\mathcal B_{r,K_r}$ 完全相同。$Y_s$ 是 spatial $W$ 与 temporal $(1-\partial_t^2)^{1/2}$ 的 direct-sum Hilbert scale；$Z_s$ 只将 history 基础 norm 改为 $H^3$，仍为同一类 exact scale。在无 support 限制的 Hilbert scale 内进行上述 interpolation，输出原本支撑于 $K_r$ 这一闭条件在极限中保留。因此

$$\begin{align}
\|F\|_{s,R,r+1,K_{r+1}} \le
\|F\|_{0,1,r,K_r}^{\,1-1/d}
\|F\|_{ds,R^d,k,K_k}^{\,1/d}, \qquad F\in\mathcal B_{r,K_r}. \tag{25.3}
\end{align}$$

低层元素在扩大 support strata 中的 norms 使用同一全直线 Sobolev norm，故无额外 support-dependent interpolation 因子。(25.3) 再次验证 (Q)，给 $\mathfrak B$ 的完备性。由 §§15、22 的交错连续 inclusions，改用 $\mathcal C_r,\mathcal D_{r,K_r}$ 的 completed layers 不改变这两个 inductive-limit topologies。

### 25.2 Poisson 括号不在整个并集上联合连续

**反例。** 在单个 interval 取 canonical modes $(Q_n,P_n)$，$w_n=(1+\lambda_n)^{1/2}\asymp n$。degree-one Hamiltonian coefficient extraction
$F\mapsto T_1^F\in X^\infty$
在每个 $\mathcal A_r$、从而在 $\mathfrak A$ 上连续；反向的 smooth linear-function inclusion 也连续。故
$p_{\mathrm{lin}}(F)=\|T_1^F\|_0$
是整个并集上的 continuous seminorm。

任取输入的两个 $0$-neighborhoods $U,V$。$U$ 在线性函数上的限制包含某个 $\|T_1\|_S<2\epsilon$ 的 ball，$S$ 为有限整数、$\epsilon>0$。置

$$\begin{align}
F_n&=\epsilon w_n^{-S}Q_n\in U,\\
G_n&=\frac{w_n^S}{2\epsilon}P_n^2,\qquad \{F_n,G_n\}=P_n .
\end{align}$$

$G_n$ 的 quadratic Hamiltonian coefficient 是 $(u,v)\mapsto(w_n^Sv_n e_n/(2\epsilon),0)$。 因此在每个输出阶 $s$，

$$\begin{align}
P_{s,S+2}(T_2^{G_n})=\frac{1}{2\epsilon w_n}\longrightarrow0.
\end{align}$$

它们是 cylinder polynomials，所以 $G_n\to0$ 在固定完成层 $\mathcal C_{S+2}$ 中成立，最终落入 $V$。但
$p_{\mathrm{lin}}(\{F_n,G_n\})=\|X_{P_n}\|_0=w_n$。
任意 $U,V$ 都不能映入固定的 output neighborhood $\{p_{\mathrm{lin}}<1\}$，故联合连续性 **false**。

这里没有声称 $F_n\to0$ 于 $X^\infty$；证明使用的是 neighborhoods，不能误写成“两列都趋零”的 sequence counterexample。固定每个输入后，§14.2 给另一输入的连续线性 map，再由 inductive-limit universal property 得到整个空间上的 **分别连续性**。

### 25.3 乘法的联合连续性也失败

乘法的反例需要同时观察不同频率，不能从上一段的 bracket 反例直接推断。对 $n\ge2$ 定义 degree-three coefficient

$$\begin{align}
c_n(F)&=\partial_{Q_{n^3}}\partial_{P_n}^2F(0).
\end{align}$$

它只取出 $T_3^F$ 的一个输出 momentum component、两个输入 momentum slots。对任意 $F\in\mathcal A_r$，

$$\begin{align}
|c_n(F)| &\le6P_{s,r}(T_3^F) w_n^{2(s+r)}w_{n^3}^{-s} \le C_{s,r}P_{s,r}(T_3^F)n^{2r-s}.
\end{align}$$

在每个固定 $r$ 取 $s\ge2r$，说明
$p_3(F)=\sup_{n\ge2}|c_n(F)|$
是有限且连续的 seminorm；其限制在每层连续，故在 $\mathfrak A$ 上连续。取任意 $U,V$，如上从 $U$ 的 linear subspace 找到 $S,\epsilon$。令

$$\begin{align}
F_n&=\epsilon w_{n^3}^{-S}Q_{n^3}\in U,\\
G_n&=\epsilon^{-1}w_{n^3}^{S}P_n^2 .
\end{align}$$

此时 $G_n\to0$ 在 $\mathcal C_{3S+3}$ 中成立，因为

$$\begin{align}
P_{s,3S+3}(T_2^{G_n}) &=\epsilon^{-1}w_{n^3}^{S}w_n^{-3S-2} =O(n^{-2})
\end{align}$$

与输出阶 $s$ 无关；而 $c_n(F_nG_n)=2$。故没有 $U,V$ 能映入 $\{p_3<1\}$，乘法在 ordinary product topology 下的联合连续性也是 **false**。把 $F_n$ 放在第一独立系统、$G_n$ 放在第二独立系统，同一个 coefficient test 证明 external multiplication
$\mathfrak A_1\times\mathfrak A_2\to\mathfrak A_{1\sqcup2}$
也不联合连续。

这些反例亦适用于 $\mathfrak B$ 的乘法和 vertical bracket：取 $q$-independent families，再用 $q=0$ evaluation。对 released bracket，使用 (24.7) 的连续 Poisson section 与 quotient 得到同样的障碍。因而“逐层联合连续，所以整个并集联合连续”在本模型内已有明确反例，并非只是缺少一个技术引理。

### 25.4 真正独立系统的 Completed Tensor Identity

§3.3 的小 regular algebra tensor theorem 保留成立；它的函数类别较小。对含能量的扩大类别，canonical projective tensor identity 则失败，且这与拆除人工墙无关。

先固定两个 loss 层。独立系统的外积有连续 map

$$\begin{align}
\mathcal C_r(K_1)\widehat\otimes_\pi\mathcal C_{r'}(K_2) \longrightarrow\mathcal C_{\max(r,r')}(K_1\oplus K_2), \tag{25.4}
\end{align}$$

因为两个 factors 到 joint coefficient space 的 pullbacks 为 loss-zero，再使用层间乘法估计，且目标层完备。但是 (25.4) 一般不 onto。

**反例：** 取两份等长独立 intervals，考虑

$$\begin{align}
C(z_1,z_2)&=\sum_{n\ge1}Q_{1n}Q_{2n},\\
T_2^C(z_1,z_2)&=\tfrac12(0,-u_2,0,-u_1).
\end{align}$$

截断 $C_N=\sum_{n\le N}Q_{1n}Q_{2n}$ 满足

$$\begin{align}
P_{s,0}(T_2^{C-C_N})=\frac1{2w_{N+1}}\longrightarrow0,
\end{align}$$

所以 $C\in\mathcal C_0(K_1\oplus K_2)$。若它属于任意 (25.4) 的 image，对两个 factors 分别取 continuous degree-one projection，任何 preimage 都会给出一个
$X_1^\infty\widehat\otimes_\pi X_2^\infty$
元素，其 function coefficient 必须为 $\partial_{Q_{1n}}\partial_{Q_{2m}}C=\delta_{nm}$。 但任意这种 smooth-vector projective tensor 的 coefficient $a_{nm}$ 都满足
$|a_{nm}|\le C_s w_n^{-s}w_m^{-s}$，
因为两端 coordinate evaluations 分别以该因子受 $X_s$ norm 控制。对角常数 $a_{nn}=1$ 违反此界。故 $C$ 不在任何固定层 (25.4) 的 image。

在整个 LF 并集上，§25.3 进一步证明 canonical external multiplication 本身不联合连续，所以不能由 projective tensor universal property 得到一个连续的全空间 tensor identity。这里否定的是保持原有 factor inclusions 和 Taylor grading 的 **canonical** identity，没有讨论无关的抽象向量空间同构。

因此独立系统应按 joint coefficient rule 完成 algebraic cylinder tensor core；这个完成包含上述跨系统配对 $C$。若坚持 (25.4) 的 projective completion，则必须限制 joint 函数类，至少排除这个 $C$，不能同时宣称等于本文全部 finite-loss class。没有必要为经典墙释放假设一个已被反例否定的独立 tensor identity。

### 25.5 当前重建必需的拓扑结论

本文保留 **complete LF underlying spaces、明确的 completed layers，以及分别连续且具有层间联合 bounds 的 Poisson operations**。这是一个确定的分层函数类别，不将其称为具有联合连续运算的通常 locally convex Poisson algebra。

| 性质 | 当前结论 | 在经典重建中的作用 |
|---|---|---|
| 每层实际函数完成、额外一阶 loss 下的 core density | Proved，§§21–22 | 延拓原始 observables 与层间 operations 所必需。 |
| 历史 mixed derivatives、density transpose、有限 loss pullback | Proved，§§22–24 | 释放后的 full variation、部分组合及 membership 所必需。 |
| 连续 split quotient、全部 $\mathfrak A$ 的 global inverse | Proved，§24 | 证明整个选定函数类别的重建所必需。 |
| 整个 LF 空间完备性 | Proved，§25.1；需 (Q) 的额外证明 | 比逐层重建更强；不能倒过来替代层估计。 |
| 乘法/括号在整个并集上联合连续 | False，§§25.2–25.3 | 非本重建的前提；保留层间估计及分别连续性。 |
| 扩大类的独立 completed projective tensor identity | False，§25.4 | 非人工墙释放的前提；使用 joint coefficient completion。 |

特别地，一个正 loss 层本身一般不被 bracket 保持（$r,r'\mapsto r+r'$），而只取 loss-zero 层会排除 $H$。本轮不为恢复联合连续性任意加强 topology，亦不在没有新证明时把改换 tensor topology 宣称为 factorization theorem。

## 26. 本轮结论、验证及剩余边界

本节替代此前对扩大类“完备性/联合连续性/tensor identity 均未定”的笼统表述；§11 的小 regular algebra ledger 保持其原有范围。

| 分类 | 结论 | 证据与范围 |
|---|---|---|
| 已证明 | $\mathcal A_r,\mathcal B_{r,K}$ 是实际函数的 Fréchet 完备系数类；$\mathcal C_r,\mathcal D_{r,K}$ 是指定 core 的完成 | §§21.1、22.1；不是只对单个 coefficient 取极限。 |
| 已证明 | 额外一阶 loss 下的 cylinder density；family 还允许 compact support enlargement | §§21.1、22.2，不能去掉额外层。 |
| 已证明 | 统一 mixed history derivatives、finite-loss bounds、smooth history densities，以及乘法/Poisson closure | §§22.1–22.3；选定的 joint entire 类。 |
| 已证明 | 时间涂抹的有限阶 polynomial bulk/boundary composites、适当能量和 smeared response families 的 membership | §23；保留 bulk history transpose 和显式 boundary terms。 |
| 已证明 | normalized-coordinate transports、完整释放 chain rule、部分释放后的同类 membership、有限次组合 | §§23.4、24；fixed increments 与可变 control windows 分别处理。 |
| 已证明 | 共同-history family 的 continuous split quotient onto 整个独立 $\mathfrak A(K_M)$ | §24.3 的实际 right inverse；固定层可能增加 $12$ 阶 loss。 |
| 已证明 | 两个完整 LF 空间的 Hausdorff 性、compact regularity 与 completeness | §25.1 的 coefficient interpolation 与 (Q)；并非逐层完备性的形式推论。 |
| 条件成立 | 其他线性历史代入、origin changes 或组合 maps 也保持该类别 | 必须逐项有 (22.7) 的 map/transpose 有限-loss 与 compact-support bounds；本文标准 maps 已验证这些条件。 |
| 反例否定 | $\mathcal A_r=\mathcal C_r$ 对每个同编号层成立 | $H\in\mathcal A_1\setminus\mathcal C_1$，§21.1。 |
| 反例否定 | 逐纤维 membership 加上标量 $C^\infty$ 历史 dependence 就足以释放；任意 smooth history-dependent origin 都允许 | $q(t_*)$ 及 $z\mapsto z+u_0q(t_*)$，§§21.3、23.4。 |
| 反例否定 | 全 LF 并集的乘法、Poisson bracket 联合连续 | §§25.2–25.3 的 neighborhoods/high-frequency counterexamples。 |
| 反例否定 | 扩大类别的 canonical independent completed projective tensor identity | §25.4 的 independent cross kernel；与人工墙释放分开。 |
| 仍开放，非当前重建前提 | 更小的函数类或不同拓扑，能否同时保留所需复合场/能量、联合连续运算及适当独立 tensor theorem | 本文不以尚未构造的替代 topology 替换已明确的分层类别。 |
| 仍开放，非当前重建前提 | 最优 loss、超出 compact smooth history-density 类的延拓，以及无限 cut refinement 的一致估计 | 当前有限整数 bounds 和有限 cells 已足够证明上述定理。 |

**Verified:** 本轮重新证明层完成和密度的准确层数，给出统一 family 定义及其真实函数实现，推导 full history gradient、normalization transpose、release map 和 continuous section，并以 Hilbert-scale interpolation 验证整个 LF 空间的 (Q)。所有有限-loss constants 均允许依赖固定几何、时间窗、cutoffs 和输出阶数；所需 loss 本身不随输出阶或 polynomial degree 增长。联合连续性与 tensor identity 的否定使用正文无限 mode sequences 和 coefficient bounds，不使用有限截断替代。

**Assumptions:** static massive free scalar；有限个正长度 interval cells；physical outer Dirichlet、prescribed internal histories、无真实 interface action；物理 $j=0$，辅助 response probes 为 compact smooth-time $L^2$；保留全部 homogeneous smooth-vector data；物理历史在有限 slab 邻域光滑，family 历史协向量是 slab 内 compact smooth density；functions 满足 (22.1)–(22.5) 的统一 finite-loss 和次数增长条件。本文并不声称所有 smooth Hamiltonian functionals 都属于该类。

**Checked symbolically（2026-09-05）:** 以下 fresh-kernel Mathematica 程序的 **18 个命名 residual groups 全为零**，包括 full chain rule、normalized lift transpose、causal response 的两项历史导数、release/section 的双向配对、两种 gradient brackets、release Poisson identity、能量空间边界项，以及高频反例的有限 mode 系数。另有输出 omittedHistoryTermForF=h=1，显示冻结历史确实会漏掉非零导数。

**Not verified by symbolic checks:** Sobolev/trace bounds、coefficient-space completeness、cylinder density、(Q)、LF completeness、全空间非联合连续性以及无限 tensor obstruction 都不是有限 residuals 的结论；它们分别依赖 §§21–25 的解析证明。没有把 finite matrix model 当作 PDE 或无限维重建定理的证明。本轮没有开展量子化、非线性动力学或 gauge 推广。

可独立重跑本轮检查：

```wolfram
ClearAll["Global`*"];

vars={q1,p1,q2,p2,h}; j={{0,1},{-1,0}};
beta=ArrayFlatten[{{j,0 j,ConstantArray[0,{2,1}]},{0 j,j,ConstantArray[0,{2,1}]},{ConstantArray[0,{1,2}],ConstantArray[0,{1,2}],{{1}}}}];
ug[f_]:=Inverse[Transpose[beta]].(D[f,#]&/@vars);
jj[v_]:=Table[D[v[[i]],vars[[k]]],{i,5},{k,5}];
rr={{1,0},{0,1/2},{1,0},{0,1/2},{1,0}};
rf=j.Transpose[rr].Transpose[beta];
pp0=DiagonalMatrix[{1,1,1,1,0}]; pps=rr.rf;
bb={{1/2,0,1/2,0,0},{0,1,0,1,0}};
bf=-Inverse[Transpose[beta]].Transpose[bb].j;
pb[f_,g_,po_]:=ug[f].beta.po.ug[g];
ff=h q1+p2 h^2+q2^2; gg=p1^2+h p2+q1 q2 h;
released[f_]:=f/.Thread[vars->rr.{qq,pp}];
pbM[f_,g_]:=D[f,qq]D[g,pp]-D[f,pp]D[g,qq];
matG={{0,ww^ss/cc},{0,0}};
inNorm=DiagonalMatrix[{ww^(tt+ss+3),ww^(tt+ss+2)}];
outNorm=DiagonalMatrix[{ww^(tt+1),ww^tt}];
cross=qq1 qq2;
v4={qq1,pp1,qq2,pp2}; j4=KroneckerProduct[IdentityMatrix[2],j];
xCross=j4.(D[cross,#]&/@v4);
tcross=Table[D[xCross[[i]],v4[[k]]]/2,{i,4},{k,4}];
n4=DiagonalMatrix[{ww,1,ww,1}];
askew={{0,a1,a2,a3},{-a1,0,a4,a5},{-a2,-a4,0,a6},{-a3,-a5,-a6,0}};
eskew={{0,e1,e2,e3},{-e1,0,e4,e5},{-e2,-e4,0,e6},{-e3,-e5,-e6,0}};
hmat=Array[hhm,{4,2}]; proj=-eskew.askew;
slift=(IdentityMatrix[4]-proj).hmat;
prodtest=cc wb^(-ss) qb (2wb^ss/cc) pn^2/2;
checks=<|
"normalizedHistoryAdjoint"->Simplify[Transpose[slift]-Transpose[hmat].(IdentityMatrix[4]+askew.eskew)],
"causalResponseFullHistoryDerivative"->Simplify[Transpose[slift]+Transpose[hmat].Transpose[proj]-Transpose[hmat]],
"multiplicationCounterexampleCoefficient"->FullSimplify[D[prodtest,qb,{pn,2}]-2,Assumptions->wb>1&&cc>0],
"interpolationInputIndex"->Simplify[rr0+(ds ss0+rr0+ds-rr0)/ds-(ss0+rr0+1)],
"interpolationOutputIndex"->Simplify[ds ss0/ds-ss0],
"historyChainRule"->Simplify[D[fun[hh[z],z],z]-
Derivative[0,1][fun][hh[z],z]-Derivative[1,0][fun][hh[z],z]hh'[z]],
"verticalSkewPairing"->Simplify[beta.pp0+Transpose[beta.pp0]],
"sewnSkewPairing"->Simplify[beta.pps+Transpose[beta.pps]],
"releaseAdjoint"->Simplify[Transpose[rf].j-beta.rr],
"leftInverse"->Simplify[bb.rr-IdentityMatrix[2]],
"dualLeftInverse"->Simplify[rf.bf-IdentityMatrix[2]],
"verticalGradientClosure"->Expand[ug[pb[ff,gg,pp0]]-jj[ug[ff]].pp0.ug[gg]+jj[ug[gg]].pp0.ug[ff]],
"sewnGradientClosure"->Expand[ug[pb[ff,gg,pps]]-jj[ug[ff]].pps.ug[gg]+jj[ug[gg]].pps.ug[ff]],
"releasePoisson"->Expand[released[pb[ff,gg,pps]]-pbM[released[ff],released[gg]]],
"highModeBracket"->FullSimplify[pbM[cc ww^(-ss)qq,ww^ss pp^2/(2cc)]-pp,Assumptions->ww>1&&cc>0],
"quadraticLossBound"->FullSimplify[outNorm.matG.Inverse[inNorm]-{{0,1/(cc ww)},{0,0}},Assumptions->ww>1&&cc>0],
"crossKernelTail"->Simplify[Transpose[n4.tcross.Inverse[n4]].(n4.tcross.Inverse[n4])-DiagonalMatrix[{1/(4ww^2),0,1/(4ww^2),0}]],
"energyCutBoundaryTerm"->Expand[
D[u[x],x]D[v[x],x]+mass^2 u[x]v[x]-
(-D[u[x],{x,2}]+mass^2 u[x])v[x]-D[D[u[x],x]v[x],x]]
|>;
Print[checks];
Print["allResidualsZero=",And@@(SameQ[#,0]&/@Flatten[Values[checks]])];
Print["omittedHistoryTermForF=h=",D[released[h],qq]];

```

## 27. 对三份审计稿的复核与函数类边界

本节复核 [01_audit_and_repairs](../../../01_audit_and_repairs.md)、[02_symmetries_and_sewing](../../../02_symmetries_and_sewing.md)、[03_which_observables_and_a_larger_algebra](../../../03_which_observables_and_a_larger_algebra.md) 的论证，而非采用它们的判定标签。它们以本笔记的已提交版本为基准；本次修改保留当前工作稿的其他内容。

### 27.1 审查结论及落实的位置

| 外部 claim | 复核判定 | 证据或修正 |
|---|---|---|
| 01：fixed-history 与 mixed-history finite-loss Poisson closure | 在 §§14、22 的共同 loss 量词下成立 | 两个 coefficient compositions 分别进入对方需要的 Sobolev 层；full Hessian 给 (22.6)，并非只用 fixed-$q$ bracket。 |
| 01：release/section 的正则性足够，12 阶 loss 可保留 | 成立；原推导需补写低空间正则性的中间界 | 已加入 (23.2a)–(23.2b)，展开 (23.3) 的 normal-response 界，并在 §24.3 给出 $4+8$ 的来源。 |
| 01：sewn object 来自区域数据，exact onto 覆盖全类 | 成立 | (24.4) 直接使用 $H^{\mathrm{dup}}$ 中的场有序对，消除与 global assembly 的类型歧义；(24.5)–(24.7) 给逐函数的实际 extension。 |
| 01：局域 net 与 strict-local prequotient quotient 必须分开 | 正确 | §24.4 已明确前者为商后 supported-core 完成；后者还缺保持支撑的局域提升。 |
| 01：LF 完备性和三类反例可保留 | 成立 | (25.1) 的 interpolation 参数给精确输入阶 $s+r+1$；(Q) 的量词与所引定理一致。非联合连续性使用 neighborhoods，tensor 反例使用全无限 mode coefficients。 |
| 02：admissible affine symmetries 与 sewing 相容 | 在 map/transpose、symplectic、cut-equivariance 和物理 action/response 条件下成立 | 由 $\mathsf R^\flat L^\flat=S^{-1}\mathsf R^\flat$ 得 $L\mathsf P_{\mathrm{sew}}L^\flat=\mathsf P_{\mathrm{sew}}$；section 无需在 off-matching data 上 equivariant。 |
| 02：solution translations 是区域 action symmetry | 应补上精确 boundary-functional 限定 | Off shell $\delta_sS_i=[\int\phi_i\dot s_i]+\int q_i\Pi_s$，这里只用固定 $s$ 的方程。移动 history 时一般不是同一 fixed-history 变分问题的 symmetry；matched sum 的内部 boundary term 才相消。 |
| 02–03：affine charges 的中心项、Gaussian/shear 的次数增长障碍 | 成立 | 保留 $\{Q_b,Q_c\}=-\Omega(b,c)$；全局存在的 polynomial canonical flow 仍可能不保持本笔记的 entire class。见下文和新笔记的直接推导。 |
| 03：smooth-Hamiltonian 与 smooth density-valued regional families 闭合，且全类 exact sew | 在明确的 Bastiani 微分学和固定 compact history support 下成立 | 新笔记独立证明 full-gradient closure；$G\circ\mathsf B$ 的 gradient 为 $\mathsf B^\flat X_G\circ\mathsf B$，覆盖全部 $\mathcal H(X_{\mathrm{sew}})$。不以 dense range 代替 onto。 |
| 03：任意 smooth symplectomorphism 有 admissible off-matching extension | 成立，但省略的 transpose 必须展开 | 对 $\widetilde g=\mathsf Rg\mathsf B+(1-\mathsf R\mathsf B)$，transpose 为 $\mathsf B^\flat Dg(\mathsf By)^{-1}\mathsf R^\flat+1-\mathsf B^\flat\mathsf R^\flat$，输出支撑在 $K\cup K_\chi$；证明见新笔记。 |
| 输入稿的外部计算报告 | 本次未验证其历史执行记录 | 所引用 Python script、JSON results 未随这三份文件提供；本次另作 fresh-kernel Mathematica 检查。 |

另外两处量词须保留：移动 history 不可能是 vertical inner derivation 的反例要求它在物理 $I^\circ$ 内非零；改变 $I$ 外辅助延拓不构成物理变换。local-net covariance 的 $gO$ 或 $g^{-1}O$ 必须由声明的 spacetime/field pullback 约定确定，不能只看代数符号 $g^*$。

上述 (Q) 复核使用 [Kunzinger–Ortner, Definition 2.1](https://arxiv.org/html/2408.11944v2#S2) 中明确的邻域量词；本笔记的 coefficient interpolation 给该条件本身，未从其特定 sequence space 的完备性直接类推。一般 raw completion 中的 polynomial approximation 在 §6.4 改用 net；Fréchet 系数层中的 sequential density 不受影响。

### 27.2 本笔记的类不是所有 Smooth Hamiltonian Observables

取非零 smooth Hamiltonian linear function $\ell=-\Omega(v,\cdot)$，选 smooth $e$ 使 $\ell(e)=1$。$F=e^{-\ell^2}$ 有 smooth Hamiltonian vector
$X_F=-2\ell e^{-\ell^2}v$，但其 $2n$ 次 Hamiltonian coefficient 满足

$$\begin{align}
P_{0,r}(T_{2n})
\ge\frac{\|v\|_0}{n!\|e\|_r^{2n-1}}.
\end{align}$$

因此 $\mathcal A_r$ membership 至少要求所有 $R$ 下
$\sum_n\sqrt{(2n)!}(R/\|e\|_r)^{2n}/n!$
收敛；相邻项比值趋于 $2(R/\|e\|_r)^2$，对大 $R$ 发散。每个有限 $r$ 均失败。这是一维次数增长反例，不能用增加 Sobolev loss 修复。smooth bump $h(\ell)$、$e^{-\beta H}$ 等常用 smooth post-processing 也不能因物理上有用而自动归入本类。

同一 canonical mode 上，
$g_t(Q,P)=(Q,P+tQ^2)$
由 $K=-Q^3/3$ 生成，全局存在且 symplectic。虽然 $\{\cdot,K\}$ 在 $\mathfrak A$ 中闭合，
$g_t^*e^{iP}=e^{i(P+tQ^2)}$
在 $t\ne0$ 时不属于 $\mathfrak A_\mathbb C$：限制 $P=0$ 后出现同一个 weighted-degree 发散。因此 **infinitesimal Poisson closure 不蕴涵有限 canonical-flow invariance**。

本笔记保留其 entire finite-loss completion theorem；不再将它表述为全部 classical observables 的唯一对象。更大的
$\mathcal H_\beta(Y)$、$\mathcal H(X)$，
其实际 Poisson closure、smooth local functional membership、允许的对称性、完整 history derivative 和全类重建同构，在独立笔记 [Smooth Regional Observable Algebras, Symmetries and Sewing](<smooth regional observable algebras and symmetries.md>) 中定义并证明。

该新笔记还选择了明确的 derivative graph topology，证明固定 support strata 与 $\mathcal H(X)$ 的完备性和连续 split quotient；它不将这些图拓扑结论、原文的 factorial LF 完备性或任一 tensor identity 互相替代。严格局域提升、无限切分与更一般历史协向量仍是额外问题。

**Verified:** 本节两项次数增长反例、charge 符号、full-history bracket、release/section 和 nonlinear symmetry extension 的有限恒等式由新笔记保存的 25 组 Mathematica residuals 独立核验，全部为零；另有非零 off-matching Poisson defect。Sobolev estimates、(Q)、Bastiani closure 和无限维 exact onto 分别由正文解析证明，不由这些 finite checks 推出。

**Assumptions:** 与 §26 相同的自由标量、smooth data、有限 cells 和固定 compact history-density 类。更大 smooth 类不要求原来的整个函数增长条件，但保留 smooth vector/density gradient。

**Not verified / not claimed:** 输入稿引用的历史 Python 检查记录；strict-local prequotient 满射；新 support inductive limit 的整体完备性或新的 completed tensor identity；一般 nonlinear dynamics、gauge 或 quantum sewing。
