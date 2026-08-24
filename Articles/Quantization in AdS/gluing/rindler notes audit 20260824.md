# Audit Report — `rindler scalar.md` and `ads-rindler scalar.md` (2026-08-24)

## 审查对象与方法

| file | lines | bytes | SHA256 (前 16) |
|---|---|---|---|
| `rindler scalar.md` | $1389$ | $83071$ | `de6c424440bad2f4` |
| `ads-rindler scalar.md` | $1334$ | $82579$ | `420953c41623f034` |

方法：两份全文逐节阅读；对可判定的 special-function、kernel、matrix 与 coordinate identities 用 Mathematica 独立复算（不复用两份 note 自带的 audit 脚本）；核对与 `formalism.md`、`gluing formalism.md` 的约定一致性；审计 delimiter/结构/交叉引用。本报告只审查，不改动这两份 note。

引用一律用**各 note 自己的 equation/theorem 编号**（稳定），不用行号。

---

## 总体结论

**两份 note 的数学在我独立复算覆盖的范围内正确，且它们对"什么已证、什么只是 relation/partial domain"的分层是准确的。** 特别值得肯定的三处：

- `rindler` §2.1 显式把 $P=-\Omega^{-1}$ 的符号写成"not optional"，并在 Lemma 6.1a 用 $\chi\to\delta(t)f(x)$ 的光滑逼近**定出**符号而不是猜；我逐项复核，$\partial_t\Delta_m(0,x)=-\delta(x)$、$[\hat q,\hat\pi]=i\delta$、(2.17) 的 $-\frac14\operatorname{sgn}$ 三者互相一致。
- corner bookkeeping 是真正闭合的：Lemma 2.4 的 $\alpha=-I$ 与 §6.3 由 Bessel 恒等式 (6.6b) 独立导出的 (6.7) $\int F_\chi=\int G_\chi=-\alpha_\chi$ 是同一条件的两种推导，我两条都验了。
- 有限 regulator (7.4) 的 parity 设计不是凑数：$J_M$ 在奇 $M$ 上秩为 $M-1$（我验到 $M\le7$），所以右侧多一个 sine 模再配一个 shared corner 才使 $(4N+2)$ 维形式非退化——这正是 note 给的 Cauchy-block 论证。

需要处理的是三类：**(1) 一条 proof step 缺 extension lemma**（`rindler` Thm 5.3，会传到 Cor 6.3，但**不**影响 Thm 6.5）；**(2) "strong symplectic" 术语与 `gluing formalism.md` 的标准定义冲突**；**(3) 一处文献引用定位不到其作用，以及若干交叉引用/符号约定问题。**

---

## 独立复算结果

### `rindler scalar.md`

