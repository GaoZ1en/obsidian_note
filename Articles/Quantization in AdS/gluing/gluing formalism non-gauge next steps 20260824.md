# Non-Gauge Next Steps for `gluing formalism.md` (2026-08-24)

## 范围与版本

- 范围锁定 **非规范** 部分：linear KG、semilinear defocusing scalar、massive Proca、Dirac。Gauge（Maxwell 的 constrained boundary data、flux/$\theta$ sector）留给下一篇，本文件不涉及。
- 正文正在编辑中（同一日内已从 $5291$ 行变到 $5241$ 行）。因此下文**一律以 section / theorem 名称引用**，不写行号。
- 与 [审查报告](<Articles/Quantization in AdS/gluing/gluing formalism review 20260824.md>) 的关系：该报告的问题 3（notation collisions）与问题 4（Part 编号）已在正文中处理——$\nu_\ell$、$\mathbf A_N$、$m_{\mathrm{osc}}/\varpi_\kappa$ 的重命名，`B1.2a`--`B1.2d` 的编号，以及 `Nonlinear Validation within Part II` 的归属都已就位。本文件只列**非规范范围内剩余的四项**，其中问题 1、2 是审查报告未涉及的新条目。

---

## 1. B1.1--B1.2 的约化与 sewing measure 与 $K$ 无关：把 finite quantum gluing 推到 semilinear

**优先级：高（价值高、成本低）。状态：可做，代数已核验。**

### 现状不对称

`Nonlinear Validation within Part II` 已经给出完整的 classical 闭环：local IBVP、nonlinear causal response 及其导数、weak/strong reconstruction、glued symplectic form 与 power balance。但 Part V 的**全部** quantum 结果都在二次假设下（`Theorem (intrinsic finite second-class quantum factor)` 明写 "finite linear setting"）。于是正文"本 formalism 不是 linear spectral theory 的改名"这句话目前只有 classical 层的支撑。

### 事实：把 $\tfrac12x^TKx$ 换成任意 $C^1$ 势 $V(x)$，B1.1 的约化逐条不变

对 $H_T=\tfrac12p^TM^{-1}p+V(x)+\lambda^T(Ax)$：

$$\begin{align}
\dot\chi&=\{Ax,H_T\}=AM^{-1}p=\psi,\\
\dot\psi&=-AM^{-1}\nabla V-G\lambda=0
\quad\Longrightarrow\quad
\lambda=-G^{-1}AM^{-1}\nabla V,
\end{align}$$

**没有 tertiary constraint**；并且

$$\begin{align}
\{\chi,\chi\}&=0,&\{\psi,\psi\}&=0,&\{\chi,\psi\}&=G=AM^{-1}A^T>0 .
\end{align}$$

第一式与 $V$ 无关；$\{\psi,\psi\}=0$ 因为 $\psi$ 只依赖 $p$。所以 constraint matrix、regular second-class 性质、Dirac bracket $\{x,p^T\}_D=P=1-M^{-1}A^TG^{-1}A$ 与 $P$ 的三条性质全部与 $V$ 无关。这些是我实算核验过的（residual $=0$，见文末 `Verified`）。

进一步：

- `Theorem (finite holonomic coisotropic reduction)`、$\mathsf C\simeq T^*Q^{\mathrm{conf}}$、$\mathcal S^{\mathrm{dup}}=\mathsf C\oplus^\sigma\mathcal N$、`Theorem (finite coisotropic CCR reduction)` 以及 $\mathfrak A^{\mathrm{phys}}=\mathfrak W(\mathcal N)'\cap\mathfrak W(\mathcal S^{\mathrm{dup}})=\mathfrak W(\mathsf C)$ 都是**纯 kinematic**，不含 $K$ 或 $V$。
- Hamiltonian pullback：kinetic 部分 $\tfrac12p^TM^{-1}p\big|_{\mathsf C}=\tfrac12\pi^TM_{\mathrm{conf}}^{-1}\pi$ 精确（已核验）；potential 部分 $V(Iy)=V_{\mathrm{conf}}(y)$ 逐字成立，且它是 configuration 的乘法算子，**没有 ordering 歧义**。
- B1.2 的 short-time action

