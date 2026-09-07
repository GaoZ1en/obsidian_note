# 两次提交的独立审计：CS 五个模型、YM multitime networks 与 edge contraction

审计日期：2026-09-07。

仓库：`GaoZ1en/obsidian_note`。

基准：`265b36e900032ccf659381762e24130ede95803e`。

本轮两个提交：

- `a679ef294fece1c173bd5b4c53c6a977767fae3e`：edge contraction / corner fusion。
- `3fd226316894b423923939d7248b4fa97b9c786a`：五个工作包及其解析补强，本文的固定 HEAD。

比较结果为两个提交，不使用后续工作树。审阅 commit diff 与六份新增正文；没有将 commit message、Verified 标签、仓库 Mathematica/Sage/xAct 输出或上轮对话当作证明。没有修改仓库。

## 0. 总判定

**在正文明确的 classical current、universal current、vertex-mode、integrable vacuum-net 和有限 YM network 类上，主要 sewing 结果可以保留。存在一处需要明确测试函数域的 charged-angular-smearing 缺口：若将其理解为任意普通周期 smooth test，结论为假。限定到带 argument 的局部测试或正确的 covering/twisted tests 后，现有逐输入估计足以补全。**

这一缺口不推翻模式算符的共同域、ordered OPE、annulus 的成对 thin-line 阈值，或 common-prescription sewing。另有一处 DtN 与 action-response 的符号说明应补充。没有发现推翻主 quotient 的 P0。尚未证明的跨类别桥梁，应继续标为未建立，而不是用本轮的 vacuum theorem 或 Verlinde-ring theorem 代替。

### 文件索引

下列路径均相对于 `Articles/Quantization in AdS/gluing/`：

| 代号 | 文件 |
|---|---|
| A | `models/U(1) Chern-Simons trivalent junction sewing.md` |
| B | `models/U(1) Chern-Simons annulus sewing.md` |
| C | `models/U(1) Chern-Simons Wilson and vertex extension.md` |
| D | `models/SU(2) Chern-Simons open-chord sewing.md` |
| E | `models/1+1 Yang-Mills covariant multitime networks.md` |
| F | `models/chern-simons edge contraction and corner fusion.md` |

## 1. 实际问题：charged angular smearing 必须有 monodromy-compatible 测试域

### 1.1 位置和等级

C §3，mode coefficients 的逐输入 polynomial growth 之后，文字宣称 smooth angular smearing 给每个有限能量输入一个 Hilbert vector。

正文此前正确提醒了 rational exponents 和 branch/cover，因此不能把它读成作者明确宣称所有 charged fields 都是 ordinary periodic fields。但这里还没有把 smearing 的测试函数空间写出来。**仅选择 logarithm branch，并不能使任意普通周期 smooth test 的 Fourier coefficients 快速衰减。**

等级：测试域尚未明示时是一个具体需要补全的解析条件；若坚持普通周期测试的无条件版本，则该加强命题为 false。mode/ordered-distribution 主定理不因此降级。

### 1.2 明确反例

沿用正文的 vertex prescription，固定正偶整数 k、整数 q,n，并令 |n⟩ 是电荷 n 的 oscillator vacuum。置

\[
d=\frac{q^2}{k},\qquad \alpha=\frac{qn}{k}.
\]

creation exponential 的能量分解给

\[
V_q(re^{i\theta})|n\rangle
=r^\alpha e^{i\alpha\theta}
\sum_{N\ge0}r^N e^{iN\theta}v_N,
\qquad
\langle v_M,v_N\rangle=\delta_{MN}a_N,
\quad a_N=\frac{(d)_N}{N!}.
\]

以固定 branch \(0\le\theta<2\pi\) 和普通周期 test \(f=1\) 定义涂抹。若 \(\alpha\notin\mathbb Z\)，则

\[
\frac1{2\pi}\int_0^{2\pi}e^{i(N+\alpha)\theta}d\theta
=\frac{e^{2\pi i\alpha}-1}{2\pi i(N+\alpha)}.
\]

因此

