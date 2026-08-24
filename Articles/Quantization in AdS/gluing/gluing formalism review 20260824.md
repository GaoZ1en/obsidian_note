# Review Report — `gluing formalism.md` (2026-08-24)

## 审查对象与方法

- 对象：`Articles/Quantization in AdS/gluing/gluing formalism.md`，$5291$ 行、$383017$ bytes，SHA256 `352c84d4d5b06a7825b9bbd5f81ef60e504eec72d3ae84f7bd07d2406c0fe0af`。
- 方法：逐节阅读全文；对可判定的 finite/closed-form identities 用 Mathematica 独立复算（不复用正文附带的 audit 脚本）；核对与 `formalism.md`、`Fock failure.md`、README 与两级 `AGENTS.md` 的一致性；审计 delimiter/结构/链接。
- 本报告只审查，不改动正文，也不改动 `README.md` / `TODO.md`。

## 总体结论

**在我独立复算覆盖的范围内，正文数学正确，且 claim boundary 与正文各层级自洽；没有发现把 conditional statement 冒充 theorem 的实质错误。** 特别地，finite duplicate-port reduction（B1.0--B1.2）、centered $1$D matrices、residual-lift stiffness scaling、product-cylinder channel lift、Proca $1+1$ 闭环、fractional-power/Gagliardo 论证与 B2 image sum 都逐式通过独立检验；Part I 的 balance-law 与 power-law 符号与 1D/Proca specialization 互相校准一致。

需要处理的是四类问题，按严重度：

1. **[中] 一处 "hard theorem" 标签超出其证明**：`Corollary (hard KG energy-class slice covariance)`（L846）只证了 uniqueness + symplectic invariance，没有 tilted-slice 的 existence/surjectivity。
2. **[中] 一处 hypothesis 写得不够紧**：Part I power-balance proposition（L464--467）中的 $H_i$ 必须是 polarization-adapted Hamiltonian；Proca $1+1$（L1873--1874）正是它与 stress-energy charge 不等的 explicit instance，但 Part I 未提示，读者会误以为两处矛盾。
3. **[低--中] 四组 notation collisions**，其中 $\omega_\kappa$/$\mu$ 在**同一 subsection 内**被 double-book。
4. **[低] Manuscript 卫生**：Change Log 体量与失效路径、正文里 9 处 draft-process narration、Part 编号断裂与一处内容重复。

另有一条 **需用户裁决** 的 governance 冲突：正文的 fiber-product 与 operator-algebraic 表述与 `gluing/AGENTS.md` 的 Required Expository Language 两条禁令不符（见"需要修改的问题"第 6 条）。

## 独立复算结果

Mathematica（exact rational 或 symbolic，除注明外）：

