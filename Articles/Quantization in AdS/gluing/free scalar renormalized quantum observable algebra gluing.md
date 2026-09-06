# Renormalized Quantum Observable Algebra Gluing for a Free Scalar

**结论。** 对有限个 $1+1$ 维静态 massive scalar cells，regional action 与 response 决定 transparent transmission operator。用该算子的 Wick kernel 定义下述 polynomial core 及 §2.1 的 interior equicausal quantum algebra，sewed algebra 与独立 uncut algebra exact 同构，且在保留 response 和共同 Wick prescription 的增强对象上，quantization 与 sewing 交换。这一代数包含内部 local Wick composites 和 spacetime-smeared stress tensor；§6 另给总自由能量的正常序扩张。它不限于有限模态或线性 CCR。

本文不将整个经典 $\mathcal H_\beta$ 直接量子化，也不假设经典 smooth transpose 已证明其 equicausal 量子版本。完整审计见 [renormalized scalar sewing audit](<renormalized scalar sewing audit.md>)；经典输入见 [smooth regional observable algebras and symmetries](<smooth regional observable algebras and symmetries.md>)。

## 1. 区域输入与两种乘积

采用 signature $(-,+)$、$m>0$，物理外端 Dirichlet，无真实 interface action。区域作用量为

$$\begin{align}
S_i[\phi_i]&=\frac12\int_{I\times\Sigma_i}
(\dot\phi_i^2-\phi_i'^2-m^2\phi_i^2),&
q_i&=\phi_i|_\Gamma,& \Pi_i&=-\partial_{n_i}\phi_i.
\end{align}$$

先固定各自 $q_i$；识别并释放共同 history 后，变分给

$$\begin{align}
q_1=q_2,\qquad \Pi_1+\Pi_2=0.
\end{align}$$

保留由区域方程定义的 $G_i^{R/A},H_i^{R/A},\rho_i^{R/A},D_i^{R/A}$、history transports 和 field/support maps。约定

$$\begin{align}
E=G^A-G^R,\qquad
\iota_{X_F}\Omega=-dF,\qquad
\{F,G\}=-\Omega(X_F,X_G).
\end{align}$$

这里 $G^{R/A}$ 是 $L_0=\partial_t^2+K$ 的 inverses。作用量 Hessian 是 $-L_0$，故若采用 Hessian Green functions，则 $G_{S_0}^{R/A}=-G^{R/A}$，且 $E=G_{S_0}^R-G_{S_0}^A$；这给与 CPS convention 的明确符号对照。

量子 observable multiplication 是 $\star_W$；相互作用插入所需的 renormalized time ordering 是另一组 maps $T_{R,k}$。自由 Wick algebra 的定义不需要在所有 observables 上定义 $T_R$。

## 2. 一个实际闭合的 Wick function class

先在每个区域自身的 off-shell space $C^\infty(M_i^\circ)$ 上定义函数，不施加 bulk equation；Dirichlet 与 prescribed-history 条件随后在 physical solution space 上施加。所有本节的分布系数都在时空内部紧支撑；对 isolated region，人工 reflecting endpoint 也算边界。

取有限次数多项式

$$\begin{align}
F(\phi)=\sum_{k=0}^{N}\frac1{k!}
\langle f_k,\phi^{\otimes k}\rangle,\qquad
f_k\in\mathcal E'(M_i^{\circ k})_{\mathrm{sym}},
\end{align}$$

并要求

$$\begin{align}
\operatorname{WF}(f_k)\cap
\bigl(\overline V_+^{\,k}\cup\overline V_-^{\,k}\bigr)=\varnothing.
\end{align}$$

这里 $\overline V_\pm$ 包括零 covector；在乘积锥中去掉全零 tuple。记此类为 $\mathcal P_\mu(M_i^\circ)$。这些是固定分布系数的 Wick polynomials；它们属于 equicausal 类。任意有限-jet polynomial density 的 smooth compact spacetime smearing 都在此类，因为其 diagonal conormal covectors 的总和为零，不能全同向因果。一般非多项式 microcausal functional 的闭合问题不进入这个有限次数证明。

区域自身的正 Dirichlet 算子 $K_{i,D}$ 给参考 kernel

$$\begin{align}
W_i(t,t')=\frac{e^{-i\sqrt{K_{i,D}}(t-t')}}{2\sqrt{K_{i,D}}},
\qquad W_i-W_i^T=iE_i,\qquad \overline W_i=W_i^T.
\end{align}$$

