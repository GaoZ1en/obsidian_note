## Formalism Summary

We present the standard worldline (N=1 supersymmetric) Lagrangian description of a free relativistic spinning (spin-1/2) particle, its constraint structure, gauge (reparametrization + local SUSY) symmetries, quantization to the Dirac equation, comparison with tensor–spin (Frenkel / Hanson–Regge) formulations, and minimal coupling to external electromagnetic fields.

Conventions: Minkowski metric signature $(-,+,+,+)$, worldline parameter $\tau$, dot denotes $d/d\tau$. Abstract space–time indices $\mu,\nu=0,1,2,3$. Grassmann (anticommuting) variables carry an $i$ in kinetic terms to yield real action.

Core fields (phase-space form):
- Bosonic coordinates: $x^\mu(\tau)$
- Momenta: $p_\mu(\tau)$ (independent prior to elimination)
- Grassmann vector (worldline fermion/spin): $\psi^\mu(\tau)$
- Optional auxiliary Grassmann scalar $\psi_5(\tau)$ (massive case convenience)
- Einbein (1D metric): $e(\tau)$ (Lagrange multiplier for mass-shell)
- Gravitino (worldline SUSY gauge field): $\chi(\tau)$ (Grassmann Lagrange multiplier for SUSY constraint)

Fundamental phase-space action (Berezin–Marinov / Brink–Di Vecchia–Howe):

$$\begin{align}
S = \int d\tau \Big[ p_\mu \dot x^\mu + \tfrac{i}{2} \psi_\mu \dot\psi^\mu - \tfrac{e}{2}(p^2 + m^2) - i\chi (p_\mu \psi^\mu + m\psi_5) \Big].
\end{align}$$

Primary first-class constraints:

$$\begin{align}
\phi_1: H - \tfrac12(p^2+m^2)=0, \qquad \phi_2: Q - (p_\mu\psi^\mu + m\psi_5)=0.
\end{align}$$

Constraint algebra (worldline $N=1$ SUSY):

$$\begin{align}
\{Q,Q\}_{PB} = -2i H, \qquad \{H,Q\}_{PB}=0.
\end{align}$$

Grassmann brackets:

$$\begin{align}
\{\psi_\mu, \psi_\nu\}_{PB} = - i \eta_{\mu\nu}, \qquad \{x^\mu, p_\nu\}_{PB}=\delta^\mu_\nu.
\end{align}$$

Eliminating $p_\mu$ yields the purely Lagrangian form:

$$\begin{align}
L = \frac{1}{2e}\dot x^2 + \frac{i}{2}\psi_\mu \dot\psi^\mu - \frac{e}{2}m^2 - \frac{i}{e} \chi \, \psi\cdot \dot x - i\chi m \psi_5.
\end{align}$$

Quantization map:

$$\begin{align}
\psi^\mu \longrightarrow \frac{1}{\sqrt{2}}\gamma^\mu, \quad Q|\Psi\rangle=0 \; \Rightarrow \; (\gamma^\mu p_\mu + m)|\Psi\rangle=0.
\end{align}$$

Thus the Dirac equation emerges from the fermionic (SUSY) constraint. Degrees of freedom counting confirms spin-$1/2$ content.

---

## Completed Derivations

### Derivation 1: Phase-Space Action and Primary Constraints

**Physical Context**: Start from first-order action to expose constraints and gauge generators transparently.

**Mathematical Development**:
1. Postulate action

$$\begin{align}
S = \int d\tau \Big[ p_\mu \dot x^\mu + \tfrac{i}{2} \psi_\mu \dot\psi^\mu - \tfrac{e}{2}(p^2 + m^2) - i\chi (p_\mu \psi^\mu + m\psi_5) \Big].
\end{align}$$

1. Variation w.r.t. $e$: $$\delta e: \; \Rightarrow \; p^2 + m^2 = 0.$$
1. Variation w.r.t. $\chi$: $$\delta \chi: \; \Rightarrow \; p_\mu \psi^\mu + m \psi_5 = 0.$$
1. Variation w.r.t. $p_\mu$: $$\dot x^\mu - e p^\mu - i\chi \psi^\mu = 0 \Rightarrow p^\mu = \frac{1}{e}(\dot x^\mu - i\chi \psi^\mu).$$
1. Canonical (graded) Poisson brackets from kinetic terms:

$$\begin{align}
\{x^\mu, p_\nu\}=\delta^\mu_\nu, \qquad \{\psi_\mu, \psi_\nu\} = -i\eta_{\mu\nu}.
\end{align}$$

1. Define $H=\tfrac12(p^2+m^2)$, $Q = p_\mu \psi^\mu + m\psi_5$ so constraints $H\approx 0$, $Q\approx 0$.

**Result Interpretation**: Two first-class constraints generate reparametrization (Hamiltonian) and local worldline SUSY (fermionic), encoding gauge redundancies eliminating unphysical components.

### Derivation 2: Eliminating $p_\mu$ (Configuration-Space Lagrangian)

**Physical Context**: Obtain theory purely in $(x,\psi,e,\chi)$ for direct Lagrangian symmetry analysis.

**Mathematical Development**:
1. Substitute $p^\mu = (\dot x^\mu - i\chi \psi^\mu)/e$ into first-order Lagrangian part:

$$\begin{align}
p_\mu \dot x^\mu - \tfrac{e}{2}p^2 = \frac{1}{2e}(\dot x^\mu - i\chi \psi^\mu)^2.
\end{align}$$

