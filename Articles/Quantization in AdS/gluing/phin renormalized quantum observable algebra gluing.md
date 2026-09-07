# Renormalized Interacting Quantum Observable Algebra Gluing for Phi-n

**结论。** 对固定整数 $n\ge3$ 的 switched scalar model，存在一个由 off-shell local polynomial insertions、renormalized time ordering 和 quantum Møller images 构造的 formal interacting algebra。在同一 transparent free response 和相同 renormalization rule 下，regional sewing 与 quantum Møller maps 相容，sewed algebra 与独立 global interacting algebra exact 同构。其 classical limit 在所选 local polynomial generators 上恢复已有的 $\phi^n$ sewing。

原证明针对 $1+1$ 维 interval cells。§2.1 补入 smooth torus/Klein 矩形自粘合的定义与 comparison theorem；真实角点/锥点上的 renormalized insertions 不由此获得。与自由理论一样，完整相容 history-family 的量子闭合和 exact quotient 仍是独立于这里的 bulk insertion theorem 的问题。

这里的 quantum regional object 保留 action、histories、response 和插入标签。它不等于两个已在 artificial reflecting walls 上独立重整化的 algebras；也不声称整个经典 $\mathcal H_\beta$ 或整个 equicausal class 都被 $\Psi_\lambda^{\pm *}$ 保持。自由输入和 polynomial Wick class 见 [free scalar renormalized quantum observable algebra gluing](<free scalar renormalized quantum observable algebra gluing.md>)，下称 [Q0]；经典 maps 见 [phin smooth regional observable algebra gluing](<models/phin smooth regional observable algebra gluing.md>)。

## 1. Action 与量子约定

[Scalar closure §§5–7](<scalar observable sewing closure.md>) 将本文的 formal insertion-generated 目标写成区域 collar/insertion source 的商，并给逐图、逐阶 Cauchy-coefficient kernel 判据、相容 finite-renormalization 变换及有限组合。其新 trace-dual classical theorem 与本节的 quantum function class 分开；不因此宣称全 history-equicausal substitution 或独立 reflecting-wall renormalization 已完成。

沿用 $1+1$ 维、有限 interval cells、$m>0$、物理外端 Dirichlet 和早期自由窗。$g_i$ 实且 smooth，时间支撑在固定 $J\Subset I^\circ$，在真正物理外端附近为零；人工 cut 上允许非零，全部 jets 按共同方向匹配。

区分正势能 density 与相互作用作用量：

$$\begin{align}
S_\lambda[\phi]&=S_0[\phi]+V_\lambda[\phi],&
\boxed{V_\lambda[\phi]=-\frac{\lambda}{n!}\int g\,\phi^n.}
\end{align}$$

于是

$$\begin{align}
L_0\phi+\frac{\lambda g}{(n-1)!}\phi^{n-1}=0,\qquad
L_0=\partial_t^2+K.
\end{align}$$

在 $S_R(V)=\exp_{T_R}(iV/\hbar)$ 的 convention 中，$V$ 必须取上式的负号。全部级数在 $\lambda,\hbar$ 中形式解释。

每个 isolated regional fiber 的 free quantum algebra 先由其自身 $K_{i,D}$ 定义。Regional interacting package 还保留局域 action density $-g_i\phi_i^n/n!$、其插入标签、完整 history transport 和 response。若 $g_i$ 接触 artificial reflecting wall，不能仅凭 bulk Epstein–Glaser theorem 宣称该 isolated wall theory 已有包含全部这些插入的 $T_{R,i}$；本构造在 transparent response sewing 后处理跨 cut 插入。

有 corners 时，“完整 history”按 [Q0, §1.1] 指实际区域 joint trace 及时间/初始数据的相容域；不指各 face histories 的直积。其变化、response 和转置也必须在该域上定义。自粘合只把同一区域的若干 boundary slots 配对，$S_0$ 与 $V_\lambda$ 各计一次。Field、$g$、所有有限 jet 插入及有限 counterterm coefficients 均须按 sewing charts 匹配，Klein 的 orientation reversal 使用 scalar/tensor 的坐标变换与正 density。

## 2. Free Sewing 后的 Off-Shell Insertions

用 [Q0] 的 regional quadratic forms 和 causal response 得到

$$\begin{align}
K_{\mathrm{sew}},\quad
G_0^{R/A},\quad E_0=G_0^A-G_0^R,\quad W_0.
\end{align}$$

在 sewn off-shell field space 上，令 $\mathcal P_\mu$ 为 [Q0] 的 compactly supported polynomial Wick class，$\mathcal P_{\mathrm{loc}}\subset\mathcal P_\mu$ 为 smooth compactly supported finite-jet polynomial densities 的积分。它们位于 [Q0, §2.1] 的更大 interior equicausal $\star$-algebra 内；本文的 $T_R$ 只在这些 polynomial local labels 上构造。允许其跨人工 cut，但整体 density 必须 smooth；它们的支撑避开真正物理边界。用多线性插入列表保留 multilocal labels。

Renormalized time ordering 的正确类型是

$$\begin{align}
T_{R,k}:\mathcal P_{\mathrm{loc}}^{\otimes k}
\longrightarrow\mathcal P_\mu[[\hbar]].
\end{align}$$

输出无需是有限个 local functionals 的普通乘积。例如 quartic insertions 的一次 contraction 含有

