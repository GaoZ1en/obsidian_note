# Scalar Classical and Renormalized Quantum Sewing Audit

日期：2026-09-06。审计对象是本次工作区中的导入文件与当前模型笔记；导入稿所引用的历史基准为 commit 7298e8073f3689d9c6ac19cfebb9d4f001d6856d。本次不将旧对话中的“已证明”或脚本通过标签作为证明。

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