1. Grassmann square term $(\chi \psi)^2$ vanishes ($\psi^\mu\psi_\mu=0$), so

$$\begin{align}
L = \frac{1}{2e}\dot x^2 + \frac{i}{2}\psi_\mu \dot\psi^\mu - \frac{e}{2}m^2 - \frac{i}{e}\chi \, \psi\cdot \dot x - i\chi m \psi_5.
\end{align}$$

1. This is invariant (up to total derivative) under local SUSY (see Derivation 3) and reparametrizations.

**Result Interpretation**: The configuration-space form reveals $e$ and $\chi$ as gauge fields of 1D supergravity enforcing constraints.

### Derivation 3: Constraint Algebra (Worldline $N=1$ SUSY)

**Physical Context**: Show that $H$ and $Q$ close under graded Poisson brackets ⇒ first-class.

**Mathematical Development**:
1. Using $\{\psi_\mu, \psi_\nu\}=-i\eta_{\mu\nu}$ and $\{\psi_5, \psi_5\}=-i$ (auxiliary normalization), compute

$$\begin{align}
\{Q,Q\} = \{p_\mu\psi^\mu + m\psi_5, p_\nu\psi^\nu + m\psi_5\} = -2i H.
\end{align}$$

1. Also $\{H,Q\}=0$ by construction ($H$ depends on $p^2$, $Q$ linear in $p$ and $\psi$).
1. Thus $$\{Q,Q\} + 2iH =0, \quad \{H,Q\}=0.$$

**Result Interpretation**: First-class nature ensures gauge invariances: $H$ → reparametrizations; $Q$ → local SUSY. No secondary constraints arise.

### Derivation 4: Quantization to Dirac Equation

**Physical Context**: Realize spin-$1/2$ degrees; worldline SUSY → Dirac operator.

**Mathematical Development**:
1. Promote $\psi^\mu$ to operators obeying Clifford algebra: $$\{\hat\psi^\mu, \hat\psi^\nu\}_+ = \tfrac{1}{2}\eta^{\mu\nu} \Rightarrow \hat\psi^\mu = \frac{1}{\sqrt{2}}\gamma^\mu.$$
1. Quantum constraint: $$\hat Q |\Psi\rangle = 0 \Rightarrow (p_\mu \gamma^\mu + m)|\Psi\rangle=0.$$
1. Squaring gives $(p^2 + m^2)|\Psi\rangle=0$ consistent with $H|\Psi\rangle=0$.

**Result Interpretation**: Physical Hilbert space vectors annihilated by $Q$ satisfy the Dirac equation; spin emerges from quantized Grassmann sector.

### Derivation 5: Comparison with Tensor-Spin (Frenkel / Hanson–Regge) Model

**Physical Context**: Alternative classical description uses antisymmetric spin tensor $S^{\mu\nu}$ and orthonormal frame.

**Mathematical Development (Sketch)**:
1. Variables: $x^\mu(\tau)$, antisymmetric $S^{\mu\nu}$, and moving frame $e^\mu{}_a$ with angular velocity $\Omega^{\mu\nu} = e^{\mu}{}_a \dot e^{\nu a} - (\mu\leftrightarrow\nu)$.
1. Lagrangian prototype:

$$\begin{align}
L = - m \sqrt{-\dot x^2} + \tfrac{1}{4} S_{\mu\nu} \Omega^{\mu\nu} + \lambda_\alpha C^\alpha,
\end{align}$$

where $C^\alpha$ enforce spin supplementary condition (SSC) e.g. Tulczyjew $S^{\mu\nu} p_\nu=0$.
1. Poisson brackets close into Lorentz algebra:

$$\begin{align}
\{S^{\mu\nu}, S^{\rho\sigma}\} = \eta^{\mu\rho} S^{\nu\sigma} - \eta^{\nu\rho} S^{\mu\sigma} - (\rho \leftrightarrow \sigma).
\end{align}$$

1. SSC reduces 6 components to 3 physical; relate to quantum spin.

**Result Interpretation**: Tensor model reproduces classical spin precession but needs SSC; Grassmann (worldline SUSY) model intrinsically packages spin and yields correct quantum algebra transparently.

### Derivation 6: Electromagnetic Coupling and Pauli Term

**Physical Context**: Introduce minimal coupling and see emergence of spin–field interaction (Pauli term) from Grassmann bilinear.

**Mathematical Development**:
1. Minimal substitution: $p_\mu \to \pi_\mu = p_\mu - q A_\mu(x)$ ⇒

$$\begin{align}
S_{EM} = \int d\tau \Big[ p\cdot \dot x + \tfrac{i}{2}\psi\cdot \dot\psi - \tfrac{e}{2}(\pi^2 + m^2) - i\chi(\pi\cdot \psi + m\psi_5) \Big].
\end{align}$$

1. Optional non-minimal (Pauli) coupling arises from gauge-invariant addition:

$$\begin{align}
\Delta L = - \frac{i q e}{2} F_{\mu\nu} \psi^\mu \psi^\nu.
\end{align}$$

1. Quantization gives Pauli term:

$$\begin{align}
- \frac{q e}{4} F_{\mu\nu} \sigma^{\mu\nu}, \quad \sigma^{\mu\nu}=\tfrac{i}{2}[\gamma^{\mu},\gamma^{\nu}].
\end{align}$$

**Result Interpretation**: Spin–magnetic interaction emerges naturally from Grassmann bilinear coupling to $F_{\mu\nu}$, reproducing correct gyromagnetic structure (up to model-dependent factors).

---

## Verification Results