| 检验项 | 位置 | 结果 |
|---|---|---|
| $g_{uv}=-\tfrac12\Rightarrow\square=-4\partial_u\partial_v$，$\mu=m^2/4$ | §1, (1.1) | exact |
| $u=-\rho e^{-\eta_R},v=\rho e^{\eta_R}$；pullback metric $\operatorname{diag}(-\rho^2,1)$ | (1.2) | residual $=0$ |
| $\partial_{\eta_L}|_{\eta_L=0}=\rho\partial_t$ 且 $\xi=x\partial_t+t\partial_x=-\partial_{\eta_L}$ | (1.3)–(1.4), (5.3b) | exact |
| Volterra $\to$ Bessel resummation：(3.3) 由 (3.2) 的级数逐项重导 | (3.2)–(3.3) | 手算逐项一致 |
| (3.3) 满足 $(\partial_u\partial_v+\mu)\phi=0$ 与两个边值 | Thm 3.1 | 残差 $\sim6\times10^{-17}$；$\phi(u,0),\phi(0,v)$ exact |
| 尾积分恒等式 $\frac m2\sqrt u\int_0^v\frac{J_1}{\sqrt{v-s}}ds=1-J_0(m\sqrt{uv})$ | (6.6b) | exact |
| $f=g=c\Rightarrow\phi=cJ_0(m\sqrt{uv})$ | Check 3.2 | exact |
| $\Omega_I(f,h)=2\int f\partial_vh-[fh]_a^b$；$E_NF$、$P_N$ 的 $\operatorname{sgn}$ 核 | (2.8), (2.12)–(2.15) | 手算 exact |
| Lemma 2.4：$x_F=\frac12\int_v^VF$、$\alpha=-I$、(2.22) 反对称 | Lemma 2.4 | 手算 exact（对称部分逐项相消） |
| $-\tfrac12\operatorname{sgn}(t)J_0(m\sqrt{t^2-x^2})$ 是 KG 解 | (6.10) | Bessel 递推 $J_0+J_2=2J_1/z$ 数值 $=0$ |
| $(-\partial_r^2+e^{2r})K_{i\omega}(e^r)=\omega^2K_{i\omega}$ | §4.1 | 由 modified Bessel ODE exact |
| $\Gamma(i\omega)\Gamma(-i\omega)=\pi/(\omega\sinh\pi\omega)$；$\psi_\omega$ 归一与 (4.7) 自洽 | (4.5)–(4.7) | exact |
| $K_{i\omega}$ 小参数两支 $\Rightarrow c_\pm$；$\vert c_\pm\vert^2=\frac1{4\pi\omega}$ | (4.14)–(4.15) | exact（数值 7 位符合） |
| $\mathcal R=c_+/c_-=2^{2i\omega}\Gamma(i\omega)/\Gamma(-i\omega)$，$\vert\mathcal R\vert=1$，$\mathcal R(0^+)=-1$ | (4.18)–(4.19) | exact |
| **null flux $=$ bulk form**：$\int(F_1\partial_sF_2-F_2\partial_sF_1)=2\operatorname{Im}\int\bar b_1b_2$ | (4.17) | 手算 exact（Poisson/Parseval，含 $\vert c_\pm\vert^2$ 因子） |
| $\Vert F\Vert_{\rm can},\Vert F\Vert_{\rm en}$ 的等距性 | (4.16a) | exact（$\int\vert b\vert^2$、$\int\omega\vert b\vert^2$） |
| IR 反例 $b=\omega^{-3/4}\mathbf1_{(0,1)}$ | §4.1 | $\int\omega\vert b\vert^2=2$，$\int\vert b\vert^2$ 发散 |
| $\Omega_{\rm bif}=\int_{\mathbb R}\delta q\wedge\delta\pi$（左侧 $x=-\rho$ 无残余符号） | (5.3g)–(5.3h) | 手算 exact |
| $\bar q_A\in L^2(dr)$ by Hardy；$\rho\,d\rho$ 权重 $\to$ 齐次径向能量 | (5.3j)–(5.3k) | 手算 exact |
| $(J_M)_{ab}=\frac{4ab}{a^2-b^2}$（$a+b$ 奇）、$d_a=-\frac4{\pi a}$（$a$ 奇） | (7.2)–(7.3) | 直接积分对 $a,b\le6$ exact |
| $\operatorname{rank}\mathbb J^{\rm full}_{\partial,N}=4N+2$，$N=1,\dots,6$ | Check 7.2 | 复现 |
| $\det\mathbb J^{\rm full}_{\partial,1}=2^{26}/(18225\pi^2)$ | Check 7.2 | exact，比值 $=1$ |
| $J_M$ 在奇 $M$ 上秩 $M-1$（parity 设计的依据） | §7 | $M\le7$ 复现 |
| $P_N(F,G)=1/3465$（两种表达式一致） | (7.13) | exact |
| $-(\Omega_4V_c)^2=(\nu^2-c^2)I_4$，marginals $=\nu I_2$ | (8.2)–(8.3) | exact |

### `ads-rindler scalar.md`

