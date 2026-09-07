# Scalar Classical and Renormalized Quantum Sewing Audit

日期：2026-09-06。审计对象是本次工作区中的导入文件与当前模型笔记；导入稿所引用的历史基准为 commit 7298e8073f3689d9c6ac19cfebb9d4f001d6856d。本次不将旧对话中的“已证明”或脚本通过标签作为证明。

本文件 §§1–10 保留上一轮针对旧导入稿的审计范围与运行记录。随后修订的结论和复验见 §§11–12；§12 是 2026-09-07 的 corner 修订。旧稿的否定判定不直接适用于已按本文修补的 Q0/Qn。

**判定：经典两处修补正确；两份 renormalized quantum 稿的整体无条件判定不成立。** 前者补清实际域与 history 代表即可保留原模型的核心 classical sewing。后者除了尚未证明的高阶 microlocal regularity，还存在 off-shell/on-shell 对象混用、相互作用符号、time-ordering 值域和 quantum release map 未定义等问题。下面给出可保留的结论、反例与已经落实的修补。

## 1. 文件范围与结论

| 导入文件 | 审计结论 |
|---|---|
| [01_audit_phi4_phin.md](<../../../01_audit_phi4_phin.md>) | 两处实际域／辅助 history 修补正确。Volterra、regular transpose、$D\mathsf P_\lambda$、严格左逆和 exact onto 的核心证明保留。 |
| [02_observables_and_sewing_formalism.md](<../../../02_observables_and_sewing_formalism.md>) | Split-sewing theorem 在所列 retraction/transpose 条件下正确；这些条件不是一般 PDE 或任意 Poisson algebra 自动具有的性质。 |
| [03_nonperturbative_strong_coupling.md](<../../../03_nonperturbative_strong_coupling.md>) | 固定耦合的 regular-existence-domain theorem 与限定 separable single-hump、非负偶次势的全数据能量证明成立；没有证明一般 signed switch、无 incoming strip 或量子强耦合。 |
| [quantum_regional_observable_algebra_sewing.md](<../../../quantum_regional_observable_algebra_sewing.md>) | Response-enriched CCR 与 cylinder deformation 的代数论证成立，须保留 exact source-space comparison 的输入；非线性 transported-star theorem 是条件定理，不是 renormalized interacting identification。 |
| [01_renormalized_quantum_algebra_expansion.md](<../../../01_renormalized_quantum_algebra_expansion.md>) | Wick/equicausal 扩张方向正确。其 boundary/history 类与 $R^*,B^*$ 的全类 mapping properties 尚未证明；§5 与 §6 的“physical slots”须区分。 |
| [02_phin_renormalized_interacting_quantum_sewing.md](<../../../02_phin_renormalized_interacting_quantum_sewing.md>) | 六项条件并未全部建立。§§3、5–9、11 的对象或推理有下述缺口；Møller identity 在正确的 off-shell domain 和 coherent products 上可严格证明。 |

[phi4_phin_audit_and_nonperturbative_sewing_7298e80](<../../../phi4_phin_audit_and_nonperturbative_sewing_7298e80/README.md>) 中三份 Markdown 与根目录副本逐字节相同；其 README、checks.py 和保存的结果也纳入检查。较早对话对应的 classical 修补已在当前 [smooth regional observable algebras and symmetries](<smooth regional observable algebras and symmetries.md>) 与旧 classical note 中记录，没有发现另一份遗漏的根目录审计正文需要复制。

## 2. 经典修补的证明

### 2.1 实际局部代数的对称性

若 $s:U\to sU$ 是 symplectic map，pullback 给的是

$$\begin{align}
s^*:\mathcal H(sU)\longrightarrow\mathcal H(U),\qquad
X_{s^*F}(x)=Ds(x)^{-1}X_F(sx).
\end{align}$$

只有 $sU=U$ 才是同一局部代数的 automorphism。反例取 $U=\{1<Q<2\}$ 和 $s(Q,P)=(-Q,-P)$，则 $F\circ s$ 对一般 $F\in C^\infty(U)$ 根本没有定义。

偶次势的 sign 与满足几何／coupling symmetry 的有限 reflection 群，可把存在域作有限 saturation；低阶 bound 取有限最大值，允许耦合半径取有限最小值。Mismatch 邻域取有限个变换后的交，再在辅助 history 方向饱和。存在证明和逐函数 section 均保留。奇次势的 sign 则还改变 $\lambda g$，属于模型间 covariance。

这已分别写入 [phi4](<models/phi4 smooth regional observable algebra gluing.md>) 的 §10 和 [phin](<models/phin smooth regional observable algebra gluing.md>) 的 §4。

### 2.2 物理 History 的辅助代表

令 $\mathcal N_I=\{h:h|_I=0\}$。Normalized regional lift 和 compactly switched nonlinear source 在物理时间窗中均不依赖这些延拓方向，但 cut 选用了 $\kappa\gamma\Phi_\lambda$ 这个代表。因此代表空间中的完整 matching locus 是