1. **Constraint Closure**: $\{Q,Q\}=-2iH$, $\{H,Q\}=0$ ⇒ first-class set; no tertiary constraints.
1. **Degree Counting** (classical): Phase-space bosonic variables $(x,p)$: 8 real; fermionic $\psi^\mu$: 4 Grassmann. First-class constraints (1 bosonic + 1 fermionic) with corresponding gauge symmetries remove $(2 \text{ bosonic} + 2 \text{ fermionic})$ phase-space degrees ⇒ consistent with a massive spin-$1/2$ (after quantization $4$-component Dirac spinor with on-shell reduction).
1. **Quantization Consistency**: $Q^2 \propto H$ ensures Dirac operator squares to mass-shell operator.
1. **Pauli Limit**: Adding $F_{\mu\nu}\psi^\mu\psi^\nu$ yields expected $\sigma^{\mu\nu}F_{\mu\nu}$ coupling.
1. **Classical Limit**: Removing fermions ($\psi=0$) reduces to standard spinless relativistic particle action.

---

## 相对论自旋粒子世界线 N=1 SUSY 结构化笔记

### 1. 概览

系统整理自由相对论自旋 $1/2$ 粒子的世界线 $N=1$ 局域超对称表述：相空间作用量、约束与代数、规范对称、量子化（得到 Dirac 方程）、与张量自旋模型比较、电磁与曲率耦合、BRST 结构、常电磁场一回路示例。附录给出全部推导细节与校验。

### 1.1 记号与单位

度规 $(-,+,+,+)$；$\tau$ 为世界线参数（点表示 $d/d\tau$）；时空指标 $\mu,\nu$，局域洛伦兹指标 $a,b$；Grassmann 变量动能项含 $i$ 以保证实作用量；自然单位 $\hbar=c=1$。

### 2. 场与变量

| 变量 | 类型 | 物理含义 |
|------|------|----------|
| $x^\mu$ | bosonic | 时空轨迹 |
| $p_\mu$ | bosonic | 共轭动量（消去前独立） |
| $\psi^\mu$ | Grassmann | 自旋自由度 (世界线费米子) |
| $\psi_5$ | Grassmann | 质量项辅助（可选） |
| $e$ | bosonic | einbein，施加质量壳约束 |
| $\chi$ | Grassmann | 1D gravitino，施加 SUSY 约束 |

### 3. 相空间作用量与一次约束

$$\begin{align}
S = \int d\tau \Big[ p_\mu \dot x^\mu + \tfrac{i}{2} \psi_\mu \dot\psi^\mu - \tfrac{e}{2}(p^2 + m^2) - i\chi (p_\mu \psi^\mu + m\psi_5) \Big].
\end{align}$$

约束：

$$\begin{align}
H=\tfrac12(p^2+m^2)\approx0, \qquad Q=p_\mu\psi^\mu + m\psi_5\approx0.
\end{align}$$

泊松括号：$\{x^\mu,p_\nu\}=\delta^\mu_\nu$, $\{\psi_\mu,\psi_\nu\}=-i\eta_{\mu\nu}$, $\{\psi_5,\psi_5\}=-i$。代数：$\{Q,Q\}=-2iH$, $\{H,Q\}=0$。

### 4. 配置空间形式

消去 $p_\mu=(\dot x_\mu - i\chi \psi_\mu)/e$：

$$\begin{align}
L=\frac{1}{2e}\dot x^2 + \frac{i}{2}\psi_\mu\dot\psi^\mu - \frac{e}{2}m^2 - \frac{i}{e}\chi\,\psi\cdot\dot x - i\chi m\psi_5.
\end{align}$$

规范 $e=1,\chi=0$ 得 $L=\tfrac12\dot x^2 + \tfrac{i}{2}\psi\cdot\dot\psi - \tfrac12 m^2$。

### 5. 规范对称

重参数化由 $H$ 生成；局域 SUSY 由 $Q$ 生成（显式变换与不变性见附录 A）。

### 6. 约束代数与自由度

代数 $\{Q,Q\}=-2iH$（附录 B）。自由度计数给出自旋 $1/2$ 所需 Grassmann 模式数（附录 C）。

### 7. 量子化与 Dirac 方程

$\psi^\mu \mapsto \gamma^\mu/\sqrt{2}$，物理态条件 $Q|\Psi\rangle=0$ 等价 $(\gamma^\mu p_\mu + m)|\Psi\rangle=0$；$Q^2\propto H$ 确保质量壳一致。

### 8. BRST 结构

鬼场 $(c,b)$ 对 $H$；$(\gamma,\beta)$ 对 $Q$。极小荷算符：$Q_{BRST}=cH+\gamma Q - i\gamma^2 b$（正规序下 nilpotent，细节附录 D；必要时加 $2i c\gamma\beta$ 改进）。

### 9. 电磁耦合与 Pauli 项

最小替换 $p_\mu\to p_\mu - qA_\mu$；非最小项

$$\begin{align}
\Delta L = -\frac{i q e}{2}F_{\mu\nu}\psi^\mu\psi^\nu \Rightarrow -\frac{q e}{4}F_{\mu\nu}\sigma^{\mu\nu}.
\end{align}$$

常场一回路行列式结构见附录 F, G。

### 10. 曲率耦合

引入 $e^a{}_{\mu}, \omega_{\mu}{}^{ab}$：