$$\begin{align}
S_\varepsilon^{\mathrm{dup}}(x',x)&=\frac1{2\varepsilon}(x'-x)^TM(x'-x)-\frac\varepsilon2\bigl[V(x')+V(x)\bigr]
\end{align}$$

  沿 $x=Iy$ 的 pullback 逐项精确；prefactor 只含 $M$，coarea-normalized delta $\delta_{A,I}$ 只含 $A,I$，$\nu_\varepsilon$ 只含 $M,M_{\mathrm{conf}}$。因此 **每个 sewn short-time factor 仍逐项等于 conforming short-time factor**，`Theorem (finite quadratic sewing kernels equal the reduced propagator)` 的逐 slice 相等部分不依赖势能。
- `Theorem (finite fixed-history amplitudes sew to the conforming kernel)` 只用有限维 Fubini（先积 regional $c_i$ 还是先做 delta/coarea 约化），与 $V$ 无关，逐字成立。

### 必须改写的一处

非二次时 $\alpha_t(W(z))=W(S_tz)$ 不成立（flow 不再线性 symplectic）。`Theorem (intrinsic finite second-class quantum factor)` 第 4 条的 dynamics intertwining 要从 "Weyl generator 上的 automorphism" 改成 "regular Schrödinger representation 中的 unitary conjugation"：$\mathfrak A^{\mathrm{phys}}$ 的识别与 ground-state 等式不受影响，受影响的只是把动力学写成 Weyl automorphism 这一表述。

### 收敛条件

Euclidean Trotter 极限需要 $V$ 的标准条件（$V\ge0$ 可测，或 Kato class；$\lambda x^4$ 且 $\lambda>0$ 满足）。Real-time 与 caustic 分析仍按正文既有限制处理，不扩张。

### 产出与不声称

产出：把两条 finite theorem 的假设从 "finite linear setting" 放宽为 **"finite kinetic-quadratic setting with configuration potential"**，并把 semilinear 一节从 classical 附录升级为该定理的一个实例。$Q\circ R\simeq R\circ Q$ 与 second-class sewing measure 因此第一次对非自由理论有内容。

不声称：continuum interacting limit、任何 renormalization、非二次 real-time kernel 的 caustic/Maslov 分析、interacting 情形的 state 收敛。

---

## 2. Part I 的 relation-level 主张在 $d>1$ 缺硬支撑

**优先级：高（但先做可行性判断）。状态：可行性未定。**

### 现状

`A Closed Split Lagrangian KG Evolution Graph in a Strong Hilbert Topology` 是全文唯一的 infinite-dimensional maximality/splitness 定理，范围是 $1+1$ KG、balanced $H_{1/2}\oplus H_{-1/2}$ endpoint topology、$H_0^2(I)$ zero-corner histories。$d>1$（含 `Product-Cylinder Theorem` 的几何）没有对应结果，所以 Part I 把 gluing 说成 canonical-relation composition 在 $d>1$ 仍只停在 set-theoretic tier。

### 自然路线与已定位的障碍

product cylinder 有精确 channel 分解：每个 $(\ell,\mu)$ 恰是有效质量 $\nu_\ell$ 的 $1+1$ KG，所以"逐 channel 套用再求和"是显然的候选。障碍在 Bessel 常数的 $\ell$-uniformity：该证明依赖 separated-exponentials Bessel inequality，其常数由频率最小间距决定，而

$$\begin{align}
\omega^{(\ell)}_{n+1}-\omega^{(\ell)}_n
=\frac{k_{n+1}^2-k_n^2}{\omega^{(\ell)}_{n+1}+\omega^{(\ell)}_n}
=\frac{(2n+1)\pi^2}{2L^2\,\nu_\ell}+O(\nu_\ell^{-2}),
\qquad \nu_\ell\to\infty .
\end{align}$$

数值（$L=1$、$n=1$，$\nu_\ell=1,10,100,1000$）：gap $=3.07,\,1.33,\,0.148,\,0.0148$，即 $\propto\nu_\ell^{-1}$。所以**低 $n$ 的频率随 $\ell$ 增大被挤压，$B_I$ 对 $\ell$ 不 uniform**，"在每个 $\pm\omega_n$ 周围取互不相交的 fixed-radius intervals" 这一步在 $\ell\to\infty$ 时失效。相关权重 $A_n^2k_n^4/\omega_n^5$、$\nu_n^2/\omega_n^5$ 本身也是 $\ell$-依赖的，需要一并重新配权。

### 先做的判定

判定是否存在 $\ell$-uniform 的替代估计（按 $\nu_\ell$ 重标度时间/频率变量后的 Bessel 估计，或对 $\nu_\ell$-加权的 history space 直接做 transposition 估计）。