在内部，$\operatorname{WF}(W_i)$ 的第一、第二 covectors 分别为未来、过去定向 null covectors；两点可以由反射光线连接。对 interval，这可直接由 doubled circle 的 odd sector 验证：

$$\begin{align}
W_D(t,x;t',x')
=W_{2\ell}(t,x;t',x')-W_{2\ell}(t,x;t',-x').
\end{align}$$

奇投影的限制满足 Dirichlet 条件，归一化由 $W_D-W_D^T=iE_D$ 固定。反射不改变时间定向。在内部足够小的邻域，image 项在对角线附近光滑；在较长时间窗，必须保留其反射奇性。这里用这个具体 kernel 核查边界模型，不能只引用无边界 Hadamard 定理。

定义

$$\begin{align}
F\star_{W_i}G
&=\sum_{r\ge0}\frac{\hbar^r}{r!}
\left\langle F^{(r)},W_i^{\otimes r}G^{(r)}\right\rangle,&
F^*&=\overline F.
\end{align}$$

对普通多项式该和有限；对形式 $\hbar$-series 逐系数解释。每个 contraction 满足分布乘积的 wavefront 条件；输出核仍紧支撑，且仍排除全部同向的因果 covectors。固定分布核的有限多项式依赖也使所有背景导数有相应的 equicontinuity。因此

$$\begin{align}
\mathfrak Q_i^{\mathrm{off}}[q_i]
:=\bigl(\mathcal P_\mu(M_i^\circ)[[\hbar]],\star_{W_i},*\bigr)
\end{align}$$

闭合。三重乘积均展开为同一组 pairwise Wick contractions，给 associativity；复共轭反转每条 contraction，给 $*$-identity。首阶满足

$$\begin{align}
\frac{F\star_WG-G\star_WF}{i\hbar}
=\langle F^{(1)},E G^{(1)}\rangle+O(\hbar).
\end{align}$$