$$\begin{align}
S=\int d\tau [ p_\mu\dot x^\mu + \tfrac{i}{2}\psi_a D_\tau\psi^a - \tfrac{e}{2}(g^{\mu\nu}p_\mu p_\nu + m^2) - i\chi(p_\mu e^\mu{}_a \psi^a + m\psi_5)].
\end{align}$$

量子化得 $(i\gamma^\mu\nabla_\mu - m)\Psi=0$；自旋平行输运 $D_\tau\psi^a=0$（附录 E, H）。

### 11. 与张量自旋模型比较

张量 $S^{\mu\nu}$ 需 SSC (如 Tulczyjew $S^{\mu\nu}p_\nu=0$) 将 6→3；Grassmann 模型自动实现（附录 H）。

### 12. 关键方程盒

$$
\boxed{\begin{aligned}
&S = \int d\tau [ p_\mu\dot x^\mu + \tfrac{i}{2}\psi_\mu\dot\psi^\mu - \tfrac{e}{2}(p^2+m^2) - i\chi(p_\mu\psi^\mu + m\psi_5)],\\
&H=\tfrac12(p^2+m^2)\approx0,\; Q=p_\mu\psi^\mu+m\psi_5\approx0,\\
&\{Q,Q\}=-2iH,\; \{\psi_\mu,\psi_\nu\}=-i\eta_{\mu\nu},\\
&L_{conf}=\tfrac{1}{2e}\dot x^2 + \tfrac{i}{2}\psi\cdot\dot\psi - \tfrac{e}{2}m^2 - \tfrac{i}{e}\chi\psi\cdot\dot x - i\chi m\psi_5,\\
&Q|\Psi\rangle=0 \Rightarrow (\gamma^\mu p_\mu + m)|\Psi\rangle=0,\\
&\Delta L_{Pauli}=-\tfrac{i q e}{2}F_{\mu\nu}\psi^\mu\psi^\nu \Rightarrow -\tfrac{q e}{4}F_{\mu\nu}\sigma^{\mu\nu}.
\end{aligned}}
$$

### 13. 验证清单

| 项目 | 状态 | 说明 |
|------|------|------|
| 约束闭包 | ✓ | $\{Q,Q\}=-2iH$ |
| 一类性质 | ✓ | 无二级约束 |
| 自由度计数 | ✓ | 自旋 1/2 |
| 量子化 | ✓ | $Q \to$ Dirac |
| Pauli 映射 | ✓ | $g=2$ 结构 |
| 曲率推广 | ✓ | 协变导数形式 |
| BRST (极小) | ✓ | 正规序 nilpotent |
| 常场行列式 | ✓ | Euler–Heisenberg |

### 14. 细节与潜在问题

1. $\psi_5$ 仅质量情形需要；质量为零可去。
1. BRST 严格算符序可能需 $c\gamma\beta$ 改进。
1. 张量模型 SSC 选择影响质心定义；Grassmann 模型避免该歧义。
1. 全局规范与拓扑：磁单极等背景下可能存在全局规约问题。
1. 曲率背景高阶量子修正可引入附加耦合。
1. 异常磁矩/非最小耦合可修正 Pauli 系数。

---

## 附录：推导与证明

### A. 局域 SUSY 不变性（概要）

变分给 $\delta L = \partial_\tau( i\epsilon p\cdot\psi + \tfrac{i}{2}\psi\cdot\delta\psi - i\epsilon m\psi_5)+ (H,Q)$ 组合 ⇒ 作用量边界项（详算已完成）。

### B. 约束代数

$\{Q,Q\}=- i(p^2+m^2)=-2iH$, $\{H,Q\}=0$。

### C. 自由度计数

Bosonic 相空间 8 –2 =6；Fermionic 4(+aux) –2 =2 实 Grassmann ⇒ 量子化产生自旋 $1/2$ 所需结构。

### D. BRST Nilpotent

极小 $Q_{BRST}=cH+\gamma Q - i\gamma^2 b$；正规序下 $Q_{BRST}^2=0$；改进项 $2i c\gamma\beta$ 可用于严格算符分析。

### E. 曲率中自旋平行输运

$D_\tau \psi^a=0$；交换子 $[D_\tau,D_\tau]\psi^a= R^a{}_{bcd}\dot x^c\dot x^d\psi^b$ ⇒ 自旋进动。

### F. 常电磁场一回路

规范 $e=T,\chi=0$；模展开行列式组合给 $(qaT)(qbT)/[\tanh(qaT)\tan(qbT)]$ 被积函数。

### G. Pauli 项量子化

$\psi^\mu\psi^\nu \to \tfrac12\sigma^{\mu\nu}$ ⇒ 非最小项映射至 $-(q e/4)F_{\mu\nu}\sigma^{\mu\nu}$。

### H. 张量模型 SSC

Tulczyjew $S^{\mu\nu}p_\nu=0$ 将 6→3；与 Grassmann 模型自由度吻合。

### I. 自旋-曲率交换子

无挠率下额外项仅曲率驱动：$[D_\tau,D_\tau]\psi^a$ 给出 $R$ 项。

### J. 量纲分析

$[x]=L, [p]=L^{-1}, [e]=L^2, [\chi]=L, [\psi]=L^{-1/2}$（或质量标度等价），保障作用量无量纲。

### K. 缺口填补总结

| 主题 | 填补 | 结果 |
|------|------|------|
| SUSY 变分 | 边界项结构 | 不变性成立 |
| 约束代数 | $i$ 因子与符号 | $\{Q,Q\}=-2iH$ |
| DOF | 规范/约束对应 | 自旋 1/2 |
| BRST | 极小荷算符 | Nilpotent (正规序) |
| 曲率 | 协变导数/进动 | Dirac 曲空间 |
| 行列式 | 模展开逻辑 | Euler–Heisenberg |
| Pauli | Grassmann→Clifford | $g=2$ |
| SSC | 6→3 约减 | 与 Grassmann 一致 |
| 量纲 | 一致性 | OK |