- 可行 $\Rightarrow$ 得到 $d>1$ 的 closed split Lagrangian 定理与相应 composition corollary，Part I 的 canonical-relation 语言在 $d>1$ 落地；
- 不可行 $\Rightarrow$ 在 Part I 与 Claim Boundary 明写：relation-level canonical/Lagrangian statement 只在 declared $1+1$ Hilbert tier 成立，$d>1$ 停在 set-theoretic composition。

这是本清单里唯一可能做不成的一项，建议先花小量时间判定，再决定投入。

---

## 3. `Product-Cylinder Theorem` 的 $m=0$ 情形不被现有 lift bound 覆盖

**优先级：中（价值中、成本低）。状态：可做。**

### 事实

对 compact $\Sigma$ 加 outer Dirichlet，谱隙来自 Dirichlet 方向（$\lambda_1(\Sigma)>0$），**与质量无关**，所以 $m=0$ 原则上应在定理范围内。但定理前置的 lift bound 用的是

$$\begin{align}
\|q\|_{H_m^{1/2}}^2&:=\sum_{\ell,\mu}\nu_\ell|q_{\ell\mu}|^2,&
2\|q\|_{H_m^{1/2}}^2&\le\mathfrak a[Eq]\le2\coth(mL)\|q\|_{H_m^{1/2}}^2,&
\nu_\ell^2&=m^2+\frac{\ell(\ell+d-2)}{R_s^2}.
\end{align}$$

$m=0$ 时 $\nu_0=0$，于是（三个极限均已核验）：

- $\coth(mL)\to\infty$：**上界失效**；
- $\sum_\ell\nu_\ell|q_{\ell\mu}|^2$ 在 $\ell=0$ 上权重为零：**与 standard $H^{1/2}$ 的等价性失效**（该范数在球面常数上退化）；
- $h_\ell=\sinh(\nu_\ell y)/\sinh(\nu_\ell L)\to y/L$，而 $\nu_\ell\coth(\nu_\ell L)\to1/L$：$\ell=0$ channel 的 lift **能量有限且等于 $1/L$**，与线性 lift 的 $\int_0^L(y/L)'^2\mathrm dy=1/L$ 一致。

也就是说：只有 trace-norm 的配权坏掉，lift 本身没坏。

### 修法

把谱范数改成 $\sum_{\ell,\mu}\bigl(\nu_\ell+L^{-1}\bigr)|q_{\ell\mu}|^2$，或把 $\ell=0$ channel 单列（线性 lift、能量 $1/L$），并把上下界常数重述为只依赖 $L,R_s,d$。定理其余部分（form density、Mosco、embedded strong resolvent、common-energy generator 与 Trotter--Kato、interface-trace 与 symplectic 收敛、bulk-smeared quasifree covariance）只用到 $\mathfrak a\ge\lambda_1>0$ 与 $F_\tau\in C_0([\lambda_1,\infty))$，不受影响。

### 顺带把一句话说准

连续谱本身不是障碍：$C_0([\lambda_1,\infty))$ 的 functional calculus 不要求离散谱。需要 compact resolvent 的只有 Part II 的 mode expansion / Weyl $M$-function / pole-complete spectrum 层。真正会坏的是**谱隙消失**（noncompact $\Sigma$、Neumann/periodic 零模、horizon 外部问题），那些不在本篇范围。

---

## 4. corners 使 $d\ge2$ 的 partition 类实际是 laminar/nested，应当明写

**优先级：必须（成本几行）。状态：本篇先明写，corner 定理留待以后。**

### 事实

Part I 的 baseline 明写"interfaces smooth、pairwise，并暂时排除 triple junctions 与 corners"；$\mathcal B_i$ 只编码同一 region 各 face 之间与 spatial corners 处的 joint-trace compatibility，而 corner compatibility 被明确列为 admissibility 条件、不能从 pairwise gluing equation 推出。

### 后果

`Proposition (classical gluing associativity under reconstruction hypotheses)` 与 `Proposition (artificial refinement invariance)` 中的"固定一个 finite partition"，在 $d\ge2$ 实际只覆盖 **pairwise-interface（laminar / nested）** 类：平行切片、嵌套壳层、product cylinder 的径向切法。把球切成楔形立刻产生 junction line，就不在覆盖范围内。$1$D、slab、product cylinder 的所有已证结果不受影响——受影响的只是"任意 finite partition"这一过宽表述。

### 做法