| 检验项 | 位置 | 结果 |
|---|---|---|
| $r_*=\frac12\log\frac{r-1}{r+1}$，$\partial_rr_*=1/f$ | (1.11) | exact |
| $UV=-e^{2r_*}\Rightarrow r=\frac{1-UV}{1+UV}$；$f=\frac{-4UV}{(1+UV)^2}$；$-f\,du\,dv=-\frac{4dUdV}{(1+UV)^2}$ | (1.12)–(1.13) | 三项 exact |
| $x=-r_*$、$r=\coth x$、$f=\operatorname{csch}^2x$，$\int w\vert\psi\vert^2dr=\int\vert\chi\vert^2dx$ | (2.7)–(2.8) | 手算 exact |
| **Pöschl–Teller** $V_\lambda=\frac{\nu^2-1/4}{\sinh^2x}+\frac{\lambda^2+1/4}{\cosh^2x}$ 由 (2.3) 导出 | (2.10) | symbolic residual $=0$（$M^2=\nu^2-(n+1)^2/4$） |
| SL 权重 $w\,dr=\frac{(1+\xi^2)^{(d-2)/2}}{\xi}d\xi$ | (2.4), (3.4) | 手算 exact |
| 超几何解 (3.2) 满足径向方程 | (3.2) | 60 位精度残差 $10^{-23}\dots10^{-27}$（$\vert\psi\vert\sim1\dots10^{-2}$） |
| $N_{\omega\lambda}=\frac{\vert D_+\vert}{\sqrt{4\pi\omega}\vert\Gamma(i\omega)\vert}\Rightarrow\vert A_{\rm in}\vert^2=\vert A_{\rm out}\vert^2=\frac1{4\pi\omega}$ | (3.3), (3.12) | 代数 exact；6 组数值 $\le2.2\times10^{-16}$ |
| $\mathcal R_\lambda$ 的 (3.13) 公式、$\vert\mathcal R_\lambda\vert=1$、$\mathcal R_\lambda(0^+)=-1$ | (3.13)–(3.14) | 9 组数值 $\le3.3\times10^{-16}$；threshold 复现 |
| $\lim_{\omega\downarrow0}F_\lambda=2/D_-(0)$ | (3.8f) | 手算 exact |
| QNM 极点 $\omega=\pm\lambda-i(2j+1+\nu)$ 来自 $D_-$ 极点 | (3.15) | 手算 exact |
| Helgason 密度 $\vert\Gamma(\rho_n+i\lambda)/\Gamma(i\lambda)\vert^2$ 在 $n=1,2,3$ 给 $1,\lambda\tanh\pi\lambda,\lambda^2$ | (4.4) | 数值符合 8 位 |
| Stirling $N_{\omega\lambda}\sim\frac{\sqrt\pi}{\sqrt\omega\vert\Gamma(i\omega)\vert}(\lambda/2)^\nu e^{-\pi\lambda/2}$ | (4.10) | 比值 $0.99118,0.99776,0.99944,0.99986$ — **与 note 自报数值逐位一致** |
| $\mathcal W_\lambda$ (6.3) 与 $V_\lambda$ 的关系 $V_\lambda(x)=-4s\mathcal W_\lambda(s)$，$s=-e^{-2x}$ | (2.10) vs (6.3) | 手算 exact；数值 $\sim10^{-16}$ |
| $\mathcal W_\lambda(0)=\nu^2+\lambda^2=M^2+\kappa_\lambda^2+n$ | (6.4) | exact |
| (6.10e) 的上下界与 $\vert\mathcal W_\lambda'\vert\le\frac2{1-q_D}\mathcal W_\lambda$ | (6.10e) | 手算 exact + 数值样本满足 |
| $\partial_U\partial_V=\frac14(\partial_t^2-\partial_x^2)$ 与能量恒等式 (6.10f) | (6.10f) | 手算 exact |
| 全局图：嵌入约束 $=-1$；(7.5) 的 $r^2-1$ 关系 | (7.1)–(7.5) | exact |
| $\sqrt{-g}g^{\chi\chi}=\tan^{d-1}\chi\Rightarrow(d-1)(\cot\chi+\tan\chi)$；(7.6) | (7.6) | 手算 exact |
| $\mathscr I$ flux 的幂次 $R^{d+1}\cdot R^{-2\Delta_+-1}=R^{-2\nu}$ | (7.10) | 手算 exact |

### 结构

两份都 delimiter 平衡（`rindler`: $270$ 个 `$$`、$110/110$ align、$14/14$ aligned、$5/5$ array、$1/1$ CD、$3/3$ pmatrix；`ads-rindler`: $286$、$125/125$、$12/12$、$4/4$），无 trailing whitespace、无 control character、final newline 存在，Pandoc `-t native` 双双 exit $0$。

---

## 需要处理的问题

### 1. [中] `rindler` Theorem 5.3 的 wedge-evolution 识别缺一条 extension lemma

**位置** Thm 5.3 的证明第二句：*"Although a nonzero $c$ lies outside the ordinary tortoise-$L^2$ graph domain, these data lie in the homogeneous finite-boost-energy realization obtained by closing compact spectral data. Energy uniqueness in that realization gives $E_Az_A=\phi\vert_A$."*