| 检验项 | 正文位置 | 结果 |
| --- | --- | --- |
| $\det(AM^{-1}A^T)=\dfrac{\det(AA^T)}{\det(I^TI)}\dfrac{\det M_{\mathrm{conf}}}{\det M}$（随机 SPD $M$，$n=6,r=2$） | L2799 | residual $=0$ |
| $B^{-1}-B^{-1}A^T(AB^{-1}A^T)^{-1}AB^{-1}=I(I^TBI)^{-1}I^T$ | L4744 | residual $=0$ |
| $P=1-M^{-1}A^TG^{-1}A$：$P^2=P$、$AP=0$、$P^TM=MP$ | L2490 | True |
| $\det C=(\det G)^2$ | L2842 | residual $=0$ |
| staged：$\widetilde G_2=G_{22}-G_{21}G_{11}^{-1}G_{12}$、$\det G_A=\det G_{11}\det\widetilde G_2$ | L3067 | residual $=0$ |
| staged $\kappa$ 逐字复合、$\ker A=I_1\ker(A_2I_1)$、$\kappa^*\sigma$、Hamiltonian pullback | L3050, L3086 | True / residual $=0$ |
| centered $1$D：$A_\Delta I=0$、$M_{\mathrm{conf}}=I^TM^{\mathrm{dup}}I$、$K_{\mathrm{conf}}=I^TK^{\mathrm{dup}}I$ | L3499, L3518, L3531 | True |
| $G_N=4/\rho_N$、$\det M^{\mathrm{dup}}=r_N^2$、$\det M_{\mathrm{conf}}=\rho_N$、coarea factor $=1$、$\nu_{\varepsilon,N}=2\sqrt{2\pi\mathrm i\varepsilon/\rho_N}$ | L2936--2937, L3568 | residual $=0$（$L>0$） |
| $\rho_N(\ddot q+m^2q)+\mathcal F_N=0$，$\mathcal F_N=2q/L-g^Tc$ | L3646 | residual $=0$ |
| $r_N$、$\mathfrak a(e_N,e_N)=(2N+1)/L+m^2r_N$、$\mathfrak a(e_N,u_m)=-A_mk_m^2$（$N=1,\dots,5$ exact） | L3706, L3714 | residual $=0$ |
| $\int_0^L(|h_\ell'|^2+\kappa_\ell^2|h_\ell|^2)=\kappa_\ell\coth(\kappa_\ell L)$；$h_\ell\perp_{\mathfrak a}s_n$ | L3247 | residual $=0$ |
| $\phi'(L)/q=k\cot(kL)$，故 $M(k^2)=-D(k)$ | L1011--1014 | residual $=0$ |
| $C$-estimate 两次 endpoint 分部积分恒等式（$\int\sin(q''+m^2q)=k_n^2\omega_n^{-2}\int\sin q''$） | L1334--1348 | residual $=0$ |
| $t^\alpha=\frac{\sin\pi\alpha}{\pi}\int_0^\infty s^{\alpha-1}\frac{t}{t+s}\mathrm ds$ | L4560--4562 | residual $=0$ |
| cross-interface Gagliardo 积分 $\int_0^\varepsilon\!\!\int_0^\varepsilon\frac{\mathrm ds\,\mathrm dt}{(s+t)^2}$ | L4620 | 发散（`Integrate::idiv`），与正文结论一致 |
| Proca：$F_{01}=E\iff(-\partial_t^2+\partial_x^2-m_A^2)E=0$；Lorenz $\equiv0$；$D_xe^x+m_A^2\alpha\equiv0$ | L1786--1794 | residual $=0$ |
| Proca canonical Hamiltonian density $=\frac{1}{2m_A^2}(\dot E^2+E_x^2+m_A^2E^2)-\frac{1}{m_A^2}\partial_x(EE_x)$ | L1870--1874 | residual $=0$（见问题 2） |
| Weyl 正交补：$\sigma(\mathsf C,\mathcal N)=0$、$\dim\mathsf C+\dim\mathcal N=2n$、$\det(\sigma|_{\mathcal N})=(\det G)^2$、$\sigma|_{\mathsf C}$ 非退化 | L2580 | 数值 $\le3\times10^{-16}$ |
| Woodbury 硬极限 $(\mathbf K_{N,\kappa}+\lambda)^{-1}\to I(I^TB_\lambda I)^{-1}I^TM$，且等于 embedded conforming resolvent | L4716--4739 | $O(\kappa^{-1})$ 收敛；embedded 等式 residual $\sim10^{-16}$ |
| Dirichlet interval image sum vs $20000$-mode sum（$\tau=0$，$\ell=1$，$m=1.3$，三组点） | L4927, L4957 | 一致到 $\sim2\times10^{-9}$（截断误差量级） |
| soft-mode $\langle\xi^2\rangle_\kappa\langle p_\xi^2\rangle_\kappa=1/4$ | L4637--4642 | True |

手算复核（未上机，但逐式验证）：Part I balance law $\Omega_i^+-\Omega_i^-=-\sum\int\delta\Pi\wedge\delta q$ 与其 1D specialization $+\int\delta\phi'(L)\wedge\delta q$；power law $\mathrm dH_i/\mathrm dt=\int_{\partial\Sigma_i}\dot\Phi\partial_n\Phi=-\int\Pi\dot q$；$\Pi_{ij,A}=-G_{AB}n^\mu\nabla_\mu\Phi^B$ 来自 $\mathscr L=-\frac12G(\nabla\Phi)^2-V$ 的第一变分；boundary-triple Green identity 在 $\Gamma_1=-\gamma_N$ 下成立；Kreĭn formula 的符号（$\Theta=0$、$(\Theta-M_e)^{-1}=-M_e^{-1}$）；$\operatorname{Hess}\mathcal W_{i,z}=\langle M_i(z)\cdot,\cdot\rangle$（由 $\mathfrak a[u,v]=z(u,v)-\langle\Pi,\gamma_0v\rangle$）；Dirac symmetrized $\boldsymbol\theta_\Gamma$；Clifford 翻译 $\gamma=\mathrm ic$ 给 $P_+(n)\psi=0$ 与 $\operatorname{ran}\frac{1-\mathrm ic(n)}2=\operatorname{ran}P_-(n)$，以及 $-\mathcal D_i=\mathcal D_{\mathrm{GM}}+m_D$；$\|W(f)-W(g)\|=2$；finite-$\kappa$ domain $u_-'(0)=u_+'(0)=-\kappa j(u)$ 与 $\Pi_\mp=\pm\kappa j(u)$（逐项重做 Green 分部积分）；Hilbert KG 三条 typed identities $U^*\omega^\flat U=\omega^\flat$、$D=-C^*\omega^\flat U$、$C^*\omega^\flat C+R-R^\top=0$ 以及 maximality 论证给出的 $b=Ua+Cr$、$s=Da+Rr$；$A_n\nu_n=-2/L$；$e_N\in\overline{\operatorname{span}}\{u_n\}_{n>N}$ 故 $\widehat e_N\rightharpoonup0$；B2 中 regional 与 connected interval 的 translated/reflected image arguments 下界均 $\ge2d_O$。

结构与交叉引用：

- delimiter 平衡：$1240$ 个 `$$`、$608/608$ `align`、$2/2$ `aligned`、$9/9$ `array`、$21/21$ `pmatrix`、$4/4$ `cases`；无 trailing whitespace、无 control character、final newline 存在。这些数字与 Change Log 自报的 audit 数字**逐项一致**。
- 五个内部链接（`formalism.md`、`lifting operator formalism.md`、`functional analysis proof of well-definedness of finite truncation.md`、`Fock failure.md`、`archived/higher-dimensional-sharp-fock-comparison.md`）全部可解析。
- Sanity check 1 与 `formalism.md` L353--367 逐项一致（$k\cot(kL)=0$ 给 $(2p+1)\pi/(2L)$，$q=0$ sector 给 $n\pi/L$，并集 $r\pi/(2L)$）；sanity check 2/3 的 $\pi_q=\rho_N\dot q$ 与 $\dot q$ 无 continuum point observable 的措辞与 `formalism.md` L489 一致。
- Part IV 引用的 $\sum_{n\le N}|\beta_{pn}^{\mathrm D}|^2=\frac{1}{\pi L\Omega_p}\log N+O(1)$ 与 `Fock failure.md` L124--125 逐字一致。

## 需要修改的问题

### 1. [中] `Corollary (hard KG energy-class slice covariance)` 的 existence 半边未证

**位置** L846--858。

**事实** 该 corollary 自称把前面的 abstract conditional statement 升级为 hard PDE 结论（"由 weak PDE theorem直接成立，不再只是 abstract conditional statement"）。其证明提供了两件事：(i) global weak KG Cauchy problem 的 **uniqueness**；(ii) $j^\mu=\phi_1\nabla^\mu\phi_2-\phi_2\nabla^\mu\phi_1$ distributional divergence-free + weak Stokes ⇒ 两张 slice 上 completed symplectic form 相等。

**判断** 结论对 $t=\mathrm{const}$ 的 slices 成立（Part II 的 $C(I;V)\cap C^1(I;H)\cap C^2(I;V')$ well-posedness 直接给 $E_M^{b\leftarrow a}$ 是 bijection）。但 corollary 写的是 **任意** smooth spacelike Cauchy surfaces，此时缺三件东西：

- $E_M^{b\leftarrow a}$ 作为 **bijection** 需要 tilted-slice IBVP 的 existence/surjectivity，uniqueness 只给单值性；
- finite-energy solution 到 tilted slice 的 restriction/trace theorem（$H^1(C^r)\oplus L^2(C^r)$ 是否真是该 solution class 的 data space）；
- $C^r\cap\Gamma_{i0}$ corner 处的 regularity，以及 weak Stokes 在带 corner 的 region 上的适用性。

正文其他地方对 corner compatibility 的要求（Part I `Definition (admissible dynamical boundary polarization)` 第 4 条）远比这里严格，因此这一条是全文标准中的一个局部松动。

**建议** 两种收尾都可接受：(a) 把 corollary 限制到 ultrastatic $t=\mathrm{const}$ slices（及其在 declared energy class 中的 restriction），把 general foliation covariance 留在 conditional tier；(b) 保留 general slices，但把 tilted-slice well-posedness/trace theorem 明确列为 hypothesis，并把标题 `hard` 改成 `conditional on the tilted-slice IBVP`。Claim Boundary 里对应的一条（"linear KG energy class中由 weak current/Stokes identity给出的 hard foliation-independence proof"）需同步收紧。

### 2. [中] Part I power-balance 中的 $H_i$ 需指明是 polarization-adapted Hamiltonian

**位置** L464--467（general proposition）对照 L1866--1877（Proca $1+1$）。

**事实** Part I 的 boxed law 是

$$\begin{align}
H_i(t_+)-H_i(t_-)&=-\sum_{j\in N(i)}\int_{t_-}^{t_+}\langle\Pi_{ij},\dot q_{ij}\rangle\,\mathrm dt,
\end{align}$$

hypothesis 只写"Legendre/constraint reduction 后存在相应 Noether Hamiltonian $H_i(t)$"。Proca $1+1$ 节给的却是

$$\begin{align}
\frac{\mathrm dH_i^{\mathrm P}}{\mathrm dt}&=\sum_{\partial\Sigma_i}\left[-\Pi_i^t\dot q_i+\frac{\mathrm d}{\mathrm dt}(q_i\Pi_i^t)\right],&
\frac{\mathrm d}{\mathrm dt}\Bigl(H_i^{\mathrm P}-\sum_{\partial\Sigma_i}q_i\Pi_i^t\Bigr)&=-\sum_{\partial\Sigma_i}\Pi_i^t\dot q_i.
\end{align}$$

**判断** 两者不矛盾，Part III 的写法是对的：我独立复算 Proca canonical Hamiltonian density $=\frac{1}{2m_A^2}(\dot E^2+E_x^2+m_A^2E^2)-\frac1{m_A^2}\partial_x(EE_x)$，而 $\frac{1}{m_A^2}EE_x=-Eq=q\Pi^t$（$s=+1$ 侧），所以

$$\begin{align}
\int_{\Sigma_i}\mathcal H_{\mathrm{can}}&=H_i^{\mathrm P}-\sum_{\partial\Sigma_i}q_i\Pi_i^t,
\end{align}$$

即 Part I 的 law 对 **canonical / polarization-adapted** Hamiltonian 逐字成立，而 $H^{\mathrm P}$（$E$ 的 positive KG energy）不是那个 Hamiltonian。根源是这个 polarization 需要 nonzero generating functional（正文 L1816--1818 已明写 $-m_A^{-2}\partial_nE\,\delta E=sq\,\delta E=\delta(sqE)+\Pi^t\delta q$，即 $G^{\mathrm{pol}}=sqE\neq0$）。

**建议** 在 Part I 的 proposition 中补一句：$H_i$ 指由 **完整 regional action 在所选 polarization 中** 生成的 Hamiltonian；若该 polarization 的 $G^{\mathrm{pol}}\neq0$，它与 stress-energy Noether charge 相差 $\sum_j\langle\Pi_{ij},q_{ij}\rangle$ 型 endpoint term，并 cross-reference Proca instance。这是一句话的 hypothesis 精确化，不改变任何已证结论，但会消除 Part I 与 Part III 的表面张力。

### 3. [低--中] Notation collisions

按严重度排列。这些不是数学错误，但按 `Articles/Quantization in AdS/AGENTS.md` 的 notation 规则属于应修的清晰度缺陷。

**(a) $\omega_\kappa$ 与 $\mu$ 在同一 subsection 内被 double-book。** L4510--4511 定义 $\mu_\kappa(z,z)$ 为 ground-state covariance、$\omega_\kappa(W(z))$ 为 quasifree state；同一 subsection 的 `Remark (Weyl-label covariance versus the soft jump coordinate)`（L4627--4642）里 $\mu$ 变成 oscillator mass、$\omega_\kappa=\sqrt{\kappa/\mu}$ 变成 oscillator frequency，且用 $\langle\cdot\rangle_\kappa$ 记其 ground-state moment。这是全文最容易误读的一处。建议 Remark 改用 $\mu_{\mathrm{osc}}$ 与 $\varpi_\kappa$（或 $\Omega_\kappa$，注意 $\Omega$ 已被 symplectic form 与 global mode frequency 占用，需先确认）。

**(b) $A_N$ 有三种含义并共存于 Part V。** L3273/3300/3404/4119/4122 是 $\mathfrak a|_{W_N}$ 的 Galerkin operator（正定谱算子）；L4048/4689/4702/4719/4755 是 finite constraint/incidence map（$A_N=A_\Delta$、$\ker A_N$、$A_N^TA_N$、$\operatorname{rank}A_N$）；L3467 行内 $A_N$ 还是 mode overlap $A_n$ 的第 $N$ 个分量。而 `Theorem (two-parameter Mosco and commuting limits)`（L4757 起）的证明**同时**引用前两类对象。建议 constraint restriction 写 $A^{(N)}$ 或 $A|_{V_N^{\mathrm{dup}}}$（不缩写），Galerkin operator 写 $\mathbf A_N$。

**(c) $\kappa$ 有四种含义。** Part I L130 是 symplectic chart；B1.1--B1.2 L2506/2618/2637/3007/3012 与 stages L3050--3086 是 symplectomorphism $\kappa,\kappa_A,\kappa_{A_1},\alpha_\kappa$；B1.4 L4230 起是 penalty coupling；product cylinder 是 transverse frequency $\kappa_\ell$。最尖锐处在 L4891（`Resolvent-Algebra Alternative`，紧接 `The Two-Parameter $(N,\kappa)$ Approximation Square` 之后）："本文 finite symplectic map $\kappa$ 同样诱导 …"，与同节的 $\mathbf K_{N,\kappa}$ 并列。建议把 penalty coupling 改成 $\varkappa$，或把 symplectomorphism 改成 $\varphi_{\mathrm{red}}$（注意 $\lambda$ 已被 resolvent parameter 与 Lagrange multiplier 占用，不能作为 penalty 的替代）。

**(d) $\chi$。** B1.1 的 constraint $\chi=Ax$ 与 B1.3 的 character $\chi\in\widehat\Gamma$ 同在 Part V。正文 L3130 已为 genuine interface field $\chi_e$ 特意避让过一次（"这里不用 $\chi$，以免与 Part I/III 的 genuine interface field $\chi_e$ 混淆"），说明作者已意识到这个符号紧张，但只解决了三分之一。建议 character 改用 $\vartheta$（正文 L2729 已用 $\vartheta(\ell)$ 表示 superselection character，可统一；注意 $\Theta$、$\boldsymbol\theta$ 已被 endpoint one-form 与 symplectic potential 占用）。

### 4. [低] Part 编号与目录承诺不一致，并有一处重复推导

- `## Nonlinear Model Validation — Semilinear Defocusing Scalar`（L1520）是 `##` 级但无 Part 标签，夹在 Part II 与 Part III 之间；Reading Map（L31）用"随后给 semilinear scalar validation"绕过了它。建议并入 Part II 作 `###` 子节，或明确命名为 Part 的一部分。
- Part V 内 B1.0--B1.4 的编号被四个同级无编号 section 打断：`Conforming Regulator Recovered as the Reduced System`（L3128）、`Higher-Dimensional Two-Scale Conforming Limit`（L3158）、`Centered 1D Duplicate-Port Sanity Check`（L3455）、`Finite Reduction Limit Versus a Continuum Parent Reduction`（L3661）。它们都在 B1.2 与 B1.3 之间，但 Route B Hierarchy（L2230 起）只列了 B1.0--B1.4 与 B2，读者按层级索引会找不到这四节。建议或给它们编号（如 B1.2′、B1.2″），或在 Route B Hierarchy 里显式列出。
- 内容重复：B1.0 的 `Proposition (exact conforming pullback)`（L2318，boxed identity 在 L2321）与 `Conforming Regulator Recovered as the Reduced System`（L3128 起，同一 identity 在 L3531）推导同一个 $M_{\mathrm{conf}}=I^TM^{\mathrm{dup}}I$ / $K_{\mathrm{conf}}=I^TK^{\mathrm{dup}}I$ 结构。后者可压缩为对前者的引用加 finite normal-mode map 部分。

### 5. [低] Manuscript 卫生：Change Log 与 draft-process narration

- Change Log 占 L5145--5291（$147$ 行，约全文 $2.8\%$），含 backup 文件名、byte counts、SHA256、"联网核验"记录与多轮 referee-response 叙述。
- 其中"在同目录创建备份 `gluing formalism.backup-*.md`"已经失效：我核对 `Attachments/gluing-formalism-mementos-20260823-232342/` 含 $10$ 个 `gluing formalism` backup（含 `backup-20260823-223248-before-referee-proof-hardening.md` 等 Change Log 提到的全部条目），而 `gluing/` 下已无 backup 文件。README.md 已按 memento 目录记录此事，Change Log 的"同目录"措辞与当前 repo 状态矛盾。
- 正文（非 Change Log）另有 $9$ 处 draft-process narration：L923（"原稿中让 $k$ 遍历整个 $\mathcal I$ 没有意义"）、L1644、L1951（"这里先校正文献逻辑"）、L2135（"原稿中从 fixed-$q$ operators 形式求解"）、L2896（"现稿原先分开的 $\delta_{A,I}$ 与 $\nu_\varepsilon$ …"）、L3657、L3659（"本轮追加的 independent Mathematica audit…"）、L4823、L5127。它们在审稿阶段有价值，但会让 manuscript 读起来像 diff。
- 建议：Change Log 与 audit 记录移入 `archived/`（`gluing/AGENTS.md` 已把 `archived/` 定义为"historical records of completed audits"，正好是这个角色），正文保留 Claim Boundary 与 Focused Framework References；L923/L2135/L2896 三处改成 direct statement（例如 L923 改为"$k$ 只遍历 region $i$ 的实际 boundary components"）。

### 6. [需用户裁决] 与 `gluing/AGENTS.md` Required Expository Language 的冲突

两条禁令与正文现状不符：

1. "Do not replace this presentation by affine-solution-space, fiber-bundle, **fiber-product**, **interface-cotangent-space**, stack, or homotopy language unless the user explicitly asks" —— 正文系统使用 fiber product（L548、L556、L612、L644、L746 等）、interface cotangent space $T^*\mathcal B_i$（L505、L511 等）与 affine translate（L2189）。
2. "Operator-algebraic language … is authorized in `roadmap.md` and in work at layer L3 and above. Do not propagate it into `formalism.md` or into **any finite-regulator canonical calculation**" —— B1.1/B1.2 正是 finite-regulator canonical calculation，却整节使用 relative commutant、$\otimes_{\min}$、Slawny simplicity、twisted group $C^*$-algebra、Stone--von Neumann factorization。

判断：这不是数学问题，而是 governance 不一致。README.md 已把 `gluing formalism.md` 列为"final general boundary-polarized manuscript … covering relation-level classical reconstruction, Proca/Dirac model validation, **finite duplicate-port reduction**"，说明这条技术路线是被有意选择的，而且 B1.1 的 intrinsic relative-commutant 结果如果改写成 boundary-history 语言会直接失去。两种自洽收尾：

- **(推荐)** 在 `gluing/AGENTS.md` 中为 `gluing formalism.md` 写明 carve-out：该文件授权使用 variational/canonical-relation 与 operator-algebraic 表述，禁令继续约束 `formalism.md` 及其 finite-regulator canonical 计算；
- 或维持原规则，把 B1.1/B1.2 改写为 boundary-history 表述（代价大，且会削弱结果）。

请裁决后再动 `AGENTS.md`；本次未修改。

## 可选的证明强化（不改变任何 claim）

1. **defect tier 的 slice-independence 仍是口头论证。** `Proposition (pairwise symplectic-flux cancellation)`（L670--682）在 $S_\Gamma[q,\chi]\neq0$ 时写"余下右边写成 intrinsic interface symplectic current 的 time/spatial divergence …其 temporal part 正由 $\Omega_{\Gamma_{ij}}$ 的时间边界项抵消"。建议给一个含 kinetic $\chi$ 的最小 explicit interface（例如 worldvolume oscillator $\frac12\dot\chi^2-\frac12\varpi^2\chi^2-g\chi q$），把 $\Omega_\Gamma$ 的 endpoint cancellation 写完，使 defect tier 与 Part III 的两个 closed model 同级。
2. **$\sqrt\lambda\wedge\sqrt R$ 截断 + first-form-moment 的技巧在两处重复**（B1.3 `Ground-State Convergence Theorem` 的证明 L4172--4181 与 B1.4 `regular-to-nonregular` 的证明 L4594--4604）。建议抽成与 fractional-power lemma 并列的一个 lemma，两处共享同一 hypothesis 表述。
3. **Weyl-norm proposition 的一步可以补半句。** L4063 起的证明说"乘一个 unitary与 scalar phase把问题化为 $\|1-W(h)\|$"；严格地是 $\|W(f)-W(g)\|=\|1-e^{\mathrm i\theta}W(h)\|$，需要 $\operatorname{spec}(e^{\mathrm i\theta}W(h))=S^1$（同一 rotation argument 给出）。补一句即可，免得读者以为 phase 被丢掉。
4. **$D(K_\infty^{1/4})=H_{00}^{1/2}(-L,L)$ 的等号强于所需。** L4614--4623 的论证只用到 $D(K_\infty^{1/4})\subset H^{1/2}$（jump $\Rightarrow$ 不属于 $H^{1/2}$ $\Rightarrow$ 不属于 form domain）。写成等号会把 Lions--Magenes $H^{1/2}_{00}\subsetneq H^{1/2}$ 的另一半也纳入需证范围。建议降级为 inclusion，或注明只用到一侧。
5. **real-time Gaussian sewing 的 caustic 措辞可以更具体。** `Theorem (finite quadratic sewing kernels equal the reduced propagator)`（L2916）说"穿过 caustic 时以 fixed metaplectic/Maslov branch 作 distributional continuation"。对 $M,K>0$ 的 finite quadratic 系统，caustic set 是 $\sin(\omega t)$ 的零点，即离散时刻；直接点明这一点会把该句从一般性免责变成可核验的具体陈述。
6. **Hilbert KG theorem 的"corner compatibility 已吸收"值得加一句说明。** L1284--1287 取 $\mathcal B=H_0^2(I)$ 后说"admissible input domain真的是 full product $\mathcal P_{1/2}\times\mathcal B$"。这在该 topology 中成立的真正理由是 $H_{1/2}=D(K^{1/4})$ 的元素没有 point trace，故 $\gamma\varphi^-=q(t_-)$ 这类条件在此正则性下不可施加、$\Pi$ 由 Green transposition 定义。补一句会避免与 Part I `Definition (admissible dynamical boundary polarization)` 第 4 条 corner compatibility 的表面冲突。

## 未核验 / 不在本次范围

- 所有 infinite-dimensional functional-analytic theorem 的完整证明细节。我核对了 Mosco / Trotter--Kato / Simon--Kato monotone-form / Löwner--Heinz 的 statement 与正文用法是否匹配，但没有重证这些定理本身。
- 引用文献的页码级核对。Große--Murro 与 Ginoux--Murro 的 Clifford convention 翻译、MIT projector 代数与 data class 区分我做了代数一致性检验（$\gamma=\mathrm ic$、$P_+(n)\psi=0$、$\operatorname{ran}\frac{1-\mathrm ic(n)}2=\operatorname{ran}P_-(n)$、$-\mathcal D_i=\mathcal D_{\mathrm{GM}}+m_D$ 全部一致），但 Theorem 1.2 / Prop 3.3 / Thm 4.8 / §6.2 的具体条件未回原文逐条核对；Verch、BFK、Reshetikhin--Vertman、Senjanović、Slawny、Rieckers 同理。
- `numerics/` 下的 `.wl` 回归脚本未重新运行。
- B1.2 的 metaplectic lift / Maslov phase 约定与 Euclidean BFK benchmark 未独立核验。
- 未运行 Pandoc；delimiter/结构检查用独立脚本完成。
- Part I 的 abstract tier 与 Part III general Proca/Dirac 的 conditional hypotheses 本身不可核验（正文已把它们明确标为 conditional）。

## 建议行动序列

1. 问题 1 与问题 2 两处 hypothesis 精确化（各 1--3 句），并同步收紧 Claim Boundary 的对应两行。
2. 问题 3 的四组符号替换；需一次全局一致性检查（$A_N$、$\kappa$ 涉及面较大）。
3. 问题 4 编号与重复段压缩。
4. 问题 5 Change Log 迁入 `archived/`，正文 9 处 narration 改写为 direct statement。
5. 问题 6 governance 冲突：待用户裁决后更新 `gluing/AGENTS.md`（推荐 carve-out）或改写 B1.1/B1.2。
6. "可选的证明强化"按需处理；其中第 1 条（defect tier explicit interface）是唯一会新增实质内容的项。

---

**Verified:** 上表全部 finite/closed-form identities 由独立 Mathematica 复算通过（exact rational 或 symbolic，除三项标注为数值）；delimiter/whitespace/final-newline 结构审计通过并与 Change Log 自报数字一致；五个内部链接可解析；与 `formalism.md`（spectrum 并集、$\pi_q=\rho_N\dot q$）、`Fock failure.md`（row sum）的交叉引用逐字一致；`Attachments/gluing-formalism-mementos-20260823-232342/` 确实保存了 Change Log 列出的全部 backup。

**Assumptions:** 复算使用正文 displayed 约定：$M^{\mathrm{dup}}>0$、$A$ full row rank、$K$ symmetric、$m>0$；centered $1$D 取 $h=y/L$ 与 Laplace-harmonic lift；Proca 取 $(-,+)$、$m_A>0$ 与 $F_{01}=E$；boundary-triple 取 $\Gamma_0=q$、$\Gamma_1=\Pi=-\gamma_N$；Weyl convention 取正文的 $W(F)W(G)=e^{-\frac{\mathrm i}2\sigma(F,G)}W(F+G)$。随机矩阵检验用固定 seed，$n\le6$、$r\le2$；image sum 检验取 $\ell=1$、$m=1.3$、$\tau=0$。

**Not verified:** 无 infinite-dimensional theorem 的重证、无文献页码级核对、无 `numerics/` 脚本重跑、无 metaplectic/Maslov 约定与 BFK benchmark 的独立核验。Pandoc 只做 parse（`gluing formalism.md` 与本报告的 `-t native` 均 exit $0$），未做渲染输出检查。问题 1 指出的 tilted-slice existence 我既未证明也未反驳；本报告只主张其证明缺口，不主张结论为假。