这里使用的 polynomial/equicausal 包含关系及一般 equicausal $\star$-closure 见 [Hawkins–Rejzner–Visser, §§5、7](https://arxiv.org/html/2312.15203v3)。本文只将明确的 polynomial 类用于后面的相互作用插入。

令 $\mathcal I_i$ 为在该 prescribed-history 的自由解上恒为零的函数，定义

$$\begin{align}
\mathfrak Q_i[q_i]=\mathfrak Q_i^{\mathrm{off}}[q_i]/\mathcal I_i[[\hbar]].
\end{align}$$

这是 $\star$-ideal，但单说 bisolution 还不足以合法地与分布导数收缩。下面给出所用的极限证明。若 $F$ 在 prescribed-history 解空间上为零，则在任一物理解处，沿任意有限组 smooth homogeneous Dirichlet solution directions 的所有导数均为零；复模态按这些实方向的复线性延拓解释。

对长度 $\ell$ 的 interval，令 $k_j=\pi j/\ell$、$\omega_j=(k_j^2+m^2)^{1/2}$，取实际有限秩 bisolutions

$$\begin{align}
W_N(t,x;t',x')=\sum_{j=1}^N
\frac{\sin(k_jx)\sin(k_jx')}{\ell\omega_j}
e^{-i\omega_j(t-t')}.
\end{align}$$

在每个内部 compact 上，它们在 normal distribution topology 中收敛到 $W_D$。一个足够大的闭锥可取

$$\begin{align}
\Lambda=\{(\zeta_1,\zeta_2):\zeta_1\in\overline V_+,\quad
\zeta_2\in\overline V_-,\
\zeta_1(\partial_t)+\zeta_2(\partial_{t'})=0\}\setminus0.
\end{align}$$

此锥没有单侧零 covector。证明如下：展开两个 sine 后，每项是四个 plane waves 之和，频率
$(-\omega_j,\pm k_j;\omega_j,\pm k_j)$ 均在 $\Lambda$ 中，系数为 $O(j^{-1})$。用 compact cutoff 局部化后，在与 $\Lambda$ 不相交的闭锥上，频率距离至少为 $c(|\zeta|+j)$。Cutoff 的 Fourier 快速衰减给

$$\begin{align}
|\widehat{\chi(W_D-W_N)}(\zeta)|
\le C_s\sum_{j>N}j^{-1}(1+|\zeta|+j)^{-s}.
\end{align}$$

对任意所需 Fourier seminorm，取足够大的 $s$，右端的加权上确界趋于零；对有界 smooth test families 也同样收敛。这同时控制 normal topology 的两类 seminorms。有限 tensor powers 由 tensor product 的 hypocontinuity 收敛，且保持左右 causal orientation。Polynomial/microcausal 导数和下节 equicausal 导数均在相应允许锥上有连续配对。每个有限 $N$ 的 contraction 为零，取极限给 $F\star_WG$ 与 $G\star_WF$ 在解上仍为零。这个证明不把普通弱分布收敛当作乘积连续性，也不适用于作为 inverse 的 Feynman kernel。

History 改变时，物理场作 smooth affine shift。把 smooth shift 插入多项式核保持上述 wavefront 条件，给不同 affine fibers 间的 $*$-isomorphism。区域对象保留这些 fibers 及其 response/transport 数据；不把全部经典 history-dependent smooth functions 都自动列为量子元素。

### 2.1 Interior Equicausal 扩张

自由理论还可扩大到非多项式 functions。为使定义域明确，先取内部的 off-shell configuration space $\mathcal E=C^\infty(M_i^\circ)$；Dirichlet/history 条件在 physical solution space 上施加。所有 functional supports 仍为内部 compact sets。令

$$\begin{align}
\Gamma_k=(\overline V_+^{\,k}\cup\overline V_-^{\,k})\setminus0.
\end{align}$$

按 equicausal definition，要求每个 $F^{(k)}(\phi)$ 在 $\mathcal D'_{\Gamma_k}$ 上有连续延拓，且对每个 compact background set $C\subset\mathcal E$，这些延拓 $\{F^{(k)}(\phi):\phi\in C\}$ equicontinuous。这里使用指定波前集分布空间的 topology，不能替换成仅在 smooth directions 上的连续性。记所得 compactly supported 类为 $\mathcal E_{\mathrm{eq}}$。

上述 interval kernel 满足 $WF(W_D)\subset\overline V_+\times\overline V_-$，且它的 singular pairs 没有单侧零 covector。因而 [Hawkins–Rejzner–Visser, Lemma 7.2、Proposition 7.3](https://arxiv.org/html/2312.15203v3#S7) 的 contraction cone argument 原样适用：其所需的是这两个 covector 性质，反射不会改变它们；这里没有调用该文另一个需要 Green/time-slice 输入的 theorem。每个固定阶 contraction 的全部背景导数是有限 Leibniz 和，固定 kernel 的分布映射把 equicontinuous derivative families 送到 equicontinuous families。因此

$$\begin{align}
\boxed{\bigl(\mathcal E_{\mathrm{eq}}[[\hbar]],\star_{W_D},*\bigr)
\text{ 是闭合的 formal }*\text{-algebra}.}
\end{align}$$

先前的 polynomial ideal argument 对该类逐个固定 $\hbar$ 阶仍成立：使用 §2 的有限秩 $W_N$ 及其 normal-topology convergence，equicausal 导数的连续延拓给同样的零值。故除去在 physical solution space 上恒为零的 ideal，得到 free on-shell equicausal algebra。这里以函数的实际 restriction 定义该 ideal；不额外声称它由有限个 equation-of-motion generators 代数生成，也不移用无边界的 time-slice theorem。

后面的 assembly 是 smooth spacetime identification，它双向保持 $\Gamma_k$、compact supports 和 compact-background equicontinuity。因此 §§3–5 同时适用于这个更大的 free algebra：在相应式中把 $\mathcal P_\mu$ 及其 on-shell ideal 换成 $\mathcal E_{\mathrm{eq}}$ 及其 ideal，central presentation 仍只使用有限 polynomial mismatch parameters。

例如 $\int f e^{-\phi^2}$ 和 $\int f\cos\phi$ 是该类的内部 local functionals。这不证明它们作为 arbitrary interacting insertions 的 $T_R$，也不证明整个旧 $\mathcal H_\beta(Y)$ 满足该条件。§6 的总能量扩张只对已证明的 polynomial core 作出。

## 3. 从区域作用量构造 quantum sewing

在 duplicated spatial space 上定义

$$\begin{align}
V^{\mathrm{sew}}
&=\{u_i\in H^1(\Sigma_i):u_i|_{\mathrm{outer}}=0,\
u_1|_\Gamma=u_2|_\Gamma\},\\
\mathfrak a_{\mathrm{sew}}(u,v)
&=\sum_i\int_{\Sigma_i}(u_i'v_i'+m^2u_iv_i).
\end{align}$$

闭型的 operator $K_{\mathrm{sew}}$ 具有 action-derived flux matching。其 $G_{\mathrm{sew}}^{R/A}$ 也可由区域 causal response elimination 得到，唯一性证明两种构造相同。定义

$$\begin{align}
W_{\mathrm{sew}}(t,t')
=\frac{e^{-i\sqrt{K_{\mathrm{sew}}}(t-t')}}{2\sqrt{K_{\mathrm{sew}}}}.
\end{align}$$

至此没有使用独立 global theory。人工 cut 在这个 operator 中是 transparent interface，不再是 reflecting boundary。

Off-shell sewing 使用逐 cell smooth、在人工 cut 匹配全部空间／时间 jets 的 fields。这是光滑 assembled field 的配置空间；在 on-shell sector，经典方程把 continuity 与 flux matching 提升成这些 jet conditions。Quantum coefficient kernels 和 local densities 也按这个光滑拼接结构定义，不能把分布核逐侧作未经证明的 sharp multiplication。

在这个 sewn geometry 的内部采用 §2 的同一 $\mathcal P_\mu$ 判据，形成 $\mathfrak Q_{\mathrm{sew}}^{\mathrm{off}}$，再除去自由 on-shell ideal，得到

$$\begin{align}
\boxed{\mathfrak Q_{\mathrm{sew}}
=\mathfrak Q_{\mathrm{sew}}^{\mathrm{off}}/\mathcal I_{\mathrm{sew}}[[\hbar]].}
\end{align}$$

这是本节定义的 quantum sewing。它从 regional action/response 重建 contractions，再对明确的 observable class 施加 dynamics。

若需要与经典 $\mathsf R,\mathsf B$ 对应的显式 presentation，先在物理 history 商中取 mismatch space $\ker\mathsf B$。选其有限多个 regular linear smearings 的 polynomial algebra $\mathcal C$；它带有 evaluation $\varepsilon(c)=c(0)$。定义

$$\begin{align}
\widetilde{\mathfrak Q}_{Y}
&=\bigl(\mathcal C\otimes_{\mathrm{alg}}
(\mathcal P_\mu/\mathcal I_{\mathrm{sew}})\bigr)[[\hbar]],\\
(c\otimes F)\star(d\otimes G)&=cd\otimes(F\star_WG),\\
Q(c\otimes F)&=c(0)F,\qquad S(F)=1\otimes F.
\end{align}$$

每个 $\hbar$ 系数只取有限张量和，系数上的乘法按上式 Wick deformation 定义。于是

$$\begin{align}
QS=1,\qquad
\ker Q=\bigl(\ker\varepsilon\otimes_{\mathrm{alg}}
(\mathcal P_\mu/\mathcal I_{\mathrm{sew}})\bigr)[[\hbar]],
\qquad
\boxed{\widetilde{\mathfrak Q}_{Y}/\ker Q\simeq\mathfrak Q_{\mathrm{sew}}.}
\end{align}$$

在自由解上 $y=\mathsf R x+w$，故 $Q$ 就是 $w=0$ 的 release。该 tensor 只引入 central mismatch parameters；它不是两份旧 regional quantum algebras 的 tensor fusion，也不声称覆盖整个 $\mathcal H_\beta(Y)$。其 section 非局域，满射是对这份明确 presentation 的逐元素满射。

## 4. 独立 Global Algebra 与 exact isomorphism

独立在 uncut interval $M$ 上给定同一作用量和物理 Dirichlet 条件，构造 $K_M,W_M,\mathcal P_\mu(M^\circ)$、自由解空间以及

$$\begin{align}
\mathfrak Q_M
=\bigl(\mathcal P_\mu(M^\circ)[[\hbar]],\star_{W_M},*\bigr)/
\mathcal I_M[[\hbar]].
\end{align}$$

一维 $H^1/H^2$ patching 和区域 Green identity 给

$$\begin{align}
\operatorname{Ass}K_{\mathrm{sew}}
&=K_M\operatorname{Ass},&
(\operatorname{Ass}\otimes\operatorname{Ass})W_{\mathrm{sew}}&=W_M.
\end{align}$$

组装是同一个光滑 spacetime 的分片表达，所以 polynomial coefficient kernels 的 wavefront 条件、紧支撑和全部 tensor powers 均双向对应。定义

$$\begin{align}
\alpha_0F=F\circ\operatorname{Ass}^{-1}.
\end{align}$$

Chain rule 和 kernel intertwining 对每个 contraction 给

$$\begin{align}
\alpha_0(F\star_{\mathrm{sew}}G)
=\alpha_0F\star_M\alpha_0G.
\end{align}$$

Restriction 是其逆，且双向对应自由解空间，因此 $\alpha_0\mathcal I_{\mathrm{sew}}=\mathcal I_M$。故

$$\begin{align}
\boxed{
\widetilde{\mathfrak Q}_Y/\ker Q
\simeq\mathfrak Q_{\mathrm{sew}}
\xrightarrow[\alpha_0]{\cong}\mathfrak Q_M.
}
\end{align}$$

这是全部所声明 polynomial Wick class 的 exact isomorphism；按 §2.1 同样给 interior equicausal class 的同构。对指定 matched local generators 定义的局域子代数，支撑对应同样给双向同构；不依赖 density 或 mode cutoff。

## 5. Quantization 与 Sewing 的交换性

记 $\mathrm Q_W$ 为 §2 的 formal Wick deformation；其定义域是带 action、field labels、response 和 Wick prescription 的增强 classical systems。定义 $\mathrm{Sew}_{q}$ 为 §3 的 response-derived contraction replacement 和 on-shell quotient。则

$$\begin{align}
\boxed{
\mathrm{Sew}_{q}\bigl(\{\mathrm Q_W(\mathbf A_i)\}\bigr)
\cong
\mathrm Q_{W_{\mathrm{sew}}}\bigl(\mathrm{Sew}_{\mathrm{cl}}(\{\mathbf A_i\})\bigr).
}
\end{align}$$

证明只需逐层比较：两条路径保留同一 regional responses，得到同一 transmission operator、同一 polynomial labels 和同一 $W_{\mathrm{sew}}$；每阶 Wick contractions 因而相同，最后施加同一 on-shell ideal。§4 再与独立 global quantization 比较。$\hbar=0$ 恢复所选 polynomial classical observables 及其 sewing map；首阶反对称部分恢复 CPS/Peierls bracket。

此处“交换”是对上述增强对象及所选 deformation 的自然同构，不是对所有 Poisson algebras 的无选择 quantization functor。有限多 cuts 的不同顺序给相同 transmission problem；保留全部 intermediate ports 时，唯一性和同一 Wick rule 给物理 quotient 上的有限结合性。

若改用 $W'=W+d$，仅当 $d$ 是同一 boundary problem 的 smooth symmetric difference、并在所选核支撑上可配对时，

$$\begin{align}
\alpha_d=\exp\left(\frac{\hbar}{2}
\left\langle d,\frac{\delta^2}{\delta\phi^2}\right\rangle\right),\qquad
\alpha_d(F\star_WG)=\alpha_dF\star_{W'}\alpha_dG
\end{align}$$

给 normal-ordering isomorphism。选择参考 kernel 不要求把相应真空态同时选作物理 state。独立 reflecting 与 transparent problems 的 kernel difference 一般不满足这个 smooth-difference 假设。

## 6. Local Composites 与能量

对内部 $f\in C_c^\infty$，本类包含

$$\begin{align}
\int f:\phi^k:,\qquad
\int f:\partial_\mu\phi\,\partial_\nu\phi:,\qquad
\int f:T_{00}: .
\end{align}$$

固定 Wick prescription 后这些是 formal quantum elements；不是 bounded Weyl $C^*$-elements。若指定局域 Hadamard subtraction 而不是 $W$-normal ordering，在内部小邻域二者的差光滑，使用上一节的 $\alpha_d$ 表示同一 local insertion。

人工 cut 在 transparent geometry 中是内部 timelike line。其 smooth time-smeared polynomial $\int\eta(t):\phi(t,\Gamma)^k:dt$ 的系数核也是允许的：时间 covectors 总和为零，空间 conormals 不能使所有 slots 同时成为非零同向因果 covectors。因此这一明确的 free line sector 在 $\mathcal P_\mu$ 中。它不同于真正 reflecting outer boundary 的插入，也不自动证明 interacting line-insertion renormalization。

Release 后原始 $q$ 一般不再 central，例如 $\{\int\eta q,\ell_f\}_{\mathrm{sew}}=\langle\gamma^*\eta,E_{\mathrm{sew}}f\rangle$ 可以非零。§3 设为 central 的只是 mismatch $w$，不是物理 trace $q$。

总自由能量还可作一个明确的 on-shell 扩张。令 $a_j,\bar a_j$ 为 $K$ 的正频坐标，$\omega_j>0$；此处仅用谱坐标核查 membership，sewing 已由 action 构造。Smooth incoming data 的坐标快速衰减。取正常序能量及其谱权重

$$\begin{align}
H_r=\sum_j\omega_j^r\bar a_ja_j,\quad r=1,2,\ldots,\qquad H=H_1.
\end{align}$$

Wick convention 为 $F\star G=\sum \hbar^k\,\partial_a^kF\,\partial_{\bar a}^kG/k!$。因此

$$\begin{align}
H_r\star H_s&=H_rH_s+\hbar H_{r+s},\\
H_r\star F&=H_rF+\hbar\sum_j\omega_j^r\bar a_j\partial_{\bar a_j}F,\\
F\star H_r&=FH_r+\hbar\sum_j\omega_j^ra_j\partial_{a_j}F.
\end{align}$$

这些和在 smooth data 上有意义。对 polynomial Wick $F$，有限次插入 $H_r$ 的 contraction graphs 只有带谱权重的 open chains；内部线化为 $W$ 的有限阶时间导数，仍满足同一 wavefront 配对条件，剩余线与快速衰减的 data 配对。因而由 $\mathfrak Q_{\mathrm{sew}}$ 和所有 $H_r$ 生成的 $\star$-algebra 给实际扩张 $\mathfrak Q_{\mathrm{sew}}^H$。独立 global 侧用同一规则定义 $\mathfrak Q_M^H$；$\operatorname{Ass}$ intertwines $K$ 及其幂，所以 §4 的同构同时扩张到它们。

自由解上的 $H$ 守恒，故 $H_\eta=(\int\eta)H$ 也在此类。加一个共同有限 vacuum-energy constant 不改变证明。这一显式扩张不宣称任意 boundary-supported stress tensor 或其 sharp products 已存在；这些对象仍须单独指定 boundary renormalization。关于 reflecting boundaries 的 Wick 问题，可比较 [Dappiaggi–Nosari–Pinamonti, §§2.2、3.3](https://arxiv.org/html/1412.1409v2)，不能用其 plates 结果替代本 interval 的定义域核查。

## 7. 两个 No-go

**固定旧 contractions 的 tensor quotient 不成立。** 异侧元素在普通 tensor product 中 commute；transparent $E_{\mathrm{sew},12}$ 一般非零。任何保持物理场标签的 algebra homomorphism 必须保持 commutator，因此不能从该 tensor quotient 得到 sewn fields。同侧 $E_{\mathrm{sew},ii}\ne E_{i,D}$ 还排除了逐场保留旧同侧 CCR 的映射。

**所有 canonical fields 不能同时是 bounded elements。** 若 bounded $A,B$ 满足 $[A,B]=c1$、$c\ne0$，则

$$\begin{align}
[A,B^n]=ncB^{n-1},\qquad
n|c|\|B^{n-1}\|\le2\|A\|\|B\|\|B^{n-1}\|.
\end{align}$$

$B$ 不可能 nilpotent：若 $B^n=0$ 的最小 $n$ 存在，上式的代数恒等式给 $B^{n-1}=0$。故可消去非零 norm，让 $n\to\infty$ 得矛盾。因此包含 fields、Wick composites 和能量的扩张须使用本类 formal/unbounded observable algebra。

## 8. 核验范围

**Verified:** polynomial Wick closure、§2.1 在明确 off-shell interior domain 上的 equicausal 扩张、response-derived kernel、on-shell $\star$-ideal、sewn/global 双向同构、增强对象上的交换性，以及上述 central presentation 和 polynomial core 的自由总能量扩张。Mathematica 检查正常序四次变换、flat-Moyal 能量反项及相关有限恒等式；这些检查只验证代数系数。

**Assumptions:** 有限静态 scalar intervals、$m>0$、smooth histories、物理 Dirichlet、无真实 interface action；bulk coefficients 在真正物理边界之外紧支撑；polynomial field degree 每个形式系数有限；所有 Wick choices 双向对应。总能量采用 §6 的独立 on-shell 正常序扩张。

**Not verified:** 整个经典 $\mathcal H_\beta$ 的量子化、任意非线性 history substitution 对同一 equicausal 类的稳定性、任意 sharp boundary composites、无限切分、Hilbert 表示或 state sewing。