\[
\left\|\int_0^{2\pi}\frac{d\theta}{2\pi}
V_q(re^{i\theta})|n\rangle\right\|^2
=r^{2\alpha}\frac{|e^{2\pi i\alpha}-1|^2}{4\pi^2}
\sum_{N\ge0}\frac{a_Nr^{2N}}{(N+\alpha)^2}.
\]

由 Gamma-ratio asymptotic，\(a_N\sim N^{d-1}/\Gamma(d)\)。极限级数的项为 \(N^{d-3}\) 阶，故当 \(d\ge2\) 时发散。一个完全落在正文 charge prescription 内的例子是

\[
\boxed{k=2,\quad q=3,\quad n=1,\quad
\alpha=3/2,\quad d=9/2.}
\]

输入 |1⟩ 有有限能量，f=1 是 smooth periodic function，但涂抹结果在 r→1 时的 Hilbert norm 发散。这不是 vacuum-point divergence 的重复，也不是把 polynomial growth 本身否定了；问题来自 fractional monodromy 造成 branch endpoint jump，测试系数仅有 O(1/N) 衰减。

### 1.3 最小修补和证明

最方便的修订是先定义带 argument 的开弧 \(\widetilde I\)，使用

\[
f\in C_c^\infty(\widetilde I).
\]

对任意固定输入电荷 n，\(f(\theta)e^{i\alpha\theta}\) 支撑远离 branch endpoints，可延拓为 smooth periodic function。反复分部积分给任意 M 的估计

\[
\left|\int f(\theta)e^{i(N+\alpha)\theta}d\theta\right|
\le C_{f,n,q,M}(1+N)^{-M}.
\]

逐输入的 vertex coefficients 只有有限次多项式增长，故相应向量级数绝对可控并在 Hilbert norm 中收敛。带有限 oscillator excitations 时，只改变有限次多项式增长指数；对任何给定输入仍可选足够大的 M。有限电荷和的输入逐项处理即可。

其他等价选择：

- 在每个 charge block 使用 twisted test，要求 \(f(\theta+2\pi)=e^{-2\pi i\alpha}f(\theta)\)，全部 jets 同样变换；
- 对全部整数电荷统一采用 period \(2\pi k\) 的 planar cover。对 cylinder normalization，period \(4\pi k\) 是一个统一足够的选择。

这些是测试/单值化数据，不是新的物理 oscillator。smearing、adjoint pairing、sewing comparison 必须在同一 argument/cover convention 下实施。已有逐 mode comparison 随 Hilbert 收敛传给这些合法 smearings。

注意 twisted tests 的 charge-block 版本应注明 charge typing；使用固定局部 argument interval 可以避免把任意 n 混入同一 ordinary-circle test。

此修补与 charged intertwiner 文献使用 arg-valued intervals 的习惯一致，见 [R7]。这里的反例和收敛估计是从本 note 的显式 free-boson 公式直接得到，不依赖该文献作替代证明。

### 1.4 不受影响的结果

1. 每个 formal mode coefficient 在 D_fin 上的定义、其可闭性和 finite mode-word algebra；
2. 固定 radial order/branch 的多点解析乘积、OPE coefficientwise collision；
3. common-prescription matched-source sewing；
4. B §5.1 的成对 annulus thin-line theorem。后者的两份零模相位 \(e^{iqn\theta/k}\) 与 \(e^{-iqn\theta/k}\) 已相消，因而可用 ordinary periodic f。

不能从这个修补推出任意 smeared products 具有一个共同 invariant domain；正文没有声称该加强结果。

## 2. 符号与跨文件 scope 修订

### 2.1 F §2.1 的 Λ 是正 DtN，不是同号的 CPS response

令

\[
u_n(x,y)=\frac{\sinh(n\pi(1-x))}{\sinh(n\pi)}\sin(n\pi y).
\]

左边 outward normal 为 \(-\partial_x\)，因此正椭圆 DtN 为

\[
\Lambda_{\mathrm{DtN}}q_n=\partial_nu_n=-\partial_xu_n(0,y)
=n\pi\coth(n\pi)q_n.
\]

而当前 scalar action 使用 \(\Pi=-\partial_nu\)，所以该静态例子中