**事实** note 自己已经把关键部分算对了：由 (5.3j) 拆 $q_A=c\kappa+\bar q_A$，Hardy 给 $\bar q_A\in L^2(dr)$（我复核：$\int_0^1\frac{\vert\bar q\vert^2}{\rho}d\rho\le\int_0^1\frac{\vert\bar q\vert^2}{\rho^2}d\rho\le C\int_0^1\vert\bar q'\vert^2d\rho$）。但 $c\kappa$ 那一块在 $r\to-\infty$ 趋于常数 $c\ne0$，**不属于 $L^2(dr)$，因此不属于 $D(A^{1/2})$**，而 $\mathcal E_R^{\rm en}$ 按 (4.12) 是**在谱变量里**的完备化 $L^2(\omega d\omega)$。于是"$z_A$ 属于该 realization"这句话要求先给出 $c\kappa$ 的谱代表 $b$，即把 $\mathcal U$ 从 $L^2(dr)$ 延拓到这一类。

**判断** 材料齐全但定理未陈述。可用的路线是显式的：$A(c\kappa)=-\partial_r^2(c\kappa)+e^{2r}c\kappa\in L^2(dr)$（两项在 $r\to-\infty$ 都衰减），所以 $\omega^2\tilde q\in L^2(d\omega)$，再配合 $\mathfrak a[c\kappa]<\infty$ 定出 $b\in L^2(\omega d\omega)$。缺的是把这写成一条 lemma，并说明该延拓与 wedge boost evolution（谱侧的 $e^{-i\omega\eta}$ 乘法）交换。

**影响范围（重要）** Cor 6.3（corner-complete asymptotic B1）的证明显式依赖 Thm 5.3，所以继承这条缺口。**但 Thm 6.5（abstract algebraic B1）只依赖 Thm 5.2 的 Sobolev patching，不经过 Thm 5.3**，因此 note 的招牌代数结论不受影响。建议在 §11(C)/(F) 里把这个依赖关系写明，否则读者无法判断哪一条受影响。

**建议** 加一条"boost-energy 延拓 lemma"（约半页），或把 Cor 6.3 拆成 $c=0$ 部分（由 Cor 6.2 覆盖）与 $c\ne0$ 部分（conditional on 该 lemma）。

### 2. [中] "strong symplectic" 与 `gluing formalism.md` 的标准定义冲突

**事实** `gluing formalism.md` 把 strong symplectic 用在标准意义上——"$\omega_{1/2}^\flat$ 是 bounded isomorphism"——并且**专门**构造 balanced $H_{1/2}\oplus H_{-1/2}$ 才拿到它，同时明写"不声称 usual energy topology 变成 strong symplectic"。

两份 note 里：

- `rindler` (4.4a) 把 $\mathcal C_R^{\rm str}:=D(A^{1/2})\oplus L^2(\mathbb R,dr)$ 叫 "the **strong** bulk Cauchy phase space"。但 $\Omega^\flat(q,p)=(-p,q)$ 的像是 $L^2\oplus D(A^{1/2})$，**真包含**于 $D(A^{1/2})^*\oplus L^2$：injective 而非 onto，即标准意义下**弱**辛。这恰好就是 `gluing formalism.md` 明确排除的那个 topology。
- $\mathcal P_R^{\rm rad}=L^2(d\omega)\cap L^2(\omega d\omega)$ 被称为 "IR-regular **strong-symplectic** radiation completion"，理由是"the extra unweighted $L^2$ condition makes (4.11) finite"。这条理由证的是**有界性**。在 graph norm 下 $\Omega^\flat$ 仍不 onto（需要 $(1+\omega)g$ 回到同一空间，一般不成立）。真正 strong 的是 $L^2(d\omega)$ 本身——也正是 §6.4 Level I 说的 Fulling one-particle space。
- `ads-rindler` §3.4、§4.3 与 ledger item 2 沿用同一措辞。

**判断** 物理与用法没错（`rindler` §6.4 对 weak/strong/presymplectic 的三层区分是准确的，说明作者知道差别）；错的是标签。建议把这两处改成"symplectic form 在此完备化上 **bounded 且非退化**（$\Omega^\flat$ injective）"，并只在 $L^2(d\omega)$ 上使用 "strong"。这同时消除与 `gluing formalism.md` 的术语冲突。

### 3. [中] `ads-rindler` Lemma 6.2a 对 Nicolas 的引用定位不到其作用

**事实** Thm 6.2 的证明写 "Theorem 3 of Nicolas gives the corresponding finite-energy $H^1$ trace isomorphism on a spatially compact background. Lemma 6.2a supplies the noncompact step"。但 Lemma 6.2a 的证明本身已经给全了：(i) 由 (6.10e) 得 $\lambda$-uniform 双边能量估计 (6.10c)（我验了 (6.10e) 的三条不等式与 (6.10f) 的能量恒等式）；(ii) 光滑 compact-spectral core 的存在性由 Volterra 方程 (6.6)；(iii) (6.9) 中光滑相容数据的稠密性；(iv) 唯一性由下界。四步合起来就是 Thm 6.2，Nicolas 没有承担可指认的步骤。

