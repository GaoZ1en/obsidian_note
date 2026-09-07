# SU(2) Chern–Simons：非真空 sewing、channel maps 与 Wilson 检测

**在指定的 $SU(2)_2$ integrable boundary-net prescription 下，两份独立 spin-$\tfrac12$ regions 的 Connes sewing 有实际 onto unitary，完整 kernel 是下面的 transport Gram radical，输出为 $H_0\oplus H_1$。** 本文构造 channel maps、bounded charged smearings、Wilson detector 和四 punctures 的 $F$-move；不以 fusion multiplicities 或 abstract Hilbert dimension 代替这些映射。

几何为 [classical bridge](<SU(2) Chern-Simons two-puncture classical bridge.md>) 的两个分离 Wilson punctures，cut 避开 worldlines。该 note 的 classical orbit parameters 不由本篇的 $j$ 值反向定义；这里增加量子化处方，而非证明一切 continuum CS 量子化都等于此处方。

## 1. 区域表示、方向与 normalization

固定 $\hbar=1$、$k=2$、同一 $B(T_a,T_b)=\delta_{ab}/2$，沿用 chord note 的标准 currents $J=-\widehat Q$：
$$
[J^a_m,J^b_n]=i\epsilon_{abc}J^c_{m+n}
+\frac{k}{2}m\delta_{ab}\delta_{m+n,0},\qquad
(J^a_n)^*=J^a_{-n}.
$$
记 $\sigma=\tfrac12$、$\psi=1$。每个 $H_j$ **分别**由 level-$k$ integrable affine highest-weight module 的正形式完成得到，lowest space 为标准 spin-$j$ unitary $SU(2)$ module；vacuum norm 为一。Reference rotations 使用
$$
L_0|_{H_j(0)}=h_j=\frac{j(j+1)}{k+2},\qquad
h_0=0,\quad h_\sigma=3/16,\quad h_\psi=1/2.
$$
从每个区域自己的 smooth loop currents 生成 $\mathcal A_k(J)$ 的 locally normal representation $\pi_j$。单个 puncture 的选择是 $H_\sigma$，不是 source-free vacuum。两圈的 seam 方向相反，以固定 reflection 识别 opposite algebras；outer collars、basepoint、argument cut、puncture tangent marks 和 ribbon framing 预先固定。本文所有比较均保持这些数据。

该 prescribed quantum model 与 classical action 的适用字典是：相同 level normalization；相同 proper／active boundary policy；$J=-\widehat Q$ 修正 Lie term；puncture 由指定 Wilson representation 吸收 gauge transformation；释放的 based seam maps 仍是 chord note 的实际 $H^1$ traces。Positive-energy representations 的 $H^1$ 延拓覆盖非真空 sectors，故 cut group 没有因选择 $H_\sigma$ 而缩水。Classical residue $\lambda$、quantum integrable label $j$、Sugawara shift $k+2$ 是三种不同数据。

## 2. 实际 charged operators：fermion compression