$$\begin{align}
16\hbar\int f(x)h(y)W_F(x,y)\phi(x)^3\phi(y)^3\,dx\,dy,
\end{align}$$

其 bilocal kernel 一般不是有限秩。该项属于允许的 polynomial distribution class；不能把目标错误地限制在“local functionals 的有限 multilocal span”。

这里

$$\begin{align}
W_F=W_0-iG_0^A,\qquad L_0W_F=-i\delta.
\end{align}$$

所选 $T_R$ 满足 causal factorization、symmetry、unitarity、field independence 以及相容的 off-shell field-equation/contact-term normalization。其扩展在 off-shell 插入上实施。

还固定 graph 的 $\hbar$ grading 和 classical normalization：retarded tree terms 取经典 Volterra expansion 的分布核，量子有限修正从正的 $\hbar$ 阶开始。对这里无导数的 interaction，tree kernels 可沿树从叶向根逐次使用 $G_0^R$，finite-jet insertion 则对所得核取导数；不存在需要选择 loop extension 的闭合回路。这给与 classical equation 相容的 tree prescription。不能另加改变 $\hbar^0$ dynamics 的有限 counterterm 后仍声称量子化同一个经典模型。

**这个 interval 模型中的构造范围。** [Q0] 的 reflected kernel 在内部局部 diagonal 附近有普通 Hadamard singularity。所有顶点位于避开真正边界的 compact set。对互异顶点，反射光线仍严格按时间定向；Feynman graph 的乘积可按 causal factorization 构造，反射不会产生零时间长度的内部返回光线。Partial diagonals 上先使用已经构造的较低阶 products；剩下的 total diagonal 位于普通内部邻域。每个 fixed polynomial graph 有有限 scaling degree，因此可逐阶作局域分布延拓。所有 finite counterterms 也支撑在这些内部 diagonals。

这里还须证明值域属于 $\mathcal P_\mu$；单有 finite scaling degree 只给 distribution extension，不能代替 wavefront 控制。对该静态模型可以补上如下证明。在未 smearing 的 graph kernel 中，每条反射 edge 的两个时间 covectors 之和为零。互异点的产品因此满足总时间 covector 守恒。发生完全 cancellation 的 singular subgraph 若非空，取其最大时间 vertex，该 vertex 的非零 incident Feynman covectors 同号，矛盾；内部互异同时间点之间没有 singular edge。

这里固定一个明确的 stationary extension prescription。先不乘 switching 或局部分区函数；静态自由 kernel 使每个未涂抹 graph 在同时时间平移下不变。取共同时间 $T=t_k$、相对时间 $s_a=t_a-t_k$ 及空间坐标，局部写成

$$\begin{align}
t_{\mathcal G}=1_T\otimes u_{\mathcal G}.
\end{align}$$

在 total diagonal 附近，非平凡反射项 smooth，奇异部分由通常的内部 Hadamard distributions 给出。对 relative/transverse variables 作有限 scaling-degree extension，subtraction functions、Taylor subtractions 和有限 normalization constants 均取为不依赖 $T$；空间对角坐标仍作为局部参数处理。先前各阶采用同一选择，causal splitting 的区域与分区也可选为仅依赖相对时间和空间坐标，因此 partial-diagonal induction 保持此性质。得到

$$\begin{align}
t_{\mathcal G,R}=1_T\otimes u_{\mathcal G,R},\qquad
\left(\sum_{a=1}^k\partial_{t_a}\right)t_{\mathcal G,R}=0.
\end{align}$$

该一阶算子的 characteristic set 是总时间 covector 为零的集合。Microlocal elliptic regularity 因而给

$$\begin{align}
\operatorname{WF}(t_{\mathcal G,R})
\subset\{(z_1,\zeta_1;\ldots;z_k,\zeta_k):
\sum_{a=1}^k\zeta_a(\partial_t)=0\}.
\end{align}$$

随后乘 smooth switching 或局部分区函数，或者取有限导数，都不增大 wavefront set；此时不再要求涂抹后的 kernel 本身平移不变。允许的局域有限 counterterms 是 smooth coefficients 乘 diagonal delta 的有限导数，其 conormal covectors 也满足总时间分量为零。把各 field slots 置于其 vertex，并对没有外腿的 vertices 作 compact-support pushforward 时，被积分的 vertex covectors 必须为零，保留的 slots 上时间分量仍求和为零。非零的全同向 causal tuple 的时间分量和不可能为零，因而输出 polynomial coefficients 满足 $\mathcal P_\mu$ 条件。所有外腿位于有限个 compact vertex supports。

**普通参数光滑性不足的 no-go。** $T\mapsto\delta(r-T)$ 是 $\mathcal D'(\mathbb R_r)$-valued smooth map，但其联合分布的 wavefront set 为 $\{r=T;\ (\tau,\xi)=(-\xi,\xi),\ \xi\ne0\}$。因此 distribution-valued smoothness 本身不蕴含共同时间 covector 为零。上面的结论使用 stationary kernel 与 $T$-independent extension；非静态背景必须另外证明相应 microlocal estimate。