\[
\boxed{\Pi=-\Lambda_{\mathrm{DtN}}q.}
\]

正文所算 \(\langle q,\Lambda_{\mathrm{DtN}}q\rangle>0\) 与 Dirichlet energy 都正确。需要修订的是把这份 Λ 叫作 outward response 时，应说明它与 action-response Π 相差负号。没有必要改变 capacity、trace 或信息丢失的 obstruction。

### 2.2 两个提交之间的 quantum claim 边界

F 比五工作包先提交。F 中“universal current/PBW 本身不提供 integrable quotient/fusion”仍然正确，但最终 HEAD 的 D §§7–9 已额外建立指定 vacuum cyclic module 和 vacuum-net sewing。

建议在 F §6、§7、§9 区分：

- **已建立：** fixed-level universal quotient；指定 positive-integer-level vacuum module；独立 vacuum regions 的 Connes sewing；
- **仍未建立：** 当前有物理 boundary currents 的 charged geometric ports 与有限 quasi-Hamiltonian ports 的完整识别，以及非真空 Wilson/intertwiner source 的实际 fusion map、域、channel kernel。

这是版本同步，不应写成“已有 vacuum theorem 已经证明全部 fusion”。

## 3. A：三价 junction 的解析证明通过

三条 rays 采用 \(e_3=-e_1-e_2\)。实际 trace space 是