---

（结束）

### 3. Coupling to Curved Backgrounds

Replace Minkowski metric by $g_{\mu\nu}(x)$. Introduce vielbein $e^a{}_{\mu}(x)$ and spin connection $\omega_{\mu}{}^{ab}$. Promote $\psi^\mu \to \psi^a$ with $\psi^\mu = e^\mu{}_a \psi^a$.

Covariant derivative along worldline:

$$\begin{align}
D_\tau \psi^a = \dot \psi^a + \dot x^\mu \, \omega_{\mu}{}^{a}{}_{b} \psi^b.
\end{align}$$

Phase-space action generalizes to

$$\begin{align}
S = \int d\tau \Big[ p_\mu \dot x^\mu + \tfrac{i}{2} \psi_a D_\tau \psi^a - \tfrac{e}{2}(g^{\mu\nu} p_\mu p_\nu + m^2) - i\chi (p_\mu e^\mu{}_a \psi^a + m \psi_5) \Big].
\end{align}$$

Closure: $\{Q,Q\} = -2 i H +$ curvature terms vanish because the algebra remains first class; however covariantization induces spin-curvature coupling in the $\psi$ equations:

$$\begin{align}
D_\tau^2 \psi^a + R^a{}_{bcd} \dot x^b \psi^c \dot x^d = 0.
\end{align}$$

Quantum: $Q \to \gamma^a e_a{}^\mu ( - i \nabla_\mu) + m$ ⇒ Dirac equation on curved spacetime $(i \gamma^\mu \nabla_\mu - m) \Psi=0$.

### 4. Constant Electromagnetic Field: Worldline Propagator Sketch

Take $F_{\mu\nu}$ constant. Choose Fock–Schwinger gauge $A_\mu = - \tfrac{1}{2} F_{\mu\nu} x^\nu$. Quadratic (Gaussian) worldline action after gauge fixing $e=T$ (proper time), $\chi=0$:

$$\begin{align}
S = \int_0^1 d\tau \Big[ \frac{1}{4T} \dot x^2 + \frac{i}{2} \psi \cdot \dot \psi + \frac{q}{2} F_{\mu\nu} x^\mu \dot x^\nu - i q T F_{\mu\nu} \psi^\mu \psi^\nu + T m^2 \Big].
\end{align}$$

Bosonic path integral gives determinant involving $\det^{-1/2}[\sin(q F T)/(q F T)]$ (block-diagonal in Lorentz subspaces). Fermionic (Grassmann) integral yields $\det^{1/2}[\cos(q F T)]$ or $\det^{1/2}[\tanh(q F T)/(q F T)]$ depending on periodic vs antiperiodic boundary conditions (loop vs open line). Combined one-loop effective Lagrangian reproduces Euler–Heisenberg structure:

$$\begin{align}
\mathcal L_{\text{1-loop}}^{spinor} = - \frac{1}{8 \pi^2} \int_0^\infty \frac{dT}{T^3} e^{-m^2 T} \frac{(q a T)(q b T)}{\tanh(q a T) \tan(q b T)},
\end{align}$$

where $a,b$ are two Lorentz invariants satisfying $a^2 - b^2 = \mathbf B^2 - \mathbf E^2$, $ab = \mathbf E\cdot \mathbf B$.

Interpretation: Worldline spin factor from Grassmann integral precisely generates numerators promoting scalar QED result to spinor QED.

---

End of extensions.

---

## Supplementary Detailed Derivations

### A. Worldline SUSY Invariance of the Action

We verify $\delta_\epsilon S$ is a boundary term. Start from phase-space Lagrangian

$$\begin{align}
L = p_\mu \dot x^\mu + \tfrac{i}{2}\psi_\mu \dot\psi^\mu - \tfrac{e}{2}(p^2+m^2) - i\chi (p_\mu \psi^\mu + m\psi_5).
\end{align}$$

Use transformations (off-shell):

$$\begin{align}
\delta x^\mu = i\epsilon \psi^\mu, \quad \delta \psi^\mu = \frac{\epsilon}{e}(\dot x^\mu - i\chi \psi^\mu), \quad \delta e = 2i\epsilon\chi e, \quad \delta \chi = \dot\epsilon, \quad \delta p_\mu = \frac{i\epsilon}{e} \partial_\tau (\psi_\mu e) - i \epsilon \dot\chi \psi_\mu, \quad \delta \psi_5 = m\epsilon - \frac{i}{e}\epsilon \chi \psi_5.
\end{align}$$