**建议** 或删掉该引用（改为"结构对照"），或明确指出它供给哪一步（例如 $\mathcal N$ 作为 Lipschitz 全特征超曲面的 $H^1$ trace 刻画，或 corner 处的相容性），否则读者会以为定理是引用驱动的，而实际上是自足的——后者是更强的事实，值得说清。

### 4. [低] 交叉引用与排版

- `rindler` §6.4 Level I：*"$\mathcal P_A^{\rm rad}$ in (4.9)"* —— $\mathcal P^{\rm rad}$ 定义在 **(4.12)**；(4.9) 是 $b(\omega)$ 的定义。
- `rindler` Cor 6.3：*"Hence (6.11b) holds for every pair..."* —— (6.11b) 是 Thm 6.1 证明内部的中间显示式；应为 **(6.11)**（Cor 6.2 引的就是 (6.11)，两处不一致）。
- `ads-rindler` (4.8)：`\mathcal U_\lambda,d\mu` 多一个逗号。
- `ads-rindler` §9.1 item 7：句中 "Was simplified" 大写。
- `ads-rindler` (6.7) 末尾逗号后接新句。

### 5. [低] 与 `formalism.md` / `gluing formalism.md` 的辛形式符号相反

`formalism.md` 与 `gluing formalism.md` 用 $\omega_i=\int\delta\dot\phi_i\wedge\delta\phi_i$（即 $\delta\pi\wedge\delta q$）；两份新 note 用 $\Omega_\Sigma=\int\delta q\wedge\delta\pi$。二者相差一个整体符号，并由不同的 Poisson-tensor 约定（`rindler` 的 $P=-\Omega^{-1}$）补回，所以 $\{q,\pi\}=+\delta$ 在三处都成立——**物理一致，符号不一致**。

`gluing/AGENTS.md` 要求 "Preserve the notation, section order, **sign conventions** ... of `formalism.md`"。`rindler` §2.1 那句"This minus sign is not optional"实际上就是这处偏离的自我标记。建议或对齐，或在 §1 加一行显式换算表（$\Omega^{\rm here}=-\Omega^{\rm formalism}$，$P^{\rm here}=-\Omega^{-1}$），避免跨文件阅读时的符号事故。

### 6. [低/措辞] `ads-rindler` ledger item 5 的标题容易误读

"Global continuation through the caustic and global matched-image B1 — closed"。正文是诚实的（"continue them by the unique global solution"，且 Kruskal 图只覆盖 $UV<1$），但标题里的 "continuation" 紧跟在 §6 的 characteristic composition 之后，读起来像是**特征数据**穿过 caustic 的陈述。实际内容是：$UV<1$ 内由 Thm 6.2 的特征问题决定，越过 $UV=1$ 由 Cauchy 演化 (7.8) 决定，$UV=1$ 不承载数据（Prop 7.1）。建议把 item 5 改成"…continuation by global Cauchy evolution（caustic 非边界）"，把 characteristic 的适用范围限定在 $\overline D\subset\{UV<1\}$。

---

## 可选强化（不改变任何 claim）

1. **把两个齐次辐射空间写成具体的空间。** 由 (4.16a) 与我验的等距性，$\mathcal Z^{\rm can}_{\rm rad}=\dot H^{1/2}(\mathbb R)$、$\mathcal Z^{\rm en}_{\rm rad}=\dot H^1(\mathbb R)$，而 null 形式 $\int(F_1\partial_sF_2-F_2\partial_sF_1)$ 正是 $\dot H^{1/2}$ 上的自然强配对。这一句话同时解释了为什么第一空间上形式强、第二空间上只能说能量等距，也让"modulo constants"成为标准事实而不是约定。
2. **`rindler` Thm 5.4 的指数衰减估计可以给常数。** 证明用"formula (3.3) 与 $J_1$ 有界给 $\phi=O(v^{-1})$"；对 $\widetilde{\mathcal M}^-_{G,\rm c}$ 的紧支撑 profile 这是对的，但把 $O(v^{-1})$ 的常数写成对 $\operatorname{supp}h_A$ 的显式依赖，会让 exhaustion 那一步可核验。
3. **`ads-rindler` Lemma 6.2a 的 $\lambda$-uniformity 可以更醒目。** 关键只有 (6.10e) 的**相对**界 $\vert\mathcal W_\lambda'\vert\le\frac2{1-q_D}\mathcal W_\lambda$（我验过），它使 Gronwall 常数与 $\lambda$ 无关。建议把这一句提成 lemma 内的一个编号 remark——这是整份 note 里最容易被误认为"显然"的一步，也是全场唯一让 fiber 估计能积分成全场估计的地方。
4. **两份 note 的 $c$ 与 $c(Y)$ 可以共用一句结构说明。** `rindler` §6.4 Level II 证明了 $c_A$ 不是独立振子（没有 lift-independent 的 $p_{c_A}$，忘掉 profile 就变成 presymplectic 零方向），`ads-rindler` §6.4 与 Diagnostic 5.4 给同一结论的场版本。这是两份 note 最有价值的共同结构结论，值得在各自开头的 Status 里点名，而不是埋在第 6 节。