$$\begin{align}
\mathsf R_\lambda(X)+(0,0,\mathcal N_I),
\end{align}$$

物理 history 商中才恰为 $\mathsf R_\lambda(X)$。

在 $\mathcal N_I$ 方向饱和的域上，$DF[(0,0,h)]=0$ 沿整条 fiber 的直线积分，给 $F(y+(0,0,h))=F(y)$。不饱和开域上的两个不连通代表分支可以分别取常数 $0,1$，所以局部梯度条件本身不够。

$\mathsf B$ 消去这些方向，$\mathsf R_\lambda$ 下降成物理 restriction class，所有 covector pairings 保持，故 $\mathsf B\mathsf R_\lambda=1$ 和 $G\mapsto G\circ\mathsf B$ 均保留。这已修订两模型的定义、matching 与实际域表述。

### 2.3 核心 Classical 机制

对 regular transpose $A(x)=D\mathsf R(x)^\flat$，

$$\begin{align}
\mathsf P(y)&=D\mathsf R(\mathsf B y)A(\mathsf B y),&
A(x)\mathsf B^\flat&=1.
\end{align}$$

坐标 $y=\mathsf R x+w$、$\mathsf Bw=0$ 在固定 $w$ 上给同一个 $\Omega$，因此 Jacobi 来自叶上的辛括号；全类 closure 还使用完整梯度

$$\begin{align}
U_{\{F,G\}}
={}&DU_F[\mathsf P U_G]-DU_G[\mathsf P U_F]\\
&+\mathsf B^\flat\left(
DA[A U_G]U_F-DA[A U_F]U_G\right).
\end{align}$$

最后一项在固定 reference support 中，不能删除。Release 的 vector 为 $A\,U_F\circ\mathsf R$，而任意 $G$ 的 lift 有 vector $\mathsf B^\flat X_G\circ\mathsf B$。因此 exact onto 是逐函数恒等式，不是 dense-range 推论。

模型对内部 $\delta_\Gamma$ 先证明 $G_\lambda^A\gamma^*A\in C_t^\infty H_x^1$，再将 $\mathcal V_\lambda G_\lambda^A\gamma^*A$ 作为 compact-time $L_x^2$ source 用自由 $E_0$ 平滑。它没有把界面解错误称为 globally smooth。高阶 boundary jets 先用线性化方程降到 Dirichlet/normal traces；这与相应 Green transpose 的负号相容。

这些 classical 输入支持 [classical_gluing_formalism.md](<classical_gluing_formalism.md>) 新增的机制；一般模型仍须证明自身的 retraction 和 regular transposes。

## 3. 强耦合审计

对 $g=s(t)\rho(x)$、$\rho\ge0$、$p\ge4$ 偶数、$\lambda\ge0$，减去 smooth Dirichlet lift $l$，令 $w=\phi-l$，能量为

$$\begin{align}
\mathcal E(t)=\frac12\int(w_t^2+w_x^2+m^2w^2)
+\frac{\lambda s(t)}{p!}\int\rho\phi^p.
\end{align}$$

其精确导数包含 boundary-driving 项：