取 $V=\mathbb C^2$、Hermitian generators $t^a=\sigma_a/2=iT_a$。使用 [Wassermann §25，pp.30–31](https://arxiv.org/pdf/math/9806031) 的具体构造：在 $k$ 份 free-fermion Fock space 中选择生成 $H_b,H_a$ 的 irreducible summands，投影为 $P_b,P_a$；选 embedding $\iota_{ab}:V\to V\otimes\mathbb C^k$，使
$$
\phi_{ab}(F)=P_a\,c(\iota_{ab}F)\,P_b:H_b\to H_a
$$
的 lowest-energy coefficient 为所定 $SU(2)$ Clebsch–Gordan map。不同 summand realizations 经唯一 normalized module intertwiners 比较；本文固定一次这些 choices。这里 $c(F)$ 是 CAR field，所以
$$
\|\phi_{ab}(F)\|\le C_{ab}\|F\|_{L^2}.
$$
这既给 actual bounded operator，也给有限能量 modes 的递归。Uniqueness theorem 由
$$
[J^a_n,\phi_{cb}(v,m)]=\phi_{cb}(t^a v,m+n)
$$
与 lowest coefficient 固定所有矩阵元；不能另加一套未定义的 formal vertex symbols。

Raw lowest coefficients 取 $C_{\sigma0}$ 为 identity identification，
$$
C_{0\sigma}(|+\!-\rangle)=1/\sqrt2,\quad
C_{0\sigma}(|-\!+\rangle)=-1/\sqrt2,
$$
而 $C_{\psi\sigma}$ 为标准正归一化 triplet projection：$|++\rangle\mapsto|1,1\rangle$、$(|+-\rangle+|-+\rangle)/\sqrt2\mapsto|1,0\rangle$、$|--\rangle\mapsto|1,-1\rangle$。其他 admissible vector/dual-vector maps 用 adjoint 与同一 spinor duality 固定。

**Argument 与 anomaly。** 取 $\widetilde I\subset\mathbb R$ 投影到 proper interval，$F\in C_c^\infty(\widetilde I,V)$。按 Wassermann §29 固定
$$
\alpha_{ab}=h_a-h_b-h_\sigma,\qquad
a_{ab}(F)=\phi_{ab}(e^{-i\alpha_{ab}\theta}F).
$$
在两条主要通道上 $\alpha_{0\sigma}=-3/8$、$\alpha_{\psi\sigma}=1/8$。Multiplier 不改变 $L^2$ norm；同一 lift 上的 dual field 用共轭 multiplier 定义，使 $a_{ab}(F)^*$ 正好是该 bounded adjoint。不同 charge blocks 不能用同一个未注明的 ordinary-circle branch 替代这些数据。

因此 finite products of these smeared vector fields and their adjoints 在对应 Hilbert direct sums 上都是 bounded operators，domain 为整个 Hilbert space。这一结论使用 **SU(2) fundamental primary 的 fermion-compression theorem**，不把 U(1) 的逐输入 polynomial bound 升级为任意 charged theory 的 boundedness theorem，也不包含 point insertions。

Smooth currents 使用 $\mathcal D_\infty=\bigcap_r\operatorname{Dom}(1+L_0)^r$。CAR mode bound 与 rapid Fourier decay 给 smooth-test $a_{ab}(F):\mathcal D_\infty\to\mathcal D_\infty$：每次与 rotations 对易只把 $F$ 换成其导数及固定 anomaly 常数。微分 loop covariance 在此域给局部 Ward identity
$$
J_a(\epsilon)a_{ab}(F)-a_{ab}(F)J_b(\epsilon)
=a_{ab}(\epsilon^ct^cF).
$$
若 $\epsilon$ 支撑在 $\widetilde I$ 外，右边为零，所以这些是 complement-localized intertwiners。有限 sharp corner-current products 仍不自动保持此域；seam release 使用 bounded net algebras。

## 3. Transport normalization 与独立 Connes source

取圈上两个互补 intervals $I,I^c$。Independent regional source 使用
$$
\mathcal X=\operatorname{Hom}_{\mathcal A_k(I^c)}(H_0,H_\sigma),\qquad
\mathcal Y=\operatorname{Hom}_{\mathcal A_k(I)}(H_0,H_\sigma).
$$
这里是 bounded module intertwiners。定义 $\mathcal X_0$ 为
$$
x=\sum_r\pi_\sigma(g_r)a_{\sigma0}(F_r),\qquad
g_r\in L_IG,\quad \operatorname{supp}F_r\Subset\widetilde I
$$
的 span，并令
$$
x_a=\sum_r\pi_a(g_r)a_{a\sigma}(F_r):H_\sigma\to H_a,
\qquad a=0,\psi.
$$
由 [Wassermann §31 transport theorem，pp.39–40](https://arxiv.org/pdf/math/9806031)，raw CG normalization 下存在固定 $\lambda_0,\lambda_\psi>0$，使所有这类 $x,x'$ 满足
$$
\boxed{\pi_\sigma(x^*x')=\lambda_0 x_0^*x'_0+
\lambda_\psi x_\psi^*x'_\psi.}
$$
这里 $\pi_\sigma$ 是 $\mathcal A_k(I)$ 的实际 normal local representation。$\lambda_a$ 是这套已固定 compressed primary 的 transport coefficients，不是待任意选择的 fusion weights。**实际 unitary trivalent normalization** 定为 $\widehat x_a=\sqrt{\lambda_a}\,x_a$；等价地将每个 charged primary 乘该正数，使上式两个系数均为一。相位保留第 2 节的 CG／dual choices。后文所有 channel isometries 使用这个 transport normalization，不把 raw CG norm 当成 Connes norm。

上述公式也证明 $x_a$ 不依赖 $x$ 的表达式：若 $x=0$，正项和为零，所以每个 $x_a=0$。其 polarized 版本处理 arbitrary finite sums。

在 $\mathcal V_0=\mathcal X_0\odot\mathcal Y$ 上，以 inner product 对第二变量线性定义
$$
G\left(\sum_i x_i\otimes y_i,\sum_jx'_j\otimes y'_j\right)
=\sum_{ij}\langle y_i\Omega,\pi_\sigma(x_i^*x'_j)y'_j\Omega\rangle.
$$
这是 Connes four-point Gram form；通过 vacuum standard form 等于 usual right-bounded-vector definition。$[x_i^*x_j]\ge0$ 使其正半定。Wassermann §30 的 Hilbert-space continuity 与 localized-primary density 证明 $\mathcal V_0$ 在 full Connes product 中稠密，故
$$
\mathcal N=\{z:G(z,z)=0\},\qquad
H_{\mathrm{sew}}=\overline{\mathcal V_0/\mathcal N}
=H_\sigma(\partial D_1)\boxtimes_M H_\sigma(\partial D_2).
$$
反向 seam orientation 通过 standard reflection 确定 $M$ 的 right/left actions。这个 source 没有以 global conformal blocks 的 restriction image 定义。

## 4. 两个实际通道的 kernel、image 与 net action

Independent uncut target 使用 genus-zero affine-primary prescription。先从三个独立 integrable modules 定义 three-point block space $\mathcal B_a$：它是类型 $\binom{H_a}{H_\sigma\ H_\sigma}$ 的 affine primary intertwiners，满足 current Ward identities、lower truncation 和各 module 的 integrable relations，而非 regional restriction images。§2 的 uniqueness 将其嵌入 $\operatorname{Hom}_{SU(2)}(V\otimes V,V_a)$；两个明确的 fermion compressions 给 $a=0,\psi$ 的非零元素，故
$$
\dim\mathcal B_0=\dim\mathcal B_\psi=1,\qquad \mathcal B_\sigma=0.
$$
按 fixed CG phase 和 positive transport norm 取 normalized block basis。独立 global Hilbert prescription 因此为 $\bigoplus_{a=0,\sigma,\psi}\mathcal B_a\otimes H_a=H_0\oplus H_\psi$，current action 只作用于 $H_a$。这里的 block spaces 和 operators 在使用 source sewing map 前已经构造；没有用该 map 的 image 定义 target。定义
$$
C_a^0\left(\sum_i x_i\otimes y_i\right)
=\sum_i\widehat{(x_i)}_a\,y_i\Omega,\qquad
U_0=C_0^0\oplus C_\psi^0.
$$
Transport formula 给 **完整 norm identity**
$$
\boxed{G(z,z')=
\langle C_0^0z,C_0^0z'\rangle+
\langle C_\psi^0z,C_\psi^0z'\rangle.}
$$
因此 $\ker U_0=\mathcal N=\ker C_0^0\cap\ker C_\psi^0$；不只是列 balancing vectors。$U_0$ 延为 isometry。其 range 由 local-loop action invariant，且两个 channel 都非零：两个 raw lowest CG maps 非零，$\lambda_a>0$，$y\Omega$ 稠密。$H_0,H_\psi$ 为不等价 irreducible positive-energy modules，range 的投影只能是两个 scalar blocks，故两块都为一，得到
$$
\boxed{U:H_{\mathrm{sew}}\xrightarrow{\simeq}H_0\oplus H_\psi.}
$$
这是 closed-range／irreducibility 证明，而非从两个 multiplicities 猜 onto。

令 $C_a=\operatorname{pr}_aU$、$u_a=C_a^*$、$P_a=u_a u_a^*$，则
$$
C_aC_b^*=\delta_{ab}1_{H_a},\quad
P_0+P_\psi=1,\quad
\ker C_0=u_\psi H_\psi,\quad
\ker C_\psi=u_0H_0.
$$
每个 channel map 都 onto，完整两通道 map 的 Hilbert kernel 为零。若只选 $C_0$，丢掉的是整个 $H_\psi$，不是再次 quotient cut gauge。

Source local action 在 $\mathcal V_0$ 上先定义：$g\in L_IG$ 左乘 $x$，$h\in L_{I^c}G$ 左乘 $y$。Complement localization 与 loop covariance 给
$$
C_a\,\pi_{\mathrm{sew}}(g)=\pi_a(g)C_a .
$$
Wassermann §31 Corollary 给这些 local-loop actions 向完整 $LG$ 的 extension；它的构造来自 source local action。再用 fixed collars 和 strong additivity，包括经过 sewing endpoints 的 intervals，得到
$$
U\,\mathcal B_{\mathrm{sew}}(J)\,U^*
=(\pi_0\oplus\pi_\psi)(\mathcal A_k(J))
\quad\text{对每个 outer interval }J .
$$
各边都是声明的 realized local algebra，map 为 faithful normal onto $*$-isomorphism。此处 kernel 为零，和 $\mathcal N$、universal current ideal 不同。Self-adjoint smooth-current generators 及其 spectral domains 随同一 one-parameter groups intertwine。完整 $H^1$ cut transformations 的 balancing 用 chord note 的 strong-approximation 证明，因其适用于全部 positive-energy sectors而保留。

## 5. Charged-field comparison 与真实 Wilson detector

对 $x=a_{\sigma0}(F)$，dense sewing formula 直接成为
$$
C_a[a_{\sigma0}(F)\otimes y]
=\widehat a_{a\sigma}(F)\,y\Omega.
$$
所以局域 charged insertion 的 sewing 已由实际 maps 给出；Ward identity 在两侧一致。Products 在按 argument 排序的分离 intervals 上由同一 bounded-primary construction 定义，braiding 使用 Wassermann §§26–29 的带 anomaly 公式。Quantum prescription 包含这些 maps 的 common normalization；没有声称两套随意 regional intertwiners 自动相同。

为定义包围两个 punctures 的 Wilson observable，在 **source sector category** 中取 spin-$\sigma$ probe 的 standard coevaluation
$R:1\to\bar\sigma\boxtimes\sigma$、$R^*R=d_\sigma$。让 probe 绕对象 $X$ 一圈，定义 bounded network morphism
$$
W_\sigma(X)=
(R^*\boxtimes1_X)
(1_{\bar\sigma}\boxtimes c_{X,\sigma}c_{\sigma,X})
(R\boxtimes1_X).
$$
Associators 在该式中按固定 marked ribbon 图插入。这里先定义的是 cup、braid、cap 的实际 composition，不用 $U^{-1}\operatorname{diag}(\cdots)U$ 反向定义 source observable。

Rigidity／unitary ribbon structure 使用 [Gui Theorem 5.1，§5.1，pp.66–67](https://arxiv.org/pdf/1812.04470v8)：type $A_1$ positive integer affine VOA 的 unitary category 与本 net 的 Connes category 等价，保持 charged intertwiners、braid、adjoint 和 twist $e^{2\pi iL_0}$。其 source 是上述 positive-energy representations，故不把任意 CS Hilbert space 套入该 theorem。

由 vector fusion（同一 transport theorem 应用于 $0,\sigma,\psi$）和 rigidity，
$$
\sigma\boxtimes\sigma=0\oplus\psi,\quad
\psi\boxtimes\sigma=\sigma,\quad\psi\boxtimes\psi=0,\quad
d_0=d_\psi=1,\quad d_\sigma=\sqrt2.
$$
$X=0$ 时 loop value 为 $d_\sigma$。$X=\psi$ 时只有 $\sigma$ intermediate sector，double braiding 的标量为
$\theta_\sigma/(\theta_\sigma\theta_\psi)=-1$，所以
$$
\boxed{C_aW_\sigma(H_{\mathrm{sew}})=w_aC_a,\qquad
w_0=\sqrt2,\quad w_\psi=-\sqrt2.}
$$
Independent uncut target 用同一 Wilson representation、orientation、twist 和 standard trace 定义 probe loop，得到相同 $w_a$；于是 $U$ 确实 intertwine Wilson observable。它区分两个 fusion channels，且与 outer local currents 对易。这是 network observable；不把它称为单个 contractible interval 的 vacuum-local field。

## 6. 四个 punctures：由实际 intertwiners 得到 F-move

取四个按 ribbon order 排列的 $\sigma$ punctures，总输出 vacuum。Multiplicity Hilbert space 为
$$
\mathcal K=\operatorname{Hom}_{\mathcal A_k}
\left(H_0,H_\sigma\boxtimes H_\sigma\boxtimes H_\sigma\boxtimes H_\sigma\right).
$$
实际 $u_a=C_a^*$ 构造两套 trivalent bases，所有括号由 Connes associator 补齐。令 $r_a:1\to H_a\boxtimes H_a$ 为 normalized coevaluation，$a=0,\psi$，$r_a^*r_a=1$；这两个对象的 quantum dimension 均为一。先定义
$$
s_a=(u_a\boxtimes u_a)r_a,\qquad
t_0=(1_\sigma\boxtimes u_0\boxtimes1_\sigma)u_0.
$$
再把 $C_\psi$ 的一条 $\sigma$ leg 用 standard $\sigma$ cup $R_\sigma$ 弯转，得到
$$
\widetilde w_\psi=(1_\sigma\boxtimes C_\psi)(R_\sigma\boxtimes1_\sigma):
H_\sigma\longrightarrow H_\sigma\boxtimes H_\psi,\qquad
w_\psi=\widetilde w_\psi
(\widetilde w_\psi^*\widetilde w_\psi)^{-1/2}.
$$
Rigidity 和 $C_\psi\ne0$ 保证它非零；Schur lemma 使括号内为正 scalar，故这是实际 bounded isometry。置
$$
t_\psi=(1_\sigma\boxtimes u_\psi\boxtimes1_\sigma)
(w_\psi\boxtimes1_\sigma)u_0.
$$
每一步都是前文的 channel map、adjoint、cup 或 associator，因而给 actual morphism。$u_a^*u_b=\delta_{ab}$ 证明两套向量各自 orthonormal；两条 admissible intermediate paths 证明它们各自 onto $\mathcal K$。$s$ basis 先合并 $(12)$，$t$ basis 先合并 $(23)$，中间标签均按 $(0,\psi)$ 排列。以下只对 $s_\psi,t_\psi$ 作明确的 scalar rephasing，保留写出的 $s_0,t_0$；不会重定义 §4 的 two-puncture channel maps。

固定 spinor duality $J(v_+,v_-)=(-\bar v_-,\bar v_+)$，$J^2=-1$。取 unit constraints 为 identity；two-cup overlap 因此为 $-1/d_\sigma$。这个符号也由 [Bantay equation (1)](https://arxiv.org/html/hep-th/9610192) 精确检验：
$$
\nu_\sigma=\frac1{\mathcal D^2}\sum_{a,b}N_{ab}^{\sigma}d_ad_b
\left(\frac{\theta_a}{\theta_b}\right)^2=-1,
\quad \mathcal D^2=4,\quad
(\theta_0,\theta_\sigma,\theta_\psi)=(1,e^{3\pi i/8},-1).
$$
将这些实际 adjoint／cup-cap identities 接合得到 Jones relation
$$
e_{12}e_{23}e_{12}=d_\sigma^{-2}e_{12}.
$$
因此其余 overlap 的模由 orthonormality 固定为 $\sqrt{d_\sigma^2-1}/d_\sigma$。以 $s_\psi,t_\psi$ 的 phases 分别令 $\langle t_0,s_\psi\rangle$、$\langle t_\psi,s_0\rangle$ 为正；unitarity 随即固定最后一个 diagonal entry。于是 $F_{ab}=\langle t_a,s_b\rangle$，即 $t$ 坐标等于 $F$ 乘 $s$ 坐标，
$$
\boxed{F=\frac1{\sqrt2}\begin{pmatrix}-1&1\\1&1\end{pmatrix}.}
$$
这保留了 $SU(2)_2$ 的 pseudoreal sign。改变 duality或三价基的 phases 会给 $D_tFD_s^{-1}$；不能在同一 normalization 下直接换成另一符号表。

这个 basis change 检测实际 observables。包围 $(12)$ 与 $(23)$ 的 probe loops 在 $s$ basis 中分别是
$$
W_{12}=\sqrt2\begin{pmatrix}1&0\\0&-1\end{pmatrix},\qquad
W_{23}=F^*W_{12}F=
\begin{pmatrix}0&-\sqrt2\\-\sqrt2&0\end{pmatrix}.
$$
它们不对易，并生成 $M_2(\mathbb C)$；所以该 $F$ 比较整个此例的 channel-observable algebra，远强于维数／character identity。Independent four-puncture ribbon target 由同一 normalized trivalent evaluation 和 twist 构造；cup/Jones relations 给相同 matrices，基向量到实际 $u_a$ 的 map 遂为 unitary intertwiner。

若取正向 exchange 为包含 ordinary spin flip 的 counterclockwise braid，固定 phases 后
$$
R_{\sigma\sigma}^0=-e^{-3\pi i/8},\qquad
R_{\sigma\sigma}^\psi=e^{\pi i/8},\qquad
B_1=\operatorname{diag}(R^0,R^\psi),\quad B_2=F^*B_1F.
$$
它们的平方给 $\theta_a/\theta_\sigma^2$，且 $B_1B_2B_1=B_2B_1B_2$。额外 twist 一次乘相应 $\theta_j$；本例的 auxiliary presentation move 不包含该 twist。

## 7. Level-one control 与范围

同样以两个独立 $H_{1/2,1}$ 开始，Wassermann admissible signatures 只给 vacuum channel；transport sum 只有一项，故同一个 Gram／onto proof 给
$$
H_{1/2,1}\boxtimes H_{1/2,1}\cong H_{0,1}.
$$
这不是把 level-two 的 spin-one space 设成零，而是改变了最初的 integrable prescription。$k=1$ 的四点 multiplicity 为一，不能承担上面的双通道检测。

**Verified:** fundamental compressed fields及其合法 tests／Ward identity；transport-normalized dense channel maps、Gram kernel、onto 和全部 local-net comparison；两通道 Wilson detector；上述 duality／framing 下的 $F$、braid 和非对易 channel operators。外部定理的模型适用关系及实际 maps 均已写出；有限检查见 [本轮 ledger](<../numerics/charged CS bridge claim ledger.md>)。

**Assumptions:** positive integer integrable net prescription，主例 $k=2$；标记的两个／四个分离 punctures；共同 boundary orientation、collars、argument lifts、CAR/CG 与 transport normalization、unitary ribbon structure。本文的完整 kernel 属于指定 Connes source，不属于 raw universal Wilson symbols。

**Not verified:** continuum CS functional integral 导出此 prescription、任意 classical orbit 的 functorial quantization、任意 charged field 的 bounded time-zero completion、geometric corner 吸收 charged endpoint、任意改变 puncture framing 的无相位同一。已构造的 bounded vector-primary products 与这些更大目标不同。