这给 compact interior polynomial insertions 的 Epstein–Glaser construction；它没有证明 boundary-supported vertices 的版本。采用同一局域 extension rule、相同有限常数及相同 contact-term conventions，才有后面的 comparison。标准局域延拓输入见 [Brunetti–Fredenhagen](https://arxiv.org/abs/math-ph/9903028) 和 [Hollands–Wald](https://arxiv.org/abs/gr-qc/0111108)；反射奇性、总时间 covector 条件及内部支撑是本节另外核查的静态模型输入。这里的 symmetry 首先指插入的置换对称性；一般 Noether/stress-tensor Ward identities 必须分别核查 anomaly 与 normalization，不能从 graph existence 自动推出。

### 2.1 Smooth 自粘合的插入域与 Corner Comparison

采用 [Q0, §4.1] 的 $m>0$ smooth flat torus/Klein 模型。Sewn off-shell fields 在包含原顶点邻域的完整 atlas 上 smooth；插入标签是这个 atlas 上 compact-time、smooth finite-jet polynomial densities。坐标系下的 smearings 可到达并跨过所有 seams 和原 corners。它们是整体 density 的兼容 chart 表示，不能由逐面 sharp cutoff 定义。独立 global 侧使用其自身 smooth quotient atlas 定义同类 labels；$g$ 及其全部 jets 同样在这些 charts 中 smooth，早期自由窗与实 switching 条件保持。

**定义。** Corner 相容的 renormalization data 包括上述 field/test-density domain、[Q0] 已证明的 $W_0,W_F$ kernels、off-shell local labels，以及在每个普通内部 chart（包括原 corner chart）使用的相同 distribution-extension rule、finite coefficients 和 contact-term normalization。主定义直接使用 quotient atlas。Klein 的规则在 orientation-reversing overlap 上按 scalar density 与 tensor indices 变换；cover 表达必须是这些 quotient kernels/contact distributions 和局域规则的提升。对多点核，这要求各槽独立的 deck descent，不能只要求同时变换全部 arguments 的不变性。

**多点下降引理。** 记 $Q=I^\circ\times K$，$\widetilde Q=I^\circ\times\widetilde T$，$\pi:\widetilde Q\to Q$ 为二重 cover，$G=\{1,\kappa\}$ 保持时间和正 metric density。对 scalar distribution coefficients，
$$
\pi_k^*:\mathcal D'(Q^k)\xrightarrow{\cong}
\mathcal D'(\widetilde Q^k)^{G^k},\qquad
\pi_k=\pi^{\times k}.
$$
右侧是不变子空间，$G^k$ 独立作用于每个 slot。因为 $\pi_k$ 是局部微分同胚，pullback 对所有分布有定义；其 inverse 在 compact test density $f$ 上为
$$
t[f]=2^{-k}\widetilde t[\pi_k^*f].
$$
**证明。** 有限 cover 的 density pushforward 将各 sheets 求和，故 $\pi_{k*}\pi_k^*f=2^k f$。对任意 cover test density $\psi$，
$$
\pi_k^*\pi_{k*}\psi=\sum_{g\in G^k}g^*\psi.
$$
若 $\widetilde t$ 在独立 slots 下不变，代入 inverse formula 即得 $(\pi_k^*t)[\psi]=\widetilde t[\psi]$。另一方向直接由 $\pi_k\circ g=\pi_k$ 得到；pullback 的 injectivity 也由第一式给出。逐个 evenly covered chart 上是微分同胚的标准 distribution pullback，有限个 sheet maps 给连续逆，并按其 cotangent maps 保持实际 wavefront cones 与允许的 normal test topology。Tensor coefficients 另带各 slot 的 index transformation；density 始终取绝对 Jacobian。$\square$

只在对角子群下不变的反例为
$$
(\kappa\times\kappa)^*\delta_{\Delta_{\widetilde Q}}
=\delta_{\Delta_{\widetilde Q}},\qquad
(\kappa\times1)^*\delta_{\Delta_{\widetilde Q}}
=\delta_{\Delta_\kappa}\ne\delta_{\Delta_{\widetilde Q}}.
$$
自由 deck action 使两条 diagonals 不交，故这确实否定该较弱下降条件。第 $k$ 阶 quotient total diagonal 的全部提升为
$$
D_k=\pi_k^{-1}\Delta_{Q,k}
=\bigsqcup_{\epsilon_2,\ldots,\epsilon_k\in\{0,1\}}
\{(\widetilde z,\kappa^{\epsilon_2}\widetilde z,\ldots,
\kappa^{\epsilon_k}\widetilde z)\}.
$$
因此必须将同一局域 extension 运输到这 $2^{k-1}$ 个 components；partial diagonals 按每个 vertex block 作同样处理。特别地，按各自 metric volume density 定义 contact kernels 时
$$
(\pi\times\pi)^*\delta_{\Delta_Q}
=\delta_{\Delta_{\widetilde Q}}+\delta_{\Delta_\kappa}.
$$
这里没有额外 $1/2$。把单个 cover diagonal 作平均会得到上述和的一半，已经改变 contact normalization。Inverse distribution pairing 的 $2^{-k}$ 是积分遍历全部 sheets 的补偿，不能挪到 [Q0] 的两项 $W_Q$ kernel 前面。

**逐阶 extension 与有限平均。** 此 smooth 模型的存在性输入仍是普通内部 chart 上的局域 Epstein–Glaser extension，带 §2 声明的 contact/tree normalization；原顶点现在是普通内部点。固定所有低阶 products 后，causal factorization 在 $Q^k\setminus\Delta_{Q,k}$ 唯一固定待延拓 datum，包括已处理的 partial diagonals。在 cover 上使用其 pullback，因果关系也从 quotient 拉回；这是 $G^k$-invariant 的 datum，定义域为 $\widetilde Q^k\setminus D_k$，不是 ordinary covering-torus theory 的另一份 $T_R$。

在第 $k$ 阶，把相互关联的 Wick coefficients 与 contact identities 一起作 extension。满足固定 off-diagonal datum、scaling/WF bounds 和所选 normalization 的 extensions 构成非空实 affine space；其非空性使用本节的局域存在性输入。插入置换与各 slot 的 deck maps 给有限群
$$
\Gamma_k=G^k\rtimes S_k.
$$
群也运输 insertion labels、tensor indices 与所有 lifted contact diagonals。它保持度量、因果方向、已固定低阶 products 及 normalization 右端，因此保持这个 affine space。对一个允许的 extension $t_k$，定义
$$
\overline t_k=\frac1{|\Gamma_k|}\sum_{g\in\Gamma_k}g\cdot t_k.
$$
每一项在 $D_k$ 外都等于同一个 datum，故平均不改变 causal factorization 已固定的部分。有限和保持 scaling upper bound，其 wavefront set 包含于各项 wavefront sets 的并；使用群不变的允许 cone 即保留所需界。Contact/field identities 是本阶 coefficients 的线性关系，有限平均保留它们。Unitarity 也没有要求平均非线性函数：固定低阶后，
$$
T_{R,k}^*-(-1)^{k+1}T_{R,k}
=B_k(T_{R,1},\ldots,T_{R,k-1}),
$$
右侧只含至少两个 proper vertex blocks 的低阶 products。它是对本阶未知量的实 affine-linear 条件，群保持右侧且与 $*$ 相容，故实平均保留此关系。这里的 $*$ 包含对输入 labels 的共轭。这种固定低阶后处理 symmetry/unitarity 的做法与 [Hollands–Wald, §3.1](https://arxiv.org/html/gr-qc/0111108#S3.SS1) 的归纳步骤相同；上述独立-slot 下降则由本引理另证。

所有 lifted diagonals 的 transports 保持时间，共同时间无关的 subtraction 和预先固定的 classical tree terms 均被保留。由下降引理，$\overline t_k$ 唯一下降到 quotient；归纳继续到所有有限阶。若插入 labels 不同，平均作用于随置换一起运输的整组 coefficients，不能只平均一个固定 label 的单独分量。此证明保留已指定且相容的 normalization，不声称群平均能消去另外的 Ward anomaly，也不能用它平均两套已经完成的 $T_R$ families 后自动保留非线性 causal factorization。

相同 quotient 局域规则在 sewn/global 两侧分别实施。固定有限 $n$ 的形式理论允许其 power counting 所需的局域 counterterm labels；本文不声称任意 $n$ 只需有限个 renormalization parameters。

自由 kernel 的 Hadamard/normal-topology 输入已在 [Q0, §4.1] 核查。各 chart 的 graph extension 是 smooth-spacetime 问题；kernel stationary，故 §2 的总时间 covector 证明仍给 $\mathcal P_\mu$ 值域。时间保持的 Klein transition 不改变 causal orientation，smooth chart changes 和 density factors 保持所需 wavefront 条件。因而 §§3、4 的 off-shell/contact-term 和 image-generated interacting algebra 定义适用于这一明确模型。

**定理。** 在上述 labels 和共同 renormalization data 下，§6 的 assembly $*$-isomorphism 以及

$$\begin{align}
\alpha_{\mathrm{off}}T_{R,k}^{J}
&=T_{R,k}^{Q}\alpha_{\mathrm{off}}^{\otimes k},&
\alpha_{\mathrm{off}}\mathcal R_V^q
&=\mathcal R_{V_Q}^q\alpha_{\mathrm{off}}
\end{align}$$

对所有声明的插入成立，并诱导 §6 的 image-generated interacting algebras 的 exact sewn/global isomorphism。这里 $\alpha_{\mathrm{off}}$ 是实际 matched configuration/test-density spaces 上的 off-shell map；不是先取 on-shell 商再定义 time ordering。

**证明。** [Q0, §4.1] 给包括所有 corner neighborhoods 的 off-shell fields、distribution labels、kernels、wavefront/test topologies 与 free on-shell ideals 的双向对应。在 diagonal 外，每条 contraction 因而对应。在 diagonal 上，两侧是同一普通 smooth chart 的坐标表达，所选相同 extension 与兼容 finite terms 给相同局部分布；corner chart 也包含在这个核对中。按 vertex number 归纳得第一式。将它和 Wick intertwining 代入 Bogoliubov formula 得第二式。随后施加相同 free on-shell restriction；每个 global local label 都有实际 chart pullback，因此每个 interacting generator、有限 word 和逐形式系数都有逆像。这个证明给 exact onto，不依赖稠密像论证或 quantum Møller inverse。$\square$

此定理允许在原 corner 附近的 smooth bulk insertions；它没有把某条边或顶点上的 delta-supported interaction 加入 $\mathcal P_{\mathrm{loc}}$。若区域作用量本来含真实 boundary/corner interaction，则需另给相应 insertion space、kernel pairings、stratum-supported extension/finite terms 和 Ward normalization，并证明它们在 sewing 下相容。当前 theorem 不证明这些输入，也不说明每个 corner 必须产生 anomaly 或新的 counterterm。

若矩形 quotient 保留锥点，则 [Q0, §4.1] 的 smooth test-domain/Hadamard 前提尚未建立，不能从 Friedrichs energy 或 CCR 同构推出本节。即使 insertion supports 避开锥点，也须核查所用两点核与全部相关 graph 的 microlocal/extension 条件；仅有各支撑点的局部平滑性不能代替这一步。

## 3. 为什么必须保留 Off-Shell 数据

令 $\ell_f(\phi)=\langle f,\phi\rangle$，$f,h$ 均在内部紧支撑。自由 on-shell algebra 中 $\ell_{L_0f}=0$，但正常的 off-shell time ordering 给

$$\begin{align}
T_2(\ell_{L_0f},\ell_h)
&=\ell_{L_0f}\ell_h+\hbar\langle L_0f,W_Fh\rangle,\\
\left.T_2(\ell_{L_0f},\ell_h)\right|_{\mathrm{Sol}_0}
&=-i\hbar\int fh.
\end{align}$$

右侧一般非零。因此不存在同时保留这个 contact identity、multilinearity 和 integration-by-parts/Action Ward identity 的直接 quotient product

$$\begin{align}
T_2:\mathfrak Q_0\otimes\mathfrak Q_0\longrightarrow\mathfrak Q_0
\end{align}$$

使它仅依赖上述 on-shell equivalence classes。否则第一项输入为零，输出必须为零，矛盾。这是明确的 no-go。

它不否定通过额外 off-shell lifting prescription 定义 conventional on-shell time-ordered fields；它否定把 off-shell $T_R$ 无条件下降到这个商。参见 [Brouder–Dütsch](https://arxiv.org/html/0710.3040)。

故以下始终先计算 $T_R$ 和 quantum Møller maps，最后才施加自由 on-shell restriction。不能把经典 incoming chart $X$ 当作已经容纳所有 off-shell interaction vertices 的空间。

## 4. Quantum Møller Map 与实际 Quantum Class

定义 formal $S$-matrix 和带单个插入的 series

$$\begin{align}
S_R(V)&=\sum_{k\ge0}\frac1{k!}\left(\frac{i}{\hbar}\right)^k
T_{R,k}(V^{\otimes k}),\\
T_R(e^{iV/\hbar},F)
&=\sum_{k\ge0}\frac1{k!}\left(\frac{i}{\hbar}\right)^k
T_{R,k+1}(V^{\otimes k},F).
\end{align}$$

$S_R(V)$ 的 intermediate coefficients 可含 $\hbar^{-1}$。定义

$$\begin{align}
\boxed{
\mathcal R_V^q(F)
=S_R(V)^{-1}_{\star_0}\star_0 T_R(e^{iV/\hbar},F).
}
\end{align}$$

等价地，这是 $(\hbar/i)\partial_\epsilon[S_R(V)^{-1}\star S_R(V+\epsilon F)]_{\epsilon=0}$。与指定插入不连接的 components 在 inverse 中抵消；每个余下 component 连接到插入。含 $k$ 个 interaction vertices 的 connected graph 至少有 $k$ 条 contraction lines，因此其 $\hbar$ 次数非负，loops 再增加次数。每个固定 $\lambda$ 系数的 field degree、graph 数和导数阶数有限。故对 $\mathcal P_{\mathrm{loc}}$ 的插入，输出在 $\mathcal P_\mu[[\lambda,\hbar]]$。

令 $\sigma_0$ 表示自由 on-shell restriction，只在这一步使用。定义

$$\begin{align}
\boxed{
\mathfrak Q_{\mathrm{sew},V}^{\mathrm{int}}
=\operatorname{Alg}_{\star_0}^{*}
\left\{\sigma_0\mathcal R_V^q(F):
F\in\mathcal P_{\mathrm{loc}}\right\}.
}
\end{align}$$

这里精确定义为 ambient $\mathfrak Q_0[[\lambda]]$ 中所生成的 $\mathbb C[[\lambda,\hbar]]$-subalgebra 的 $(\lambda,\hbar)$-adic closure：每个有限阶截断来自有限 words，不对 spacetime coefficients 再取未经指定的 smooth/distribution closure。任意 polynomial local composite 和内部 spacetime-smeared energy/stress tensor 都可作为 $F$；形式 local counterterm labels 按同一阶数规则加入。其乘积闭合于 [Q0] 的 Wick class。

可另加入 [Q0, §6] 的 $H_{\mathrm{in}}$ 及其所需谱权重，得到含总 incoming free energy 的扩张。$H_{\mathrm{in}}$ 是早期自由窗中的实际总能量；在这里不把它送入尚未定义的 $T_R(H_{\mathrm{in}},\ldots)$。

没有使用 $(\mathcal R_V^q)^{-1}$ 在全部 $\mathcal P_\mu$ 或全部 equicausal functionals 上存在这一命题。一个 map 在 local labels 上等于 $1+O(\lambda)$，不足以证明它是某个未声明完整函数空间的 automorphism。上面的 image-generated algebra 已足够证明 exact isomorphism。

## 5. Regional Presentation、Release 与 Quantum Møller Compatibility

取 [Q0] 的 central polynomial parameter algebra $\mathcal C$。只有在实际相容 history 域上的 splitting、response/covector regularity 已证明时，才把它的变量称为 regional mismatch；否则以下是明确的有限参数 presentation，不是旧区域 history-family 的取商定理。先在 off shell 上使用

$$\begin{align}
\widetilde{\mathcal P}_\mu
&=\mathcal C\otimes_{\mathrm{alg}}\mathcal P_\mu,&
Q_0(c\otimes F)&=c(0)F,&
S_0(F)&=1\otimes F.
\end{align}$$

在插入标签上定义

$$\begin{align}
T_{R,k}^{Y}(c_1\otimes F_1,\ldots,c_k\otimes F_k)
&=(c_1\cdots c_k)\otimes T_{R,k}^{\mathrm{sew}}(F_1,\ldots,F_k),\\
V_Y&=1\otimes V.
\end{align}$$

这些公式是实际的 parameter extension，只处理有限 polynomial central parameters。它们不需要一个关于任意 history-uniform equicausal families 的未证明 extension theorem。

逐项得到

$$\begin{align}
Q_0(F\star_YG)&=Q_0F\star_0Q_0G,\\
Q_0T_{R,k}^{Y}(F_1,\ldots,F_k)
&=T_{R,k}^{\mathrm{sew}}(Q_0F_1,\ldots,Q_0F_k),\\
Q_0S_R^Y(V_Y)&=S_R^{\mathrm{sew}}(V).
\end{align}$$

将这些等式代入 Bogoliubov formula，得

$$\begin{align}
\boxed{Q_0\mathcal R_{V_Y}^{q}
=\mathcal R_V^q Q_0.}
\end{align}$$

此时两侧仍是 off-shell expressions。再施加 $\sigma_0$ 得物理 interacting release $Q_V$。Regional presentation algebra 是由 $\mathcal C\otimes1$ 及相应 $1\otimes\sigma_0\mathcal R_V^q(F)$ 生成的 unital algebra，并作同样的 coefficientwise completion；constant-parameter inclusion 给 section。因此

$$\begin{align}
Q_VS=1,\qquad
\ker Q_V=(\ker\varepsilon)\otimes_{\mathrm{alg}}
\mathfrak Q_{\mathrm{sew},V}^{\mathrm{int}}
\quad\text{coefficientwise},\\
\boxed{
\mathfrak Q_{Y,V}^{\mathrm{int}}/\ker Q_V
\cong\mathfrak Q_{\mathrm{sew},V}^{\mathrm{int}}.
}
\end{align}$$

任意 target generator 有显式 lift，任意有限 word 逐项 lift，formal series 逐系数 lift。这是 exact onto，不是 dense image。加入 $H_{\mathrm{in}}$ 时用 $1\otimes H_{\mathrm{in}}$，相同证明适用。

$Q_V$ 是这里定义的 quantum release。它不能在没有额外 intertwiner 证明时直接写成经典的 $\mathsf R_\lambda^*$；两者的相容性由 §7 的 classical limit 给出。

## 6. 独立 Global Interacting Algebra

从 uncut action 独立定义 $K_M,W_M,\mathcal P_{\mathrm{loc},M}$ 和 $V_M=-\lambda\int g_M\phi^n/n!$，采用与 §2 相同的局域 extension rule 和有限 normalization constants，构造 $T_R^M,\mathcal R_{V_M}^q$ 以及

$$\begin{align}
\mathfrak Q_{M,V_M}^{\mathrm{int}}
=\operatorname{Alg}_{\star_M}^{*}
\{\sigma_{0,M}\mathcal R_{V_M}^q(F_M):
F_M\in\mathcal P_{\mathrm{loc},M}\}.
\end{align}$$

这个定义不使用 regional restriction image。自由比较由 [Q0] 的 independent operator assembly theorem 给出。以下作用于 $T_R,S_R,\mathcal R_V^q$ 的 $\alpha_0$ 均指其先已定义的 off-shell lift $\alpha_{\mathrm{off}}$；作用于自由物理 algebra 的 $\alpha_0$ 是诱导的 on-shell map，二者满足

$$\begin{align}
\alpha_0\sigma_{0,s}=\sigma_{0,M}\alpha_{\mathrm{off}}.
\end{align}$$

因此这些式子不让 $T_R$ 作用于 on-shell equivalence classes。

Local density patching 给 $\alpha_0V=V_M$。在互异点，$\alpha_0W_F=W_{F,M}$ 逐 graph intertwine；在 diagonals，相同几何、相同 distribution-extension rule 和相同有限 constants 给相同 counterterms。对 vertex number 归纳，得到

$$\begin{align}
\alpha_0T_{R,k}^{\mathrm{sew}}(F_1,\ldots,F_k)
=T_{R,k}^M(\alpha_0F_1,\ldots,\alpha_0F_k).
\end{align}$$

这是需要验证的 renormalization coherence。它不从经典辛同构单独推出；本构造通过预先声明同一局域规则实现它。

因此

$$\begin{align}
\boxed{\alpha_0\mathcal R_V^q
=\mathcal R_{V_M}^q\alpha_0.}
\end{align}$$

自由 on-shell ideals 同样 intertwine，所以 $\alpha_0$ 将每个 interacting generator 送到独立 global generator。其 inverse 对每个 global insertion 作 smooth restriction；两侧 polynomial degrees、support conditions 和 renormalization choices 相同。故

$$\begin{align}
\boxed{
\mathfrak Q_{Y,V}^{\mathrm{int}}/\ker Q_V
\cong\mathfrak Q_{\mathrm{sew},V}^{\mathrm{int}}
\xrightarrow[\alpha_V=\alpha_0|]{\cong}
\mathfrak Q_{M,V_M}^{\mathrm{int}}.
}
\end{align}$$

这里 $\alpha_V$ 是已构造的 free-reference $*$-isomorphism 在 image-generated algebras 上的限制，不使用未证明的 quantum Møller inverse。对以局域 insertion labels 的支撑定义的 interacting nets，同一生成元的双向对应给 exact local-net comparison。

## 7. Classical Limit 与交换性

先核对相互作用符号。对线性 $F=\ell_f$，

$$\begin{align}
\mathcal R_V^q(F)
&=F+\frac{i}{\hbar}\bigl(T_2(V,F)-V\star_0F\bigr)+O(\lambda^2),\\
\frac{i}{\hbar}\bigl(T_2(V,\ell_f)-V\star_0\ell_f\bigr)
&=\langle f,G_0^R V^{(1)}\rangle\\
&=-\frac{\lambda}{(n-1)!}\langle f,G_0^R(g\phi^{n-1})\rangle.
\end{align}$$

它与经典 retarded correction 一致。任意阶的 $\hbar^0$ rooted trees 对应局域非线性的有限乘积递归；零过去条件固定唯一解。因此

$$\begin{align}
\left.\sigma_0\mathcal R_{V_\lambda}^q(F)\right|_{\hbar=0}
&=F(\Phi_\lambda),\\
\Phi_\lambda
&=\psi-\frac{\lambda}{(n-1)!}G_0^R(g\Phi_\lambda^{n-1}).
\end{align}$$

对 composite insertion，tree expansion 给同一个 classical substitution。首阶 commutator 则由 classical Møller derivative 给

$$\begin{align}
\mathcal V_\lambda
&=\frac{\lambda g}{(n-2)!}\Phi_\lambda^{n-2},\\
(1-G_\lambda^R\mathcal V_\lambda)
E_0(1-\mathcal V_\lambda G_\lambda^A)
&=E_\lambda.
\end{align}$$

故 physical fields 的 classical bracket 是现有模型中的 interacting Peierls bracket，而不是旧 isolated bracket。

此处严格成立的交换图是 off-shell quantum construction 与 release、independent assembly 的相容性：

$$\begin{align}
\boxed{
Q_0\mathcal R_{V_Y}^q=\mathcal R_V^qQ_0,\qquad
\alpha_0\mathcal R_V^q=\mathcal R_{V_M}^q\alpha_0.
}
\end{align}$$

生成元的 tree symbols 不等于整个代数已经有忠实 classical specialization。若记上述 image algebra 为 $\mathcal A_q\subset\mathcal B_q=\mathfrak Q_0[[\lambda]]$，则指定经典目标 $\mathcal A_{\mathrm{cl}}$ 还须满足

$$\begin{align}
\mathcal A_q\cap\hbar\mathcal B_q=\hbar\mathcal A_q,\qquad
\sigma_\hbar(\mathcal A_q)=\mathcal A_{\mathrm{cl}}.
\end{align}$$

一个始终有定义的扩张是：在该 torsion-free ambient 中取包含全部指定 generators 的最小 adically closed、$\hbar$-saturated unital $\star$-subalgebra $\mathcal A_q^{\mathrm{sat}}$，并令 $\mathcal A_{\mathrm{cl}}^{\mathrm{sat}}=\sigma_\hbar(\mathcal A_q^{\mathrm{sat}})$。它存在，因为满足条件的子代数族非空，且交保持这两项性质。Saturation 使 ambient 中的 $[F,G]_\star/(i\hbar)$ 仍在子代数中，并给

$$\begin{align}
\mathcal A_q^{\mathrm{sat}}/\hbar\mathcal A_q^{\mathrm{sat}}
\cong\mathcal A_{\mathrm{cl}}^{\mathrm{sat}}.
\end{align}$$

所以实际 symbol image 是 Poisson algebra，至少包含所有 tree insertion symbols。Ambient assembly isomorphism 双向保持 generators、topology 和 saturation，故该扩张同样 sewn/global 同构。若需要 central presentation，在扩张后重新取相同逐阶 $\mathcal C$-parameter extension，evaluation 与 constant section 仍给 exact quotient。这不把 actual symbol image 未经证明地认作全部 $\mathcal H$ 或原先最小 insertion algebra。

证明见 §§5、6：free Wick sewing 使 contractions 一致，coherent $T_R$ 使每个 renormalized graph 一致，Bogoliubov formula 随后交换，最后的 on-shell restriction 也一致。故对本文已经指定 transparent response 的 regional presentation，先作 quantum Møller construction 再 release，与先 release 插入标签再作该 construction，得到相同 observable；随后与 independently quantized global algebra exact 同构。$\hbar^0$ generators 恢复经典 $\mathsf R_\lambda$ 的 released fields。

这给增强 presentation 上的明确交换性。它还不是从两个各自独立完成重整化的 interacting regional algebras $\mathfrak Q_i^{\mathrm{int}}[q_i]$ 出发的交换定理：当 interaction 接触人工边界时，本稿没有构造那些 algebras 的全部 boundary insertions，也没有给出把其旧 contractions 换成 transparent contractions 的 interacting comparison map。因此不能把上面的等式扩写成这一更强的先分别量子化、再粘合的结论。只保留旧乘积的普通 tensor quotient 已被 [Q0, §7] 的 commutator no-go 排除；更充分的 response-enriched interacting construction 仍需额外证明。

有限多 cells 的全部中间 external ports、corner incidence、joint histories、matched test jets 和同一 renormalization rule 都保留，且每一步属于已验证的 smooth/kernel/insertion class 时，同一个 transmission solution 与同一 graph extension rule 给物理 quotient 上的有限结合性。某个中间阶段只建立能量域或 CCR 时，不能据此调用 interacting Wick 定理。这个论证不声称任意 off-matching extensions 逐点相等。

## 8. Renormalization 不相容的 No-go

**仅由独立有效的 regional schemes 不能推出逐场相容的 sewing。** 例如 quartic Wick insertion 允许的局域有限 normalization 可在两侧分别改变一个 $\hbar c_i\phi_i^2$ 项。若 $g|_\Gamma\ne0$ 且 $c_1\ne c_2$，则两侧的 coefficient $\hbar c_i g_i$ 在 cut 不连续，不能等于一个 smooth global local counterterm。因而“只保留各自方案，不作匹配修正，仍保持同一场标签和同一 interaction”的 strict comparison 不成立。

这个反例只需一组被所声明 renormalization axioms 允许的不同 Wick normalizations；若 $T_1$ 和 Wick powers 已固定，则应在该方案实际允许的高阶 finite-renormalization freedom 内比较，不能任意添加一个被 normalization 禁止的 counterterm。此 no-go 不否定通过相容的有限重整化和 observable redefinitions 比较不同方案。

**经典 $\Psi_\lambda$ 不能代替 quantum Møller map。** 一般有 $\mathcal R_V^q=r_V^*+O(\hbar)$；loops 和 local counterterms 是额外数据。仅用 $\Psi_\lambda$ 共轭一个 free $\star$ 可以得到某个 transported associative product，但没有因此识别它为这里 independently renormalized interacting theory。

## 9. Observable 与证明边界

| 对象或命题 | 本文结论 |
|---|---|
| Polynomial Wick $\star_0$ closure | 成立，固定分布核及全部有限 Wick contractions |
| 内部 local composite fields、spacetime-smeared stress/energy | 可作 renormalized insertions，进入 image-generated algebra |
| 总 incoming free energy | 可按 [Q0, §6] 另行加入，同构保持 |
| 任意时刻的完整总 interacting energy | 还需指定 stress-tensor Ward normalization 与真正物理边界的积分域；不能由内部 smearings 自动推出 |
| 有限 regular central history/mismatch parameters | §§2、5 的明确类中成立 |
| Smooth torus/Klein 自粘合的 bulk local insertions | §2.1 的完整 matched charts 与共同 scalar-density scheme 下，comparison exact |
| 真实 boundary/corner-supported 或锥点 insertions | 本文未构造其 renormalized extension；不能由能量或 CCR sewing 推出 |
| 整个旧 history-uniform equicausal 类被 $\Psi_\lambda^{\pm *}$ 保持 | 未证明；本文不使用此命题 |
| Quantum Møller 与 release/global comparison | 在声明的 off-shell domain 与 coherent scheme 上严格成立 |
| 先独立量子化各 interacting region，再粘合 | 未证明；不能由已经使用 transparent response 的 presentation 推出 |
| 强耦合实际 quantum theory、形式级数收敛 | 未证明；经典强耦合能量界不证明这些命题 |

**Verified:** 以上 interval 模型的 off-shell/contact-term 修补、Møller 符号、polynomial insertion construction、两个 intertwining identities、exact parameter quotient 和独立 global isomorphism；§2.1 在声明的 smooth torus/Klein matched domains 与共同 scheme 下的 extension/comparison 证明，包括逐槽 distribution descent、全部 lifted diagonals 与固定低阶后的 affine averaging。Mathematica 检查 Feynman 接触项符号、有序 Green identity 和 $\phi^n$ normalization；本轮 [Q0] 的 11 组检查包括 reflection density、jets、kernel normalization 和 finite Wick covariance。一般 graph/分布延拓论证在正文，不是符号程序的结论。

**Assumptions:** 原定理采用 [Q0] 的静态 scalar interval、固定有限 $n$、compact-time smooth switching、外端附近 $g=0$、cut 全 jets matching、early free strip；局域 polynomial insertions 的支撑避开真正物理边界；共同 Wick、Epstein–Glaser extension 和 finite-normalization choices，以及同一个 classical tree normalization。§2.1 单独采用 $m>0$ smooth flat torus/Klein、完整 corner charts/test-density topology 和 orientation-reversal-compatible scheme；真实 history mismatch 解释另需相容域上的 splitting/transpose 定理。

**Not verified:** 六项旧量子声明对整个原始 equicausal/history 类同时成立、矩形完整 history-family 的 exact quotient、任意 sharp boundary/corner operators、锥点处的 renormalized quantum extension、任意 scheme 的逐场相容性、full smooth-Hamiltonian quantization、非微扰 quantum existence、无限切分或 state/representation sewing。