在两个命题与 Claim Boundary 各加一句适用类限定（例如"partition 的 interfaces 两两相交为空，即 laminar/nested 类；含 triple junction 的 partition 需先补 corner compatibility 与 corner two-form"）。corner 的完整处理（compatible joint trace spaces、JKM representative、corner dynamics）继续留在 open list。

---

## 不建议在本篇做

- **boundary renormalization。** 对非规范标量，其产出（smeared boundary trace 的 log-renormalized scaling algebra）由 bulk 局域网决定，是导出对象。判据：boundary renormalization 只在 boundary data 是 **constrained/superselected** data 时才有内容；scalar 的 $q$ 是 trace data，不满足。
- **finite $\kappa$ 的任何物理解读。** 在"二次、$\Gamma$ 上局域、无切向导数、两侧交换对称"四条下 $S_\Gamma=-\tfrac\kappa2\int(q_--q_+)^2$ 是唯一的 defect action，所以它形式上不任意；但物理界面数据由 bulk 决定而非自由参数，故只保留 constraint-implementation regulator 地位（`Monotone-Form Constraint Limit` 与 `The Two-Parameter $(N,\kappa)$ Approximation Square` 中的角色已经用尽）。
- **infinite-dimensional Lorentzian boundary-history measure。** 已有反向证据：centered case 的 intrinsic sewing half-density 按 $\nu_{\varepsilon,N}\propto\rho_N^{-1/2}\sim\sqrt N$ 发散，朴素极限不存在。
- **abstract tier 的 $\mathcal C$ regularity 与 $\Omega_{\mathrm{glued}}$ nondegeneracy 的一般定理。** 现有分层（set-theoretic / smooth / strong-symplectic）已经承担了这个职能。

---

## 建议顺序

$$\begin{align}
\text{1（势能无关性 + semilinear finite quantum gluing）}
&\longrightarrow \text{3（}m=0\text{ 修补）}\nonumber\\
&\longrightarrow \text{4（corners 适用类明写）}\nonumber\\
&\longrightarrow \text{2（先判定 }\ell\text{-uniformity，再决定投入）}.
\end{align}$$

第 1、2 项是本篇剩余的实质内容；第 3、4 项是把已证定理的边界说准。

---

**Verified:** 第 1 项的代数由独立 Mathematica 复算通过（随机 exact-integer SPD $M$，$n=5$、$r=2$，势能只以其梯度 $\nabla V$ 的符号形式进入）：$\dot\chi-\psi=0$；$\dot\psi+AM^{-1}\nabla V+G\lambda=0$；代入 $\lambda=-G^{-1}AM^{-1}\nabla V$ 后 $\dot\psi=0$（无 tertiary）；$\{\chi,\chi\}=\{\psi,\psi\}=0$、$\{\chi,\psi\}-G=0$；kinetic pullback $\tfrac12p^TM^{-1}p|_{\mathsf C}-\tfrac12\pi^TM_{\mathrm{conf}}^{-1}\pi=0$；short-time kinetic pullback residual $=0$。第 2 项的间距退化由 $\omega_{n+1}-\omega_n$ 的 $\nu_\ell\to\infty$ 渐近式 $(2n+1)\pi^2/(2L^2\nu_\ell)$ 与四组数值确认。第 3 项的三个极限（$\nu\coth(\nu L)\to1/L$、$\sinh(\nu y)/\sinh(\nu L)\to y/L$、$\coth(mL)\to\infty$）与线性 lift 能量 $1/L$ 均已核验。第 4 项与"不建议做"各条是对正文既有陈述的引用，非新计算。

**Assumptions:** 第 1 项使用 $M>0$、$A$ full row rank、$V\in C^1$（Trotter 部分另需 $V\ge0$ 或 Kato class）；第 2、3 项使用 product-cylinder 的 displayed 几何（product metric、outer Dirichlet、$K_\perp(N)=N$ schedule）；第 3 项的"$m=0$ 仍在范围内"依赖 compact $\Sigma$ 与 outer Dirichlet 给出的 $\lambda_1>0$。

**Not verified:** 第 1 项的 Trotter 极限在具体 $V$ 上未实算，只引用标准条件；第 2 项的 $\ell$-uniform 替代估计存在与否**未判定**（本文件只定位障碍，不主张可做或不可做）；第 3 项的修补版上下界常数未逐式重算；第 4 项未证明任何 corner 定理。全部 continuum interacting、renormalization、gauge 内容不在本文件范围。