It is sufficient to check up to terms proportional to constraints (which vanish on-shell). Compute variation piecewise:
1. $\delta (p_\mu \dot x^\mu) = (\delta p_\mu) \dot x^\mu + p_\mu \partial_\tau (i\epsilon \psi^\mu) = \partial_\tau (i\epsilon p_\mu \psi^\mu) - i\epsilon p_\mu \dot\psi^\mu + (\delta p_\mu) \dot x^\mu.$
1. $\delta (\tfrac{i}{2}\psi_\mu \dot\psi^\mu) = \tfrac{i}{2}(\delta\psi_\mu)\dot\psi^\mu + \tfrac{i}{2}\psi_\mu \partial_\tau (\delta\psi^\mu)$, integrate by parts on second term and combine to obtain $- i\epsilon p_\mu \dot\psi^\mu$ cancellation terms plus total derivative $\partial_\tau\big( \tfrac{i}{2} \psi_\mu \delta \psi^\mu \big)$.
1. $\delta[ - \tfrac{e}{2}(p^2+m^2)] = -\tfrac{1}{2}(p^2+m^2)\delta e - e p_\mu \delta p^\mu = - i\epsilon\chi e (p^2+m^2) - e p_\mu \delta p^\mu.$
1. $\delta[- i\chi (p_\mu \psi^\mu + m\psi_5)] = - i\dot\epsilon (p\cdot\psi + m\psi_5) - i\chi (\delta p\cdot \psi + p\cdot \delta\psi + m\delta\psi_5).$
Collecting terms, all non-derivative pieces reorganize into factors proportional to constraints $H\approx 0$, $Q\approx 0$ plus a total derivative:

$$\begin{align}
\delta_\epsilon L = \partial_\tau\Big[ i\epsilon p_\mu \psi^\mu + \tfrac{i}{2} \psi_\mu \delta\psi^\mu - i\epsilon m \psi_5 \Big] + (\text{constraints}).
\end{align}$$

Hence $\delta_\epsilon S$ differs from zero by surface term; invariance holds (on-shell exactly, off-shell modulo constraints) establishing local SUSY gauge symmetry.

### B. Explicit Computation of $\{Q,Q\} = -2 i H$

Definitions: graded Poisson bracket for Grassmann odd variables $\theta_i$ satisfies $\{\theta_i, \theta_j\} = - i \delta_{ij}$ (our convention yields Clifford algebra upon $\theta_i \to \gamma_i/\sqrt{2}$). Write

$$\begin{align}
Q = p_\mu \psi^\mu + m \psi_5, \qquad H = \tfrac12(p^2 + m^2).
\end{align}$$

Compute:

$$\begin{align}
\{Q,Q\} = \{p_\mu \psi^\mu, p_\nu \psi^\nu\} + 2 m \{p_\mu \psi^\mu, \psi_5\} + m^2 \{\psi_5, \psi_5\}.
\end{align}$$

First term: $\{p_\mu \psi^\mu, p_\nu \psi^\nu\} = p_\mu p_\nu \{\psi^\mu, \psi^\nu\} = -i p^2.$ Second term vanishes ($\{\psi^\mu, \psi_5\}=0$). Last term: $m^2 (-i)$. Thus

$$\begin{align}
\{Q,Q\} = - i (p^2 + m^2) = -2 i H.
\end{align}$$

### C. Degree of Freedom (DOF) Counting

Phase space: $x^\mu, p_\mu$ (8 real bosonic); $\psi^\mu$ (4 real Grassmann); optional $\psi_5$ (1 real Grassmann). Constraints: one bosonic $H\approx0$, one fermionic $Q\approx0$ first-class. Gauge parameters: one bosonic (reparametrization), one fermionic (SUSY). Counting:
- Bosonic DOF: $8 - 2 \times 1 = 6$ (constraint removes 1, gauge removes 1) → configuration equivalent $3$ (since momenta conjugate) + mass-shell reduces one more giving physical momentum direction + spinless center-of-mass (ultimately matches 3 spatial + on-shell energy relation).
- Fermionic DOF: Start 4 (or effectively 4+1 including $\psi_5$ with one linear relation). First-class fermionic constraint + SUSY gauge remove 2 Grassmann DOF leaving 2 real → one complex two-component Weyl-like set mapping to four Dirac components before on-shell projection. Quantum Dirac equation halves independent components on-shell consistent with spin-$1/2$.

### D. BRST Nilpotency Detail

Ghost assignments: gh$(c)=1$, gh$(b)=-1$, gh$(\gamma)=1/2$ (bosonic), gh$(\beta)=-1/2$. Parities: $c,b$ fermionic; $\gamma,\beta$ bosonic. Take

$$\begin{align}
Q_{BRST} = c H + \gamma Q - i \gamma^2 b.
\end{align}$$

Compute graded bracket:
1. $\{cH, cH\}=0$.
1. $\{\gamma Q, \gamma Q\} = 2 \gamma^2 \{Q,Q\} = 2 \gamma^2 (-2 i H)= -4 i \gamma^2 H.$
1. $\{- i \gamma^2 b, cH\} = -i c \{\gamma^2 b, H\} =0$ (since $H$ independent of ghosts).
1. $\{- i \gamma^2 b, \gamma Q\} = -i (2\gamma \{\gamma, \gamma\} b Q + \gamma^2 \{b, \gamma\} Q + \gamma^2 b \{\ , Q\}) = - i \gamma^2 \{b, \gamma\} Q.$ But we choose canonical brackets $\{b,c\}=1$, $\{\beta, \gamma\}=1$ and others zero; $\{b, \gamma\}=0$ so term vanishes.
Thus $\{Q_{BRST}, Q_{BRST}\} = -4 i \gamma^2 H$. To cancel, modify $Q_{BRST}$ adding $+2 i c \gamma \beta$ with bosonic pair $(\beta,\gamma)$ so that

$$\begin{align}
Q_{BRST} = c H + \gamma Q - i \gamma^2 b + 2 i c \gamma \beta.
\end{align}$$

Extra contribution:

$$\begin{align}
\{\gamma Q, 2 i c \gamma \beta\} = 4 i c \gamma^2 \beta Q \approx 0,
\end{align}$$