\[
B_Y=\{(f_j):f_1(0)=f_2(0)=f_3(0),\ \sum_jf'_j(0)=0\}.
\]

必要条件来自一个 gradient 在三个方向上的取值。充分性不能由有限 homogeneous-jet rank check 单独推出，但正文给出的 actual extension 足够：在 e1,e2 坐标中第三 ray 为 (-r,-r)，先延拓 f1,f2；残差 h 的零、一阶项为零；连续 smooth division h/r² 后使用

\[
F(x,y)=\widetilde f_1(x)+\widetilde f_2(y)-c
+xyH(-(x+y)/2)
\]

匹配三条 rays。Seeley extension、smooth division 和固定 partition 均连续，所以 quotient trace topology 确为所列 closed Fréchet subspace topology。这里没有依赖不存在的任意 infinite-jet continuous Borel section。

因此两个独立事实都成立：

\[
\text{三份逐 sector 合法 traces 不一定全局合法},
\qquad
\text{本特殊三射线 geometry 无额外二阶及以上 trace 等式}.
\]

后一个结论仅属于这三条横截直 rays；不能套给高价或相切 junction。

完整 gauge kernel K_Y 包括共同 κ(O) 与两分量 gradient。只逐条去掉另外两条 seams 恒零的 K_j^0，会留下

\[
K_Y/\bigoplus_jK_j^0\cong\mathbb R^3.
\]

证明用 junction value/slopes 的连续有限维映射；其 kernel 正是三份 supported-on-one-seam subspaces，surjectivity 由局部 affine function 乘 cutoff 给出。这三维是 residual gauge quotient，不是 symplectic sector。

短正合列 \(0\to K_Y\to C_Y\to V_D\to0\)、regional symplectic forms 的 seam cancellation、actual skeleton extension 和 PBW argument 一起给 polynomial/current/Weyl exact quotient。这里仍是 corner-tangent admissible current source，不是未经限制的 raw fixed-point algebra。

## 4. B：annulus 零模、proper group 与 thin-line 阈值通过

### 4.1 Framed classical target 确实多于两份 currents

full boundary-trivial gauge group 允许相对 radial winding n，但不允许 angular winding 作为 proper transformation。于是

\[
a=\lambda d\theta+d\phi,\quad \lambda\in\mathbb R,
\quad \Delta=\bar\phi_+-\bar\phi_-\in\mathbb R/2\pi\mathbb Z.
\]

λ 与 λ+m 在此 framed policy 下不是同一个配置。CPS 的零模块为

\[
\Omega_0=k\,d\lambda\wedge d\Delta.
\]

与两份 opposite-chiral oscillator forms 一起非退化。current modes 决定 p=kλ 与 u±，但不能决定 Δ；radial transport 恰检测这一缺失。radial cut 的 K0 quotient 与离散 Z quotient 必须分开，不能把紧坐标硬塞进 polynomial Heisenberg 的矛盾关系中。

选定 \(\hbar=1\)、正偶整数 k、零模 character η=0 后，

\[
p=-i\partial_\Delta,\quad R_0=e^{i\Delta},\quad
H=e^{2\pi ip/k},\quad HR_0=e^{2\pi i/k}R_0H
\]

与 H^k=1 构成正文的实际 prescription。normal form 的忠实性由 shifts、residue classes 和 polynomial zeros 的完整论证得到；不是只以 clock relation 认证。

### 4.2 Thin equal-time theorem 的界限准确

令 d=q²/k。paired creation states 的能量双指标正交，给

\[
\|R_{q,\rho}(f)\Omega\|^2
=\sum_{N,M\ge0}a_Na_M\rho^{2(N+M)}|f_{M-N}|^2.
\]

对任意一个非零 Fourier coefficient，固定差值的子级数具有 \(m^{2d-2}\) 尾。因此 d≥1/2 时严格发散，临界为 logarithmic。不能借 distributional kernel 的某种重新乘法，否认这份特定 Hilbert prescription 的正 norm 发散。

当 d<1/2，mixed-regulator kernel 有可积支配函数 \(C|\sin(x/2)|^{-2d}\)。有限 oscillator 输入只增加有限 Laurent polynomial factors；这点可逐 creation/annihilation commutation 验证，不增加新的局部奇异指数。对 norm 与 mixed inner products 同时 dominated convergence，给 D_fin 每个输入上的实际 Hilbert limit。q 与 -q 的 boundary adjoint pairing 给可闭性。

此 theorem 不证明结果保持 D_fin，也不证明所有薄线可构成共同-domain algebra。固定 k 下整数 q 无界，charge composition 最终越过阈值，因此“将全部 charged modes 换成 time-zero thin operators”的目标被本 theorem 自己排除。

## 5. D：SU(2) classical、module 与 net 是三个不同的正结果

### 5.1 Classical 和 universal current 部分

source-free disk 的 current realization 受 trivial monodromy 限制；全文没有用整个 affine dual 代替它。实际 matching quotient 使用 group-valued joint traces 和 endpoint-compatible based cut maps，继而通过 seam cancellation 得 presymplectic reduction。global loop-to-seam section 可以在 boundary-data presentation 中构造，不需要全局 logarithm。

有限 polynomial current 的忠实性论证也成立：对任何有限维 label space E，选择一个小 interval J，使 E 加 constant labels 后不含支撑于 J 的非零函数；在 J 内选访问两次无共同非零 fixed axis 的 adjoint rotations 的 loop。它排除 E 与 covariantly constant stabilizer vectors 的交，从而使这些 finite currents 在某个 finite slice 上形成 submersion。有限 polynomial 若在真实 phase space 上恒为零，就在开集上恒零。

这不消除 monodromy 条件；只说明它不是有限 smooth linear currents 的 polynomial relation。universal fixed-level current quotient 因而有独立的 Lie/PBW proof。

### 5.2 Vacuum module 的 left ideal 不能与 operator annihilator 混同

D §7 正确使用 integrable highest-weight presentation：

\[
V^k\twoheadrightarrow L_k,
\quad I_k=U_k e_{-1}^{k+1}\Omega.
\]

regional cyclic-vector map 的 kernel 为

\[
U_C\mathfrak b_C+U_C\widetilde e_{-1}^{k+1}.
\]

这是 left ideal；e_{-1}^{k+1} 不是整个 vacuum Hilbert space 上的零 operator。正文 v=f_{-1}^kΩ 的 sl2-string 计算明确证明了这点，避免了常见的“真空 null vector 等于 operator identity”错误。

### 5.3 原始 corner currents 的 domain 反例是真实的

continuous piecewise-smooth labels 一般在 H1，而不在 smooth circle label class。例子

\[
f(\theta)=\theta(\pi-\theta)\quad(0\le\theta\le\pi),
\qquad f=0\quad(\pi\le\theta\le2\pi)
\]

有 \(f_{2m}=-1/(4m^2)\)。J(f)Ω 的 norm 有限，但 L0J(f)Ω 的 norm 含 \(\sum1/m\)，发散。因此不能将所有 raw regional corner-current products 放到 D∞ 上。

正文的处理方式不是忽略此问题，而是先使用 bounded local algebras。Panebianco Proposition 24 对 SU(n) positive-energy representations 的 Hs、s>1/2 延拓确实包含当前 H1 traces [R1]。endpoint cutoff 的 H1 逼近把实际 endpoint-zero cut loops 放进 local cut von Neumann algebra。这些输入的范围与正文吻合。

### 5.4 Connes sewing 有实质的主定理输入

D §9 的 relative tensor product 使用 full Gram radical N0，而不是仅以 balancing vectors 猜 kernel。standard-form identification 下，

\[
F_0\Big(\sum_iT_i\otimes\eta_i\Big)=\sum_iT_i\eta_i
\]

的 norm square 恰为定义 Gram form；故 kernel=radical，standard module 的 identity intertwiner 给 onto。local net 的 crossing-corner image 则需要 strong additivity 和 fused-interval action，而不是这个抽象 Hilbert unitary 本身。

核对 [R2] 后，Corollary 1.34 确为两个 circle vacua 沿 interval Connes fusion 得 sewn-circle vacuum 的定理；Proposition 1.28 提供所需 glued-interval action；Theorem 4.18 的 SU(n) loop-group nets 满足相应局域网输入。所选 collar/smooth structures、orientation 与 reflection identifications 仍是本模型的数据。

于是本轮已实质补上：两个独立选择的 integrable vacuum regions，在指定 Connes completion 下，恢复整个 global local net，包括跨 P、Q 的 intervals。它不等于从 continuum CS path integral 推出这种量子化 prescription，也不包含任意 charged Wilson/intertwiner sectors。

## 6. E：compact-group finite networks 的消去机制成立

本轮比上一轮更强的地方，是证明任意有限 intermediate cut charges 不增加所选 global dynamical envelope 的 physical image。

适配坐标 a=U2、U=U2U1 中，令 Y 为 left multiplication 导出的 opposite-Lie vector fields，C=-ΣY²。每个 cut irrep ν 的 coefficient space 使用

\[
R_{\nu,b}=d\nu(T_b)^T,\qquad M_\nu(U)=\nu(U)^T,
\quad Y_bM_\nu=M_\nu R_{\nu,b}.
\]

transpose 符号正确。Leibniz rule 给

\[
C_\nu=-\sum_b(Y_b+R_{\nu,b})^2=M_\nu^{-1}CM_\nu,
\qquad H_\nu=c(\ell_1C+\ell_2C_\nu).
\]

Cν 保持 C 的每个有限维 Casimir eigenspace，故实际 closures strongly commute；Mν 是 unitary representative-matrix multiplication。因此

\[
e^{-itH_\nu/\hbar}=W_M(t)B_\nu(t),
\quad
B_\nu(t)=\alpha_{\ell_2t/\ell}(M_\nu^{-1})M_\nu
\in\operatorname{Mat}_{d_\nu}(\mathfrak E_M).
\]

这是 exact propagator factorization，不是 formal exponential approximation。

对任何 fixed finite word，从 constant-a input 出发，出现的 cut irreps 由 finite representative multiplications 和 derivatives 决定，集合有限且不依赖 global input spin。把每段传播替换成上述 finite matrix expression；移走 global propagators 后，它们的总时间为零，剩下实际 finite words in E_M。这证明 physical image inclusion；反向来自旧的 invariant lifts。

实际 section 也成立：部分 Hamiltonian H1 在适配坐标中等于 (ℓ1/ℓ)(1⊗H_M)。只演化第一段并重新缩放时间，给忠实的 1⊗E_M embedding。源允许全部 real times，这项假设不可删。

\[
g_w=\operatorname{Av}_\Gamma w-s\mathcal R(\operatorname{Av}_\Gamma w)
\]

给完整、一般无限的 kernel 生成族；构造每个 g_w 只需有限算法。证明它生成 kernel 不要求先判定全 spin 的 matrix-element identities。这是 constructive generating family，不是有限 presentation 或可终止 zero-test。

独立 global contour recipe 与 regional amplitudes 按同一 CG coefficients、action lengths 和 order 对应；它是明确的 finite marked rectilinear Wilson-probe prescription，不是所有 spacetime Wilson curves 的量子化定理。

## 7. F：edge contraction 的主区分与证明成立

### 7.1 Tree theorem

对 full edge-holonomy presentation 与 vertex gauge group，root normalization

\[
h_r=1,\quad h_{t(e)}=U_eh_{s(e)}
\]

令森林上的 holonomies 为 identity，并同步变换每条 incident edge。slice 之间的 residual transformations 在每个 tree component 上为常数；故得到 action-groupoid equivalence，保留 stabilizers。compact G 的粗商 homeomorphism 与相应 regular strata 上的 smooth maps 随之得到。

这个 theorem 不要求 tree edge 是 graph-theoretic bridge。收缩环路中的普通一段边会改变其余 edge labels，却可保留整个 cycle word。真正将 loop generator 杀掉则要求其 holonomy=1。两个 fixed physical endpoint frames 间的 transport 一般不能这样删除。

### 7.2 从 presentation equivalence 到 symplectic equivalence 另需 oriented surface 数据

任意 contractible CW collapse 不保证 quotient 仍为同一种 smooth surface。disk diameter collapse 的 pinch 反例有效。因此 CS symplectic theorem 还需 ribbon order、orientation/fundamental class、peripheral labels、bundle sector 与 boundary reduction 相容。在这些条件下，cup-product pairing 的自然性给 Atiyah–Bott form 保持，再乘正文固定的 CPS normalization。

### 7.3 Fusion 不是 mu-product replacement

AMM Theorem 6.1 的 precise operation 是

\[
(M_1\times M_2,
\omega_1+\omega_2+\tfrac12 B(\mu_1^*\theta^L\wedge\mu_2^*\theta^R),
\mu_1\mu_2).
\]

underlying product space 没有被换成 μ 的像。本文的左/右 Maurer forms、cross-term 正号及 CPS 整体符号被分开记录。前两条 quasi-Hamiltonian identities 的展开正确，minimal-degeneracy 条件明确引用 AMM 的实际 kernel proof，而没有由一次二形式核验推断全部公理 [R3]。

fixed output conjugacy class 的 reduction 与 fusion 本身也分开；相反 orientation 用 inverse moment / negative form。SU(2) 乘积 angle range 保留相对轴信息，不能将它误认成 level-truncated quantum fusion rule。

quantization-to-Verlinde-ring 的 multiplicativity 使用相容 multiplicative prequantization [R4]，与 observable-algebra isomorphism 或 Connes Hilbert fusion 不是同一个 theorem。

**本轮没有完成的桥梁：** 当前真实 physical boundary/current/charged-corner 模型与这份 finite holonomy-port model 的精确对应，以及非真空 quantum intertwiner maps。F 已将它列为未决，不能被五工作包的 source-free vacuum theorem 自动填上。

## 8. Claim ledger

| 命题 | 审计等级 |
|---|---|
| A 三射线 trace image、continuous section、residual R3 gauge | proved in the stated geometry |
| A classical/current/Weyl quotient 与完整 reduction by stages | proved under the declared compatible source |
| B framed annulus full flat quotient、zero-mode CPS | proved in the stated gauge policy |
| B current/compact zero-mode quantization | proved for hbar=1, even k, eta=0 and the stated realization |
| B thin line: q²/k<1/2 / failure at or above threshold | proved for the specified paired prescription and D_fin inputs |
| C smooth regularization、mode core、ordered OPE、common-prescription sewing | retained in the stated mode/branch prescription |
| C arbitrary ordinary-periodic angular test for every integer-charge block | false; explicit k=2,q=3,n=1 counterexample |
| C local arg-valued / appropriate cover smearing | proved after explicitly specifying the test domain as in §1.3 |
| D classical monodromy orbit、polynomial/universal current sewing | proved under stated group/history data |
| D cyclic vacuum-module preimage | proved using integrable highest-weight presentation; left ideal |
| D H1 cut maps and full vacuum-net Connes sewing | proved with the cited representation/net and collar inputs |
| D non-vacuum Wilson fusion maps | not established by these notes |
| E all compact connected-group finite-network physical image and kernel | proved in the full-real-time, finite-word prescription |
| E finite kernel presentation / universal terminating zero-test | not established and not claimed |
| F tree/groupoid equivalence | proved under stated gauge, marking and relation-preservation conditions |
| F reduced symplectic equivalence | proved under the extra oriented-surface/domain conditions |
| F quasi-Hamiltonian fusion | correct application of AMM with declared input sectors |
| F genuine geometric length-to-zero limit | not established and not identified with the tree theorem |
| Single universal quantum sewing theorem for all these targets | not established; target categories and quantization inputs differ |

## 9. 检查记录与可信范围

`checks.py` 为本轮重新编写，没有导入仓库 scripts；实际运行 **36 组** diagnostics，全部通过，详见 `results.json`。包括：junction extension 和低阶 trace ranks、annulus pairing、thin-line coefficients 与 Gauss sum、fractional-monodromy smearing 反例、raw-corner Fourier/domain 例子、affine null-vector 非零例子、compact charged-block Casimir 结构、zigzag phases、tree transport、SU(2) fusion angle、DtN/CPS 符号。

有限 sums 的数值仅展示发散趋势；其证明是 §1.2 的 Gamma-ratio estimate。36 组检查不证明 infinite-dimensional trace extension、operator-domain convergence、Connes fusion、PBW kernel 或任何 PDE theorem；这些分别依赖正文解析推导和明确的外部 theorem inputs。

Research Radar problems 页面本轮访问失败，未取得其卡片内容或状态。上述版本与进度判断仅依据固定 GitHub HEAD。

## 10. 核对的外部主文献

- [R1] Lorenzo Panebianco, *Loop groups and QNEC*, arXiv:2011.10491 v3, Proposition 24。核对 SU(n) 的全部 positive-energy representations 延拓到 Hs、s>1/2 的范围，而非只用一般 H^{3/2} 版本。
- [R2] Arthur Bartels, Christopher L. Douglas, André Henriques, *Conformal nets I: Coordinate-free nets*, arXiv:1302.2604，Proposition 1.28、Lemma 1.33、Corollary 1.34、Theorem 4.18。核对 fused-interval/vacuum sewing 及 loop-group net 输入。
- [R3] Anton Alekseev, Anton Malkin, Eckhard Meinrenken, *Lie group valued moment maps*, arXiv:dg-ga/9707021，Proposition 3.1、Theorems 6.1、8.3、§9。fusion 公式及 finite holonomy 与 Hamiltonian loop-group 的不同层次。
- [R4] Eckhard Meinrenken, *Twisted K-homology and group-valued moment maps*, arXiv:1008.1261，Theorem 4.5。multiplicative prequantization 下的 Verlinde-ring multiplicativity；非 algebra/Hilbert isomorphism theorem。
- [R5] Sebastiano Carpi, Luca Tomassini, *Energy bounds for vertex operator algebra extensions*, Letters in Mathematical Physics 113 (2023), Article 59，Proposition 4.2。even-lattice VOA 的结果不自动涵盖本 note 所有 charged intertwiner test domains。
- [R6] Antony Wassermann, *Operator Algebras and Conformal Field Theory III. Fusion of positive energy representations of LSU(N) using bounded operators*, arXiv:math/9806031。作为后续非真空 bridge 的主文献，不充当本次尚未构造的 maps。
- [R7] Tiziano Gaudio, *Unitarity and Strong Graded Locality of Holomorphic Vertex Operator Superalgebras with Central Charge at Most 24*, Annales Henri Poincaré 26 (2025), 4575–4616，smeared-intertwiner / arg-valued interval 定义及其 Gui references。本文 §1 的修补由显式系数另证。