---

## 未核验 / 不在本次范围

- 所有无穷维分析定理的完整证明：KL/Helgason Plancherel、Mosco/直积分可测性、Große–Schneider trace、Nicolas 特征 Cauchy、Ishibashi–Wald 自伴延拓、Dappiaggi–Drago–Ferreira 因果传播子、Kostenko–Teschl Jost/Weyl 密度、Verch。我核对的是它们的 statement 与 note 用法是否匹配（含 (3.8a)–(3.8b) 的端点假设、$\ell(\ell+1)\ge3/4\Leftrightarrow\nu\ge1$ 的 limit-point 判据），没有重证。
- `rindler` Check 7.2 的 $2N\le24$ 收敛表与 dimension $\le50$ 的 point-kernel 诊断未重跑（我只独立复现了 $P_N(F,G)=1/3465$、秩与 $N=1$ 的行列式）。
- `ads-rindler` Thm 7.6（Stronger Horizon-Parametrization）本身是 conditional，未评估其可证性。
- 两份 note 的 B2 部分只核验了 (8.2)–(8.3) 的有限维辛特征值；未评估场论版本的 positivity 论证。
- 没有渲染检查（只做 Pandoc parse）。

---

## 建议顺序

1. 问题 1（Thm 5.3 的延拓 lemma + 把 Cor 6.3 / Thm 6.5 的依赖关系写明）——唯一影响 claim 结构的一项。
2. 问题 2（"strong symplectic" 措辞，两份 note 各 3 处）——机械但涉及 Status 与 ledger。
3. 问题 3（Nicolas 引用定位）与问题 6（ledger item 5 措辞）。
4. 问题 4、5（交叉引用、符号换算表）。
5. 可选强化按需。

---

**Verified:** 上两张表中的全部条目由独立 Mathematica 复算或逐式手算通过，具体残差已在表内标注；其中 `ads-rindler` (4.10) 的四个 Stirling 比值与 note 自报数值逐位一致，`rindler` $\det\mathbb J^{\rm full}_{\partial,1}=2^{26}/(18225\pi^2)$ 与 $P_N(F,G)=1/3465$ 为精确复现。两份文件 delimiter 平衡、无 trailing whitespace/control character、final newline 存在、Pandoc `-t native` exit $0$。跨文件符号约定差异经 `formalism.md`、`gluing formalism.md` 原文核对。

**Assumptions:** 复算使用两份 note 的 displayed 约定：signature $(-+\cdots+)$、$m>0$（flat）、$d\ge2$ 与 $M^2\ge0$（AdS）、$\Delta_+=\frac d2+\nu$、标准 Dirichlet/Friedrichs 域、$\Omega_\Sigma=\int\delta q\wedge\delta\pi$ 与 $P=-\Omega^{-1}$。超几何残差取 $d=3,\nu=2.3,\lambda=1.1,\omega=0.7$，60 位精度、$\epsilon=10^{-12}$ 有限差分；Helgason 密度取 $n=1,2,3$，$\lambda=0.8$；有限 regulator 取 $\ell=1$。

**Not independently verified:** 无引用文献的页码级核对、无无穷维定理重证、未重跑 note 自带的收敛表与点核诊断、未评估 Thm 7.6 的可证性、未做渲染检查。问题 1 我给出了可行的延拓路线但**没有**完成该 lemma 的证明；问题 2 的 $\Omega^\flat$ 非满射结论由显式反向构造得到（$b=\pm\frac i2(1+\omega)g$ 一般不在 $\mathcal P^{\rm rad}$），未穷尽其他可能的等价范数选择。