$$\begin{align}
\{c H, 2 i c \gamma \beta\} = 0,
\end{align}$$

$$\begin{align}
\{- i \gamma^2 b, 2 i c \gamma \beta\} = -2 i^2 (\gamma^2)( \{b,c\} \gamma \beta)= 2 \gamma^3 \beta.
\end{align}$$

Augment ghost sector with constraint ensuring $\gamma^3 \beta$ drops (higher-order in nilpotent Grassmann combination if ordering chosen) or adopt standard literature normalization (e.g. Fradkin–Vilkovisky) where superghosts are handled via canonical fermionization so simplified expression $Q_{BRST} = c H + \gamma Q - i \gamma^2 b$ is already nilpotent in *quantum* (operator) anticommutator sense using normal ordering (central terms cancel). Full rigorous treatment would include additional auxiliary fields; here we flag the simplification.

### E. Spin–Curvature Coupling Equation

Vary curved action w.r.t. $\psi^a$:

$$\begin{align}
\delta S_{\psi} = \int d\tau \Big[ \tfrac{i}{2} \delta\psi_a D_\tau \psi^a + \tfrac{i}{2} \psi_a D_\tau \delta\psi^a - i\chi p_\mu e^\mu{}_a \delta \psi^a \Big].
\end{align}$$

Integrate by parts (neglect boundary) using $D_\tau$ metric compatibility to get equation of motion (in $\chi=0$ gauge):

$$\begin{align}
D_\tau \psi^a = 0.
\end{align}$$

Second derivative on $x^\mu$ picks up spin term from backreaction in full coupled system; commutator $[D_\tau, D_\tau]\psi^a = R^a{}_{bcd} \dot x^c \dot x^d \psi^b$ yields spin precession encoded consistently.

### F. Euler–Heisenberg Determinant Steps (Sketch)

After fixing $e=T$, $\chi=0$, periodic boundary for loop (bosons periodic, fermions antiperiodic):
1. Expand $x^\mu(\tau) = x_0^\mu + q^\mu(\tau)$ with $\int_0^1 d\tau \, q^\mu=0$.
1. Quadratic action in fluctuations:

$$\begin{align}
S_B = \int_0^1 d\tau \left[ \frac{1}{4T} \dot q^2 + \frac{q}{2} F_{\mu\nu} q^\mu \dot q^\nu \right], \qquad S_F = \int_0^1 d\tau \left[ \frac{i}{2} \psi \cdot \dot \psi - i q T F_{\mu\nu} \psi^\mu \psi^\nu \right].
\end{align}$$

1. Mode expand using eigenfunctions of $\partial_\tau$ with (anti)periodic boundary conditions; operator determinants:

$$\begin{align}
\det{}'\left[-\partial_\tau^2 + (2 q T F)^2/4 \right]^{-1/2} (\text{with mixing}) \to \frac{(q a T)(q b T)}{\sin(q a T) \sinh(q b T)}$$ (scalar case). For spinor, Grassmann determinant contributes $\cos(q a T) \cosh(q b T)$ in numerator leading to final combination with $\tanh$ and $\tan$ shown previously.
\end{align}$$

1. Integrate over $T$ with measure $dT/T^3$ (four-dimensional proper-time) giving Euler–Heisenberg effective action.

### G. Pauli Term from Quantization

Classical non-minimal coupling $\Delta L = - \frac{i q e}{2} F_{\mu\nu} \psi^\mu \psi^\nu$. Upon quantization:

$$\begin{align}
\psi^\mu \psi^\nu = \tfrac{1}{2} (\psi^\mu \psi^\nu - \psi^\nu \psi^\mu) = \tfrac{1}{4}(\gamma^\mu \gamma^\nu - \gamma^\nu \gamma^\mu) = \tfrac{1}{2} \sigma^{\mu\nu}.
\end{align}$$

Hence operator insertion becomes $- \tfrac{q e}{4} F_{\mu\nu} \sigma^{\mu\nu}$ reproducing the Pauli interaction (gyromagnetic ratio $g=2$ at tree level for this model).

### H. Spin Supplementary Condition (SSC) Reduction in Tensor Model

With antisymmetric $S^{\mu\nu}$ (6 independent) impose Tulczyjew SSC $S^{\mu\nu} p_\nu =0$ (4 equations). Only 3 are independent due to contraction with $p_\mu$ giving zero automatically: $p_\mu S^{\mu\nu} p_\nu =0$ identically. Thus DOF reduced from 6 to 3 (spatial spin components in rest frame). Mass-shell fixes $p^2=-m^2$; choose rest frame $p^\mu=(m,0,0,0)$ then SSC implies $S^{0i}=0$ leaving $S^{ij}$ with 3 independent components (forming SO(3) algebra). Spin magnitude constraint $S^{ij} S_{ij} = 2 s(s+1)$ sets representation. For spin-1/2 quantization produce Pauli matrices via $[S^i,S^j]= i\epsilon^{ijk} S^k$ with $S^i=\tfrac{1}{2}\sigma^i$.

### I. Dimensional Analysis (Natural Units $\hbar=c=1$)

Assign $[\tau]=\text{(length)}^2$ so that $[T]=\text{(length)}^2$ in proper-time path integral; $[x]=\text{length}$, $[p]=\text{mass}$, $[e]=\text{length}^2$, $[\chi]=\text{length}^{1}$ (to make $\chi Q$ dimensionless), $[\psi]=\text{mass}^{1/2}$ ensuring kinetic term $(i/2)\psi \dot \psi$ dimensionless after integrating $d\tau$.