$$\begin{align}
\mathcal E'
=\int F_lw_t+\frac{\lambda s'}{p!}\int\rho\phi^p
+\frac{\lambda s}{(p-1)!}\int\rho\phi^{p-1}l_t.
\end{align}$$

Young inequality 给最后一项的上界 $(p-1)$ 倍势能加 $\lambda s\int\rho|l_t|^p/p!$。因此

$$\begin{align}
\mathcal E'\le
\left[p+\frac{(s')_+}{s}\right]\mathcal E
+\frac12\|F_l\|_2^2+\frac{\lambda s}{p!}\int\rho|l_t|^p.
\end{align}$$

原稿正确避开了从开关起点积分 $\log s$ 的发散：由局部存在先到达一个 $t_1>a$，再使用单峰条件
$\int_{t_1}^b(s')_+/s=\log[s(c)/s(t_1)]<\infty$。
这给有限窗能量界，continuation 与 bootstrap 给全部 smooth data 的实际解；任意固定有限 $\lambda$ 都可使用，常数不要求对 $\lambda\to\infty$ 一致。

一般多项式只保留共同 regular existence domains。这里“原点附近非空”的论证采用模型的 $n\ge3$ interaction，原点是解；不能无条件扩张成任意带强外源的 polynomial equation 在任意长 slab 的原点邻域定理。Focusing plateau 的 ODE blow-up 反例正确地否定一般全数据存在，原稿也没有把 plateau data 误称为任意指定 incoming data 的反例。

这是一条 classical actual theorem，与 quantum perturbation 的收敛或非微扰构造无关。

## 4. 高阶 Microlocal 推理没有闭合

原 interacting 稿 §5 从“每个 smooth history density 经 classical transpose 得到 smooth incoming vector”推出“全部额外 physical kernels 都 regular”。这个推论不成立。

例如

$$\begin{align}
F(\phi)=\int f\phi^2,\qquad
F^{(1)}(\phi)=2f\phi,\qquad
F^{(2)}(x,y)=2f(x)\delta(x-y).
\end{align}$$

一阶 density 及其在任意 smooth direction 上的所有导数均光滑，但二阶分布核并不光滑。纯 history $F(q)=\int\eta q^2$ 同样有 $F^{(2)}(t,s)=2\eta(t)\delta(t-s)$。因此 distinguished smooth-density slot 不意味着整个 mixed kernel 的 wavefront set 为空。

这些例子本身可以是 equicausal；它们反驳的是原稿的“全部 higher kernels regular”推理，不是否定所有非线性 pullback。真正缺少的是所有 mixed derivative kernels 的 wavefront relation、分布复合的定义域、proper support 和 compact-background equicontinuity 的联合证明。对某一阶 incoming covector 重新选一个 spacetime representative，不能补上这些 simultaneous kernel estimates。

此外，equicausal 类先定义在 off-shell configuration space；原文的 $X$ 是 on-shell incoming phase space。必须说明使用哪个 off-shell realization、哪些 relations，以及拉回是否在这些 relations 上独立。单写 $\mathcal E_{\rm eq}(X)$ 没有解决这个对象选择。

因此“$\Psi_\lambda^{\pm *}$ 保持整个旧 history-equicausal 类”应标为 **未证明**，不能改称 no-go。新量子笔记使用固定分布核的 polynomial Wick sector 和显式 central-parameter extension；其闭合不依赖上述缺失命题。

一般 equicausal 定理的精确范围已核对 [Hawkins–Rejzner–Visser v3](https://arxiv.org/html/2312.15203v3)：它提供 local/Wick membership 与 $\star$-closure，不提供本模型的非线性边界 shear theorem。

## 5. History 不被收缩只适用于 Prescribed Fibers

导入 free renormalized 稿 §5 按原始 field/history slots 定义 product，history directions 不收缩；§6 却使用 sewn kernel，它的物理叶方向同时移动 regional fields 和共同 history。这不是同一个 product 的自动延续。

若原始 $q_\eta=\int\eta q$ 始终 central，则任何 homomorphic release 的像仍 central。但物理 cut 给

$$\begin{align}
\mathsf R^*q_\eta=\langle\gamma^*\eta,\phi\rangle,\qquad
\{\mathsf R^*q_\eta,\ell_f\}
=\langle\gamma^*\eta,E_{\mathrm{sew}}f\rangle,
\end{align}$$

右端一般非零。量子首阶得到同一矛盾。因此不能同时保留原始 $q$ 的 centrality 和非平凡的 physical field release。

正确的 split product 在 $y=\mathsf R x+w$ 中收缩全部 $x$ directions，仅令 mismatch $w$ central。这不自动证明原始全函数类在坐标变换前后稳定。新稿为该 presentation 单独指定了实际的 polynomial coefficient class，并给出 evaluation kernel 和 section。

## 6. Time Ordering 的接触项 No-go 与符号修补

对于 $L_0=\partial_t^2+K$、$E=G^A-G^R$、$W-W^T=iE$，

$$\begin{align}
W_F=W-iG^A,\qquad L_0W_F=-i\delta.
\end{align}$$

自由 on-shell relation $\ell_{L_0f}=0$ 在 time-ordered product 中产生

$$\begin{align}
\sigma_0T_2(\ell_{L_0f},\ell_h)=-i\hbar\int fh\ne0.
\end{align}$$

所以原 interacting 稿 §§7–9 把 $T_R$ 直接置于“每个 leaf 是 on-shell $X$”上的做法，不能同时保持 multilinearity、off-shell contact identity 和 Action Ward identity。这是一个实际 no-go；它不是“尚未找到证明”。正确做法是保留 off-shell insertions，先取 $T_R$、Bogoliubov map，再施加 on-shell restriction；带额外 lifting prescription 的 conventional on-shell time ordering 不在这个 no-go 的排除范围内。[Brouder–Dütsch](https://arxiv.org/html/0710.3040) 给出同一对象区分的系统讨论。

原稿还取正势能 $+\lambda\int g\phi^n/n!$ 为 $\exp_T(iV/\hbar)$ 中的 $V$。在上述 convention 下，

$$\begin{align}
\mathcal R_V^q(\ell_f)
=\ell_f+\langle f,G_0^RV^{(1)}\rangle+O(\lambda^2).
\end{align}$$

正号的 $V$ 得到 $+\lambda G_0^R(g\phi^{n-1})/(n-1)!$，与现有 classical equation 的 retarded correction 反号。修补为 interaction action

$$\begin{align}
\boxed{V_\lambda=-\lambda\int g\phi^n/n!,\qquad S_\lambda=S_0+V_\lambda.}
\end{align}$$

新 [phin quantum note](<phin renormalized quantum observable algebra gluing.md>) 的 §§1、3、7 已写出修补和 classical-limit 检验。

## 7. Insertion 值域、Quantum Release 与 Global Comparison

原 interacting 稿 §3 的
$T_{R,k}:\mathcal E_{\rm loc}^{\otimes k}\to\mathcal E_{\rm ins}[[\hbar]]$
在 $\mathcal E_{\rm ins}$ 仅指 finite local/multilocal span 时过强。一次 contraction 已产生非有限秩的 bilocal coefficient $f(x)h(y)W_F(x,y)$。新稿让 $T_R$ 输出到允许的 polynomial distributional Wick space，插入的 local labels 则独立保留。

§11 的两个问题也不能由形式记号省掉：

1. 在 local insertions 上定义了 $\mathcal R_V^q$，没有自动定义其在整个 insertion algebra 或整个 equicausal space 上的双向 inverse。
2. 证明 $R_0^*\mathcal R_{V_Y}^q=\mathcal R_{V_X}^qR_0^*$ 后，不能未定义就把 quotient kernel 换成 $\ker R_V^*$；经典 $R_\lambda^*$ 和量子 release 是不同 maps。

修补是直接采用 $\star$-algebra generated by $\sigma_0\mathcal R_V^q(F)$。对 off-shell central-parameter presentation，evaluation $Q_0$ 逐项 intertwines $\star,T_R,S_R$，故 intertwines $\mathcal R_V^q$；取 on-shell 后定义 $Q_V$。每个生成元都有 constant-parameter lift，有限 words 和形式系数逐项 lift，所以确有 exact onto。

独立 global 侧使用自己的 action、kernel、local insertion class 和同一 renormalization rule。自由 assembly $\alpha_0$ intertwines kernel；同一 distribution-extension rule 与有限 constants 对每个 diagonal intertwine $T_R$。于是

$$\begin{align}
\alpha_0\mathcal R_V^q
=\mathcal R_{V_M}^q\alpha_0.
\end{align}$$

$\alpha_0$ 的 restriction/inverse 将两侧全部生成元双向对应，给 image-generated interacting algebras 的同构，无须宣称 $\mathcal R_V^q$ 在更大空间可逆。这是有实际输入和双向证明的 positive theorem。

## 8. Boundary、Energy 与 Scheme 的精确边界

普通 bulk equicausality 不自动处理 reflected wavefront relations、接触真正边界的 vertices 或 sharp boundary composite products。导入稿引用的 [Casimir paper](https://arxiv.org/html/1412.1409v2) 确实研究 plates 的 Wick algebra/regularized energy；它不直接证明这里全部 $1+1$ massive interval history families 与相互作用 boundary insertions。

新 free note 从 interval 的实际 $K$ 给反射 kernel，明确证明 interior polynomial sector；其 §2.1 还逐项核对 contraction theorem 所需的 covector 方向和无单侧零 covector 性质，将自由 $\star$-algebra 扩到明确 off-shell domain 上的 interior equicausal 类。这不使用非线性 history shear。另以 $H_r=\sum\omega_j^r\bar a_ja_j$ 的正常序规则在 polynomial core 上加入总自由能量。任意次数的内部 Wick powers、spacetime-smeared stress tensor 因而可用。Interacting note 包含相应 renormalized local insertions 和总 incoming free energy；任意时刻的完整总 interacting energy 还要求 stress-tensor Ward normalization 与真正物理边界的积分域，不能由“有 local stress insertion”一句话推出。

“任意 independent schemes 自动相容”为假，但原稿的具体 counterterm 例子还须满足该 scheme 允许的 finite-renormalization freedom，并要求 $g$ 在 cut 确实非零。若 $T_1$、Wick normalization 或 scaling rules 已固定，不能任意添加一个被这些规则禁止的项。可选的不同 quartic Wick normalization 已足以给反例；这否定无修正、保持同一场标签的 strict comparison，不否定经过 finite renormalization 后的比较。

“没有证明任意 $T_R$ 作用在整个 equicausal 类”与“bulk theorem 没有证明 boundary extension”都是 **证明缺口**，不是不存在定理的证明。新稿按这一标准使用 no-go 一词。

## 9. 可保留的 Quantum No-go 与结果层次

旧 CCR 稿中普通 tensor quotient 的 cross-commutator 反例正确；若旧同侧 CCR 也改变，逐场保持的同侧 homomorphism 同样不可能。Weyl symplectic isomorphism 本身也正确，但必须先有 exact symplectic label-space isomorphism；单个 Green intertwining identity 不能替代 source-domain 与 onto 的证明。

Groenewold–van Hove obstruction 只在其 standard polynomial quantization、canonical representation 与 exact Dirac-rule 条件下使用；它不排除 deformation quantization。有限模态计算

$$\begin{align}
H_N\star_{\mathrm{Moyal}}H_N
=H_N^2-\frac{\hbar^2}{4}\sum_{j\le N}\omega_j^2
\end{align}$$

正确，否定相应 naive continuum Moyal prescription。它不否定正常序能量，例如

$$\begin{align}
H_r\star_WH_s=H_rH_s+\hbar H_{r+s}.
\end{align}$$

最后保留的是三条不同层次的结论：

1. 修订后的 whole smooth classical algebra sewing，以及限定条件下的 actual strong-coupling theorem。
2. 明确 interior equicausal Wick algebra 及其 polynomial core 的 free sewing、global isomorphism 和增强对象上的 quantization/sewing 交换性。
3. Off-shell local polynomial insertions 加 coherent $T_R$ 的 formal interacting sewing、quantum Møller compatibility 和独立 global comparison。

第 2、3 条不是全部旧 $\mathcal H_\beta$ 的量子对应，也没有解决旧量子稿要求的整个 history-equicausal 类的六项闭合问题。第 3 条的交换性针对已采用 transparent response 的 presentation：quantum Møller construction 与 release/global assembly 交换。它不证明先把每个带人工边界的 interacting region 独立重整化、再作 quantum sewing 的更强交换图。后者还缺 boundary insertion construction 和改变旧 contractions 的 interacting comparison map。该范围收缩来自具体证明缺口与接触项 no-go，而不是将其默认为已证明。

## 10. 可复算检查

导入的 checks.py 经检查后，在 Sage 提供的 Python/SymPy 环境中原样执行数学部分，仅取消向原导入目录写结果的语句：**48 groups 全通过**。运行有 SymPy bitcount deprecation warnings，无错误。这独立复现了其有限恒等式，不把程序输出解读为 PDE 或 microlocal theorem。

本轮另用 fresh Mathematica kernel 作 **30 groups** 检查：$n=3,\ldots,10$ 的 normalization/递归、严格左逆、variable Jacobi、有序 Møller/Green identity、$p=4,6,8$ 的 lifted-energy work identity、Moyal 能量反项、Feynman derivative jump、正常序 quartic coefficients、带谱权重的 Wick energy products 与 action-sign 检查。输入与结果见 [checks](<numerics/renormalized_scalar_sewing_checks.wl>) 和 [results](<numerics/renormalized_scalar_sewing_check_results.json>)。

两份模型、两份量子笔记、本审计、formalism 和两个 README 均通过 Pandoc 解析，无 warning、失效的本文相对文件链接或尾随空白；vault policy audit 通过。Formalism 原始前 313 行逐字节不变，第 314 行原有标题也保留；新增正文从该标题之后开始。

**Verified:** 上述有限符号检查；正文中的域、代表、contact-term/no-go 和 exact homomorphism 的直接证明。原导入文件保持为审计输入，没有覆盖。

**Assumptions:** 每个 theorem 使用其正文的 model、support、domain、Wick 与 renormalization hypotheses；strong-coupling theorem 只针对指定实际 classical model。

**Not verified:** 任意 smooth history families 的全阶 microlocal stability、量子强耦合、一般 boundary composites、无限切分和 state/representation theorem。运行成功不能证明这些命题。

## 11. Observable formalism 与 YM 提取时的后续复审

**判定：在其声明的静态内部支撑和 coherent quantum inputs 下，修订后的 Q0/Qn 主定理成立。** 本轮还补入以下证明与准确边界：

- Q0 §2 给有限 Dirichlet mode sums 的 normal-topology Fourier-tail 估计，因而 on-shell Wick ideal 的极限论证不再只写成“bisolution 所以成立”。
- Qn §2 给 reflected graphs 的总时间 covector 约束和 smooth-parameter diagonal extension，补足输出属于 polynomial microcausal class 的论证；finite scaling degree 本身不代替这一点。
- Qn 区分 off-shell comparison 与 induced on-shell map，精确指定 ambient adic closure；新增 saturation/actual-symbol-image 的 quantum 扩张，但不将它认作整个 classical smooth-Hamiltonian class。
- Classical formalism 的 Noether flux 已加入 quasi-invariance current，并补明 weak-to-smooth patching input 和完整 nonlinear-gradient formula。
- 一般 locality 使用独立 causal support 输入；有限结合性针对 physical quotients，任意 off-matching extensions 不由 transmission 唯一性固定。

新 [general observable formalism](<observable algebra gluing formalism.md>) 给模型无关的充分条件与证明；[1+1 YM classical model](<models/1+1 Yang-Mills classical observable algebra gluing.md>) 给含 framed Wilson operators 的全 smooth exact quotient。详细逐文件审计在 [当前三稿审计](<../../../01_commit_audit_and_repairs.md>)。

本轮实际复现 [scalar 30 组](<numerics/observable_sewing_scalar_recheck_results.json>)，新增 [23 组 finite identities](<numerics/observable_sewing_ym_audit_results.json>)，另得 [两个 xAct/xTras Noether residuals](<numerics/observable_sewing_noether_xact_results.json>) 为零。这里没有重新运行本文件上一轮记录的全部外部 Python checks，也不把这些有限结果称为 microlocal/PDE theorem。

## 12. Corner 修订与独立审查（2026-09-07）

本轮检查实际工作区中的 classical/quantum definitions、sewing maps、theorems 和 proofs。原来的 interval 模型结论按其原维数与边界假设保留；含空间角点的扩展必须提供额外的 joint-domain 输入。有限符号回归和独立文本审查分别记录，不互相代替。

### 12.1 文件与修改

| 文件 | 本轮修改 |
|---|---|
| [classical_gluing_formalism](<classical_gluing_formalism.md>) | 以 side occurrences 处理多个接口和 self-seams；joint trace topology；完整 face/corner response pullback；真实相容 chart、regular dual、extension 与 source-specific quotient theorem。 |
| [observable algebra gluing formalism](<observable algebra gluing formalism.md>) | 同步 classical/CCR/Wick/interacting 定义、证明及有限组合；区分 independent/common-family、matched-space 和 quantum presentation 三种 source。 |
| [classical regional observable algebra gluing](<classical regional observable algebra gluing.md>) | 明确原 interval proofs 的范围，加入 corner-aware definition/reconstruction 输入，保留有限 Sobolev-loss 与 exact-on-to 的原证明边界。 |
| [smooth regional observable algebras and symmetries](<smooth regional observable algebras and symmetries.md>) | 切向 Hamiltonian fields、联合 covector 域、corner response 与 symmetry/extension 条件。 |
| [Q0](<free scalar renormalized quantum observable algebra gluing.md>) | 实际 matched test/dual spaces；massive smooth torus/Klein Wick/equicausal theorem、normal-topology ideal proof；cone CCR 与 genuine corner insertions 的边界。 |
| [Qn](<phin renormalized quantum observable algebra gluing.md>) | smooth corner atlas 上的 density/insertion/renormalization 数据、独立-slot deck descent 与逐阶 extension、exact interacting comparison；不从能量定理推断 singular-stratum renormalization。 |
| [rectangle model](<models/rectangle scalar self-gluing.md>) | 具体 joint-history harmonic-lift/energy IVP、endpoint-separated lift-independent response 及 release/form 双向证明；切向 observable 反例；CCR proof 与更强 family theorem 的明确区分。 |

本轮没有改写 archived/deprecated formulations，也未把上述 scalar 结果推广成一般 gauge/gravity corner theorem。

### 12.2 修补后的命题等级

| 命题 | 判定与证据 |
|---|---|
| 四条边的任意独立 $H^{1/2}$ histories 都可作矩形有限能量 trace | **False.** 相邻常数跳变的跨角点 seminorm 对数发散。 |
| 在真实弱辛 $P$ 上，以切向 Hamiltonian field 定义 $\mathcal H(P)$ | **Proved under the declared smooth weak-symplectic hypotheses.** Lie bracket/Cartan proof 保留全部域条件。 |
| 只令每条开边 flux 匹配就足以处理任意 corner | **False as a general reconstruction assertion.** 必须保留 joint-domain、完整 lower-stratum response、几何和 operator-domain 输入。 |
| 完整 release | **Proved variational identity.** 在允许共同 variations 上，总 response 的 pullback 为零；每份区域 action 只计一次。 |
| 矩形 $C^2(I;H^{1/2}(\partial R))$ 控制的区域 energy IVP 与弱 response | **Proved in rectangle §§5.1–5.2.** Harmonic lift、能量域时间 Green identity、全端点 response 及与 sewn form wave equation 的双向等价；不是任意连续 history 的光滑 IBVP。 |
| 矩形 smooth-vector Hamiltonian 与 CCR 比较 | **Proved in the specified model.** 闭型重构、实际 graph-domain unitary、双向 algebra maps。 |
| 完整 independent regional history-family quotient | **Conditional.** 还需 common-history extension（若使用该中间 source）、$B,DR^\flat,B^\flat$ 和全部 corner/regular-dual/support 保持性。弱响应的存在不提供这些条件。 |
| Massive smooth torus/Klein 的 free Wick/equicausal 比较 | **Proved in Q0 §4.1.** Smooth quotient charts、正谱、normal-topology finite-bisolution approximation 和双向 test/dual maps；包含原 corners 的 neighborhoods。 |
| Smooth torus/Klein 的 interacting comparison | **Proved with declared coherent renormalization data.** Qn §2.1 的 quotient-atlas construction、$G^k$ 多点下降、全部 lifted diagonals 与固定低阶后的 affine averaging；formal insertion-generated algebra 的逐生成子逆像。 |
| Cone/Friedrichs energy 或 CCR 同构推出 cone Wick/renormalized sewing | **Not established.** 需实际 singular kernel、distribution/test domain 和 extension 输入；不把缺少输入称为普遍 no-go。 |

### 12.3 独立审查与复核

独立审查由未参与上述实现的 reviewer 读取修改后的七份证明笔记，并检查实际域、response、quotient sources、rectangle IVP 和 quantum contraction arguments。审查发现并修复：

1. Rectangle introduction 仍把已经修订的两份 formalism 描述为“无空间 junction”；改为明确原版限制与当前定义。
2. Classical formalism 把 point-history evaluation 的排除写成无条件结论，与允许一般 joint regular dual 的新定义冲突；改为仅在原 smooth-temporal-density 类中排除，在更一般类中按真实 continuity、trace 和 regular-dual/transpose 条件判断。
3. 通用 Wick theorem 仅写 smooth off-shell assembly，却用 tensor-kernel identity 推导全部高阶 contractions；修正为连续线性或具有固定线性部分 $L$ 的仿射 map，kernel identity 明确使用 $L\otimes L$。证明保留高阶 chain rule 的适用条件；实际 interval/torus/Klein assemblies 都满足该条件。

**最终独立复审判定：三项 P2 均已修正；在当前明确声明的模型和假设内，未发现剩余可操作漏洞。** Reviewer 对修订后的七份证明笔记复核了 joint trace、完整 response、self-action 计数、Hamiltonian 切向性、非线性梯度、exact quotient 条件、矩形区域 IVP 及 smooth torus/Klein 的 quantum comparison，并另写、执行独立检查。

以上审查记录针对实际修订文本；没有把审查未发现反例当作任意 PDE/microlocal 输入的证明。

### 12.4 Computational checks

- [通用 corner/algebra checks](<numerics/corner_algebra_checks.wl>)：14 组 exact checks 全通过，含 joint response pullback、annihilator、禁止的孤立 corner variation、真实边界项、切向性、普通 Poisson ideal 反例、CCR、组合顺序及 harmonic forcing。[实际输出](<numerics/corner_algebra_check_results.json>)。
- [Classical checks](<numerics/corner_classical_checks.wl>)：8 组 exact checks 全通过，含 compatible chain rule、covector representatives、corner 发散及 self-action 计数。[结果](<numerics/corner_classical_check_results.json>)。
- [Quantum checks](<numerics/corner_quantum_checks.wl>)：11 组 exact checks 全通过，含 reflection jets 至 $(4,4)$、density/Laplacian、double-cover normalization、有限 Wick contractions 和零模边界。[结果](<numerics/corner_quantum_check_results.json>)。
- [独立审查 checks](<numerics/corner_independent_review_checks.wl>)：7 组 exact checks 全通过，使用独立的四维 nonlinear graph 验证完整梯度与 Jacobi，并以 nonlinear canonical shear 的非零 Wick/Moyal 差异说明只要求辛性不足以推出 bare pullback comparison。[实际输出](<numerics/corner_independent_review_results.json>)。
- 本轮共 **33 组实现检查 + 7 组独立检查 = 40 组**。矩形原有 12 种配对和 19 组符号计算保留在其 [原检查记录](<numerics/rectangle_self_sewing_results.json>)，与这 40 组分别记录。
- 最终修订后的七份证明笔记 Pandoc-to-LaTeX parsing 无警告，相对链接、公式环境与 whitespace 检查通过；本审计新增 §12 的链接与解析也通过。历史 §§1–11 中原有的导入源文件链接未纳入本轮修订。

**Assumptions:** 每份定理明列的几何/trace/operator domain、smooth chart、完整 action、regular covector maps、实际 quantum label class 和 coherent renormalization rule。**Not verified:** 未列入本轮 scope 的任意 corner IBVP、完整 rectangular smooth-density family extension、genuine cone/corner renormalization、一般 gauge/gravity corner theorem。

### 12.5 后续 adversarial audit 的证明补充（2026-09-07）

根目录 [corner_adversarial_audit.md](<../../../corner_adversarial_audit.md>) 审查提交 0f1e3618402f07fabed86dbcf5d8eb35d83b85de，另指出两项 P2 和一个可补成显式引理的 proof junction。本节记录对其具体问题的补充，不以该报告的判定或 §12.3 的历史复审结论代替证明。

1. **Response typing 与时间端点。** Classical formalism 的 Regional Action and Dynamics 及 observable formalism §§1–2 区分 $\lambda_i\in\Gamma(\pi_{q_i}^*T^*_{\mathrm{reg}}\mathcal B_i)$ 与总空间 semibasic form $\Lambda_i$；on-shell variation 和 CPS balance 使用 $\Lambda_i$ 的完整 exterior derivative。Rectangle §5.1 给出减去 $[(p,E\eta)]_{t_i}^{t_f}$ 的响应、连续性估计与能量域 Green proof，证明它对全部 $C^2$ histories 定义且与 lift 无关。$\phi=t$ 的反例说明原 compact-test 公式不能直接延用到非零端点。
2. **Release/form 双向桥梁。** Rectangle §5.2 用 $h=(h-E\gamma h)+E\gamma h$ 证明 compact-time release、sewn form wave equation、全端点 release 三项等价；能量唯一性给与独立 closed-form evolution 的双向对应，准确限于 $C^2$-trace 子类。没有假定 compact-time tests 在全 $C^2$ topology 中稠密。
3. **Klein 多点下降与重整化归纳。** Qn §2.1 构造 $\mathcal D'(Q^k)\cong\mathcal D'(\widetilde Q^k)^{G^k}$ 的实际 inverse，保留全部 lifted contact diagonals 及其 normalization；再于固定低阶的 affine extension space 中平均，逐项核查 restriction、causal factorization、scaling/WF bounds、contact normalization 和 unitarity。Q0 §4.1 同步解释两项 kernel 的独立-slot invariance。

**Verified:** 上述解析证明已写入对应正文；另行执行 [Mathematica](<numerics/corner_audit_supplement_checks.wl>) 的 13 组有限恒等式与 [Sage](<numerics/corner_audit_supplement_checks.sage>) 的 17 组有限群/normalization checks，30 组全部通过，实际输出见 [结果](<numerics/corner_audit_supplement_results.json>)。这些是端点反例、outward sign、lift cancellation、deck descent 条件及 unitarity 本阶系数（1–6 阶）的有限核验，不证明无限维 PDE 或分布延拓存在性。

**Assumptions:** Rectangle 保持原能量域、$C^2$ joint histories 和指定 Friedrichs operator；Qn 保持 $m>0$ smooth torus/Klein、quotient kernels、合法 off-shell labels 及相容的局域 extension/contact/tree prescription。

**Not verified:** 全矩形 independent history-family 的 $B,DR^\flat,B^\flat$、regular-dual/support 保持性及 independent-to-common extension；genuine cone 的 Wick/equicausal 或 interacting theory。这些仍保留原来的 conditional/open 等级。

## 13. 新 trace-dual benchmark 与区域 quantum presentation（2026-09-07）

[Scalar observable sewing closure](<scalar observable sewing closure.md>) 给出另外一个明确的函数类及其证明。该类使用 $C^\infty_tH^1$ 区域场、联合 trace 空间 $\mathcal B$ 和 $C_K^\infty(\mathcal B')$ 协向量；没有把旧空间光滑 face-density 假设改名继承。以上 §12 对旧类的未证边界保持有效。

- Harmonic lift 加 cutoff normalization 给实际 regional chart；校正源 $\widetilde f=f+C_\chi E_Df$ 满足 $E_D\widetilde f=0$，故其 advanced/retarded 解相同并有紧时间支撑。这给归一化 lift 的实际 trace-dual transpose。
- $R,B,R^\flat,B^\flat$ 连续、$BR=1$、$R^\flat B^\flat=1$；每个 $G$ 的 $G\circ B$ 属于新类，给 smooth torus/Klein 的 independent-family exact quotient。联合 Hilbert trace 投影另给 independent/common source 的 extension。
- 固定 $n$、$d\le2$ 的 switched 非线性通过 $H^1\to L^{2(n-1)}$、能量估计、早期自由窗及完整背景梯度得到 formal／局部实际版本。
- Quantum source 使用 collar/chart kernel labels，分别给 overlap、Wick 和 on-shell Cauchy-coefficient 关系。Interacting source 的 kernel 由逐图／逐阶 coefficient 判据给出；这不是任意全 history-equicausal family 的量子化。
- 同一声明类上比较局域 labels、自由能量、switched energy balance、有限组合以及相容 Wick／finite-renormalization 变化。

**Verified:** 新正文中的解析推导；保存的 Mathematica driver 25 组检查全部通过，另有 xAct/xTras 完整规范化的 scalar Green-current residual 为零，见 [核验记录](<numerics/scalar observable sewing closure verification.md>)。这是本轮作者的复核，没有新增独立 reviewer 的审计；有限恒等式不证明 PDE、Sobolev 或 microlocal theorem。

**Assumptions:** 新文定义的 joint trace-dual 类、有限静态 $m>0$ 模型、smooth interval/torus/Klein 目标、固定非线性次数及小耦合实际域，量子部分的指定 polynomial／formal insertion 类和共同 prescriptions。

**Not verified:** 旧空间光滑 face-density 类在矩形上的全部转置／延拓；任意 nonlinear equicausal stability；任意 sharp true-boundary composite。锥点、强耦合、态／表示及无限细分按本次约定排除。不存在将上述旧 open 项整体标为 proved 的升级。