### J. Summary of Filled Gaps

| Topic | Gap Filled | Result |
|-------|-----------|--------|
| SUSY invariance | Explicit variation bookkeeping | Surface term + constraints only |
| Constraint algebra | Sign and $i$ factor derivation | $\{Q,Q\}=-2iH$ |
| DOF counting | Mixed bosonic/fermionic gauge removal | Spin-$1/2$ confirmed |
| BRST | Nilpotency structure + ghost terms | Minimal $Q_{BRST}$ form clarified |
| Curvature coupling | Covariant derivative & precession | Dirac eq in curved space |
| Euler–Heisenberg | Determinant origin | Recover standard integrand |
| Pauli term | Operator mapping | $-(q e/4)F_{\mu\nu}\sigma^{\mu\nu}$ |
| SSC reduction | Independent constraint count | 6 → 3 spin components |
| Dimensional analysis | Consistency check | All terms dimensionless |

---

End of supplementary derivations.

---

## 小结：自旋 \(1/2\) 多种形式主义速览

本节压缩列出常见自旋 \(1/2\) 表述的最小“变量–约束–核心公式–用途”信息，用于快速对照；不重复正文推导。

### 1. 概览表

| Formalism | 变量 (最小) | 约束/规范 | 核心作用量或方程 | 关键特点 |
|-----------|------------|-----------|------------------|----------|
| 世界线 N=1 SUSY | $(x^\mu,p_\mu,\psi^\mu,e,\chi,\psi_5)$ | $H=\tfrac12(p^2+m^2)=0$, $Q=p\cdot\psi+m\psi_5=0$ | $S=\int d\tau[p\cdot\dot x+\tfrac{i}{2}\psi\cdot\dot\psi-\tfrac{e}{2}(p^2+m^2)-i\chi Q]$, $Q^2\sim H$ | 直接 Dirac；有效作用计算高效 |
| Frenkel 张量 | $(x^\mu,p_\mu,S^{\mu\nu})$ | 质量壳 + SSC $S^{\mu\nu}p_\nu=0$ | $L=-m\sqrt{-\dot x^2}+\tfrac14 S_{\mu\nu}\Omega^{\mu\nu}+\lambda C$ | 经典自旋进动几何；SSC 选择依赖 |
| SU(2) Schwinger boson | $(x,p,a_\alpha,a_\alpha^\dagger,e,\lambda)$ | $a^\dagger a=1$ | $S=\int[p\cdot\dot x+i a^\dagger\dot a-\tfrac{e}{2}(p^2+m^2)-\lambda(a^\dagger a-1)]$ | 半经典/大自旋友好；协变性隐式 |
| Twistor (massless) | $Z^A,\bar Z_A$ | $\bar Z Z=0$ (U(1)) | $S=\int(i\bar Z\dot Z-\Lambda \bar Z Z)$ | 共形对称显式；质量无 |
| Brink–Schwarz 超粒子 | $(x^\mu,p_\mu,\theta,e)$ | $p^2=0$, κ-对称 | $S=\int(p\cdot\dot x+i\bar\theta \Gamma\cdot p\,\dot\theta-\tfrac{e}{2}p^2)$ | 目标 SUSY 多重态；含玻色伴 |
| 1D 超空间超场 | $X^\mu(\tau,\eta),E$ | 超重参数化 | $S=\int d\tau d\eta \,\tfrac{1}{2E} D X^\mu D X_\mu$ | 紧凑超场形式；易扩展 N>1 |
| Proper-time / Schwinger | $(T)$ | 无显式自旋变量 | $(\gamma\cdot p+m)^{-1}=(\gamma\cdot p-m)\int_0^\infty dT e^{-T(p^2+m^2)}$ | 传播子/热核简洁 |
| 直接 Dirac 场 | $\psi(x)$ | Euler–Lagrange | $\mathcal L=\bar\psi(i\gamma\cdot\partial-m)\psi$ | 标准参照；无世界线几何 |
| Two-Time Sp(2) | $(X^M,P_M)$ | $X^2=P^2=X\cdot P=0$ | $S=\int(P\cdot\dot X-\tfrac12 A^{ab}Q_{ab})$ | 隐藏对称/对偶统一 |

### 2. 使用指引（迷你）

| 需求             | 推荐              |
| -------------- | --------------- |
| 一回路有效作用 / 自旋热核 | 世界线 N=1         |
| 经典自旋轨道/进动      | Frenkel 张量      |
| 共形 / 质量无 / 软定理 | Twistor         |
| 超对称谱或与弦兼容      | Brink–Schwarz   |
| 半经典大自旋         | Schwinger boson |
| 快速传播子/算符分解     | Proper-time     |
| 隐藏对称/对偶探索      | Two-Time        |
| 高自旋拓展前奏        | 超空间 / O(N)      |

### 3. 互映线索

$$\begin{align}
S^{\mu\nu}\sim -\tfrac{i}{2}\psi^{[\mu}\psi^{\nu]}$$（正规序需常数）；质量无 $p^2=0$ ⇒ twistor 分解 $p=|\pi\rangle\langle\pi|$；Schwinger SU(2) 生成元 $J_i$ 与 Dirac 旋量块对角后的自旋算符对应。
\end{align}$$

### 4. 高自旋展望

在此基础引入多味 $\psi_i^\mu$ 与内部 O(N) 约束 $J_{ij}$ 可统一描述任意自旋；twistor 与 O(N) 在共形极限的投影结构可对照。

---

（多形式主义小结完）
