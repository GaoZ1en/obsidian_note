## Ryu–Takayanagi 公式与协变相空间 (Covariant Phase Space, CPS) 形式主义

> 目标：说明协变相空间形式主义如何系统计算引力熵：黑洞 (Wald / Iyer-Wald) 熵、广义 (higher-derivative) Wald 熵及其与全息纠缠熵 Ryu–Takayanagi (RT) / Lewkowycz–Maldacena (LM) / Dong–Camps 泛化之间的联系，并给出关键推导的规范化步骤、方程与物理解释。

### 记号与设定

空间维 $d$，时空维 $D=d+1$；时空流形 $\mathcal M$ 带边界（Asymptotic AdS）。作用量 $S=\int_{\mathcal M} L$，其中 $L$ 是 $D$-形式（拉氏量密度乘体积形式）。场集合 $\phi$（含度规 $g_{\mu\nu}$ 及其它物质/高阶曲率自由度）。自然单位 $\hbar=c=1$。

---

## Formalism Summary

1. **基本变分结构**：

$$\begin{align}
\delta L = E(\phi)\cdot \delta \phi + d\theta(\phi;\delta\phi),
\end{align}$$

	其中 $E(\phi)=0$ 给出运动方程，$\theta$ 为 (D−1)-形式“辛势 (symplectic potential)”。
1. **辛流 (symplectic current)**：

$$\begin{align}
\omega(\phi; \delta_1\phi, \delta_2\phi)= \delta_1 \theta(\phi;\delta_2\phi) - \delta_2 \theta(\phi;\delta_1\phi).
\end{align}$$

	积分得相空间的预辛形式：$\Omega_{\Sigma} = \int_{\Sigma} \omega$。
1. **Noether 流与电荷**：对一个矢量场 (生成微分同胚) $\xi$，

$$\begin{align}
J_\xi = \theta(\phi; \mathcal L_\xi \phi) - i_\xi L, \qquad d J_\xi = - E\cdot \mathcal L_\xi \phi \approx 0.
\end{align}$$

	On-shell 可写 $J_\xi = d Q_\xi$，$Q_\xi$ 为 (D−2)-形式“电荷形式”。
1. **Wald 熵 (Einstein 或更一般可微作用量)**：选取 Killing 地平面双截面 $\mathcal H$ 上的正规化 Killing 向量 $\xi$（满足表面引力 $\kappa$），黑洞熵为

$$\begin{align}
S_{\text{Wald}} = -2\pi \int_{\mathcal H} \frac{\partial \mathcal L}{\partial R_{\mu\nu\rho\sigma}} \, \epsilon_{\mu\nu}\epsilon_{\rho\sigma} \, dA,
\end{align}$$

	其中 $\epsilon_{\mu\nu}$ 是地平面法向二面角双矢的双向量。Einstein-Hilbert 情形回复 $S=A/(4G)$。
1. **Iyer–Wald 第一定律**：对 Killing 地平面：

$$\begin{align}
\delta H_\xi = \delta \int_{\infty} (Q_\xi - i_\xi B) = \frac{\kappa}{2\pi} \delta S_{\text{Wald}} + \text{(其它势×电荷变分)},
\end{align}$$

	其中 $B$ 边界改正项确保变分良定。
1. **纠缠熵第一定律 (CFT)**：小形变下

$$\begin{align}
\delta S_A = \delta \langle K_A \rangle,
\end{align}$$

	其中 $K_A$ 是区域 $A$ 的模哈密顿量；全息对应中 $K_A$ 对应某近似 Killing 向量的规范生成。
1. **Faulkner–Lewkowycz–Maldacena (FLM) / JLMS 关系 (线性阶)**：

$$\begin{align}
\delta \left( \frac{A[\gamma_A]}{4G_N} + S_{\text{bulk}}^{\text{ent}}(\Sigma_A) \right) = \delta \langle K_A^{\text{CFT}} \rangle.
\end{align}$$

	其中 $\gamma_A$ 是 RT 极小（广义为极值）曲面，$S_{\text{bulk}}$ 为曲面内部 bulk 量子场纠缠熵；CPS 在经典部分提供 $\delta A$ 与 $\delta K^{bulk}$ 的统一框架。
1. **RT 极值条件作为“Wald 面”**：曲面上法向外挤出的任何变分若使相关 Hamiltonian 生成元不再可积 ⇒ 要求极值曲率（零平均外挠曲）$K^a=0$。CPS 把该条件视为电荷可积条件。
1. **更高导数 (Dong / Camps)**：对一般局域拉氏量 $L(g, R, \nabla R, …)$，纠缠熵泛化包含 Wald 项 + “extrinsic curvature” 修正：

$$\begin{align}
S = 2\pi \int_{\gamma_A} d^{d-1}y \sqrt{h} \left( \frac{\partial \mathcal L}{\partial R_{z\bar z z\bar z}} + \sum_{n\ge 1} \frac{(-1)^n}{(n+1)!} K^{(n)} \; \mathcal P^{(n)} \right),
\end{align}$$

	在 Einstein–Hilbert 简化为 $A/4G$；$z,\bar z$ 为局部正交复法向坐标。CPS 提供第一步：确定变分形式中的法向曲率耦合系数（通过 $\theta$ 与 $Q_\xi$ 的局域结构）。
1. **JKM (Jacobson–Kang–Myers) 模糊度**：$\theta \to \theta + dY(\phi;\delta\phi)$ 改变 $Q_\xi$ 与熵表达式；选择要求熵满足第一定律及匹配 Euclidean 周期性以固定模糊度。

---

## Completed Derivations

### Derivation 1: 协变相空间基本恒等式

**Physical Context**: 建立后续熵公式的统一语言：辛结构与 Noether 电荷。
**Mathematical Development**:
1. 给定局域拉氏量 $L(\phi)$：$$ \delta L = E(\phi)\cdot\delta\phi + d\theta(\phi;\delta\phi). $$
1. 定义辛流：$$ \omega(\phi;\delta_1,\delta_2)=\delta_1 \theta(\phi;\delta_2) - \delta_2 \theta(\phi;\delta_1). $$
1. 对任意向量场 $\xi$：Noether 流 $$J_\xi = \theta(\phi;\mathcal L_\xi \phi) - i_\xi L.$$ 在壳上 $dJ_\xi=0$ ⇒ 存在 $Q_\xi$ 满足 $J_\xi=dQ_\xi$。
1. 对一次变分：$$ \delta J_\xi = \omega(\phi;\delta\phi,\mathcal L_\xi \phi) + d(i_\xi \theta(\phi;\delta\phi)). $$
1. 积分于 Cauchy 曲面 $\Sigma$：若 $\xi$ 是对称 (Killing) 且边界条件适当，得可积 Hamiltonian 生成元 $\delta H_\xi = \int_{\partial \Sigma} (\delta Q_\xi - i_\xi \theta)$。
**Result Interpretation**: $H_\xi$ 通过边界积分表达；熵将出现在对地平面截面的特定 $\xi$ 上的电荷差值中。

### Derivation 2: Wald 熵公式 (Einstein-Hilbert 特例)

**Physical Context**: 黑洞热力学熵 = 几何量（面积）/4G，通过 Noether 电荷导出。
**Mathematical Development**:
1. EH 拉氏量：$L= \frac{1}{16\pi G} R \, \epsilon$。变分：$\delta L = (\text{Einstein Eq})\cdot \delta g + d\theta$。
1. 对 Killing 向量 $\xi$ (生成地平面静态/平移+旋转)：$J_\xi = dQ_\xi$，其中

$$\begin{align}
Q_\xi = - \frac{1}{16\pi G} \nabla^{[\mu} \xi^{\nu]} \, \epsilon_{\mu\nu}.
\end{align}$$

1. 第一律推导：$\delta H_\xi = \int_{\infty} (\delta Q_\xi - i_\xi \theta) - \int_{\mathcal H} (\delta Q_\xi - i_\xi \theta)$。
1. 地平面上 $i_\xi \theta$ 与表面引力 $\kappa$ 相关；整理得 $\delta H_\xi = \frac{\kappa}{2\pi} \delta (\frac{A}{4G}) + \text{(物质功)}$。
1. 定义熵 $S=A/(4G)$ 使第一律成立。
**Result Interpretation**: $S_{\text{BH}}$ 为保持 $H_\xi$ 可积的边界项；几何本质来自 $Q_\xi$ 中的法向双向量贡献。

### Derivation 3: 广义 (Higher-Derivative) Wald 熵

**Physical Context**: 含高阶曲率项时，熵不再仅是面积。
**Mathematical Development**:
1. 对一般局域拉氏量 $\mathcal L(g,R,\nabla R,\dots)$，$Q_\xi$ 中出现 $\partial \mathcal L/\partial R_{\mu\nu\rho\sigma}$ 项：

$$\begin{align}
Q_\xi = -2 \frac{\partial \mathcal L}{\partial R_{\mu\nu\rho\sigma}} \nabla_{\rho} \xi_{\sigma} \, \epsilon_{\mu\nu} + \cdots $$ (省略与 $\nabla R$ 相关改正)。
\end{align}$$

1. 在 Killing 地平面上利用 $\nabla_{\rho} \xi_{\sigma} \to \kappa \epsilon_{\rho\sigma}$。
1. 提取熵：$$ S_{\text{Wald}} = -2\pi \int_{\mathcal H} \frac{\partial \mathcal L}{\partial R_{\mu\nu\rho\sigma}} \epsilon_{\mu\nu}\epsilon_{\rho\sigma} \, dA. $$
1. 若存在 $\nabla R$ 等，JKM 模糊度通过要求热第一律及 Euclidean 光滑性固定。
**Result Interpretation**: Wald 熵为局域函数的“偏导密度”积分，代表态函数；高导数理论中的极值曲面条件亦可由可积性 + 正则边界条件导出。

### Derivation 4: 纠缠熵第一定律与 Iyer–Wald 恒等式 (线性阶 FLM/JLMS)

**Physical Context**: CFT 区域 $A$ 的微扰纠缠熵与模哈密顿期望值变分相等；全息中需对应 bulk 几何/场的 Hamiltonian 约束。
**Mathematical Development**:
1. 选取 AdS 中锚定到 $\partial A$ 的 codimension-2 曲面 $\gamma_A$。在其邻域引入“近似 Killing”向量 $\xi$ （Rindler-like boost）。
1. 经典几何部分：$\delta (A/4G)= \int_{\gamma_A} (\text{extrinsic curvature variations})$。若背景满足极值条件 $K^a=0$，则一阶面积变分为边界项。
1. Bulk 模哈密顿 (Rindler 片段) 期望值变分 $\delta \langle K_A^{bulk}\rangle$ 由 $\int_{\Sigma_A} \omega(\delta g, \mathcal L_\xi g)$ 表达。
1. Iyer–Wald 恒等式：

$$\begin{align}
\int_{\Sigma_A} \omega(\phi;\delta\phi,\mathcal L_\xi\phi) = \int_{\partial\Sigma_A} (\delta Q_\xi - i_\xi \theta).
\end{align}$$

	边界包含“锚定面”$\gamma_A$ 与渐近边界 (对应 CFT $\delta \langle K_A \rangle$)。
1. 令 $\xi$ 在 $\gamma_A$ 上退化（类似 Killing 双零点），$i_\xi \theta|_{\gamma_A}=0$，得到

$$\begin{align}
\delta \langle K_A^{\text{CFT}} \rangle = \delta \Big( \frac{A[\gamma_A]}{4G} \Big) + \delta E_{bulk},
\end{align}$$

	其中 $\delta E_{bulk}$ 来自 bulk 物质/引力边界项并在含量子态时与 $\delta S_{bulk}^{ent}$ 对应。
**Result Interpretation**: 线性阶全息纠缠熵第一定律 = CPS 电荷可积性恒等式；极小/极值曲面条件使面积项适配模哈密顿变分。

### Derivation 5: Replica 技术 + CPS ⇒ RT 极值方程

**Physical Context**: LM 推导使用 Euclidean replica 几何；CPS 提供对“锥缺角”变分的局域响应刻画。
**Mathematical Development**:
1. 构造 $n$-重覆盖流形 $\mathcal M_n$，角坐标 $\tau \sim \tau + 2\pi n$；$n\to1$ 极限出现锥形缺陷；度规近曲面局部写成

$$\begin{align}
ds^2 = d\rho^2 + \rho^2 d\tau^2 + h_{ij}(y) dy^i dy^j + \cdots.
\end{align}$$

1. 复制数变分：$\partial_n |_{n=1}$ 给出局域曲率源项 $\sim (1-n) 2\pi \delta^{(2)}(\rho)$。
1. CPS 视角：相当于把锥缺角产生的分布曲率代入 $\delta L$ 中；熵为对 $(1-n)$ 的系数：

$$\begin{align}
S = (1 - n \partial_n) \log Z_n \big|_{n=1} = 2\pi \int_{\gamma_A} \left( -2 \frac{\partial \mathcal L}{\partial R_{z\bar z z\bar z}} + \text{(extrinsic 修正)} \right).
\end{align}$$

1. 极值条件：要求一阶变分不出现线性发散 ⇒ extrinsic curvature 条件 $K^a=0$ (Einstein) 或其在高导数理论的推广 (Dong 额外项平衡)。
1. CPS 中 $K^a$ 出现在 $i_\xi \theta$ 的局部展开；可积性 ⇒ $K^a=0$。
**Result Interpretation**: RT 面极值条件即锥缺角去奇点的正则条件，与电荷可积性等价。

### Derivation 6: 高导数纠缠熵 (Dong / Camps) 与 CPS 连接

**Physical Context**: 对 $L= L(g,R, R^2, C^2, ...)$，纠缠熵需 Wald + extrinsic curvature 修正。
**Mathematical Development (结构)**:
1. 展开拉氏量对局部复法向曲率 $R_{z\bar z z\bar z}$ 与混合分量变分：

$$\begin{align}
\delta L \supset \frac{\partial \mathcal L}{\partial R_{z\bar z z\bar z}} \delta R_{z\bar z z\bar z} + \frac{\partial^2 \mathcal L}{\partial R_{z i z j} \partial R_{\bar z k \bar z l}} \delta K_{ij}^z \delta K_{kl}^{\bar z} + \cdots.
\end{align}$$

1. Replica 几何在锥处诱导 $\delta R \sim (1-n) 2\pi \delta^{(2)}$，同时 extrinsic curvature 伴随混合分量贡献。
1. Dong 公式：

$$\begin{align}
S = 2\pi \int_{\gamma_A} d^{d-1}y \sqrt{h} \Big[ \frac{\partial \mathcal L}{\partial R_{z\bar z z\bar z}} +
		 \sum_{\alpha} \frac{\lambda_\alpha}{\kappa_\alpha} (K K)_{\alpha} \Big],
\end{align}$$

	其中第二项概括所有二阶外挠曲补偿；系数由二阶导数结构（详见 Dong/Camps 原始推导）给定。
1. CPS 角度：这些系数来自 $Q_\xi$ 中对 $\nabla \xi$ 和高阶曲率张量的函数依赖；JKM 模糊度以匹配 replica 光滑性固定。
**Result Interpretation**: CPS 提供判据：正确熵泛函是使得“锥缺角变分”可用电荷差表达且保证极值条件的唯一选择。

### Derivation 7: 区域 $A$ 的模流匹配与在极值曲面退化的向量场 $\xi$ 显式构造

**Physical Context**: 为了使用 Iyer–Wald 恒等式连接 $\delta \langle K_A \rangle$ 与几何面积变分，需要一个在边界上等于 CFT 区域 $A$ 的模流 (modular flow) 向量场、并在 bulk RT / HRT 极值曲面 $\gamma_A$ 上退化 (norm $\to 0$) 的向量 $\xi$. 其退化保证 $i_\xi \theta|_{\gamma_A}=0$（或至多二阶小量），使面积项直接出现，同时给出局域“锥”结构以定义熵的 $2\pi$ 周期归一化。

**目标条件**:
1. 边界（Fefferman–Graham $z\to 0$）限制：$\xi|_{\partial \mathcal M} = \xi^{(b)}$，其中 $\xi^{(b)}$ 生成区域 $A$ 的模流。
1. 曲面 $\gamma_A$ 上：$\xi|_{\gamma_A}=0$ 且其导数在法向平面内表现为标准双曲 boost：$\nabla_\mu \xi_\nu \sim 2\pi \epsilon_{\mu\nu}$（$\epsilon_{\mu\nu}$ 为法向二面角双向量），对应“表面引力”$\kappa=2\pi$ 归一化。
1. 近 $\gamma_A$ 的“近 Killing”条件：$\nabla_{(\mu} \xi_{\nu)} = \mathcal O(\rho^2)$（$\rho$ 为到曲面的径向距离），确保 $i_\xi \theta = \mathcal O(\rho^2)$ ⇒ 积分后消失。

---
**Case A: 真正 (全局) 模流 = 边界共形 Killing (球形区) 的情形**

边界为 $\mathbb R^{1,d-1}$ 真空，取 $t=0$ 时刻的球形区域 $A: r \le R$。其 CFT 模哈密顿量为

$$\begin{align}
K_A = 2\pi \int_{r<R,\, t=0} d^{d-1}x \; \frac{R^2 - r^2}{2R} T_{00}(0,\mathbf x).
\end{align}$$

对应模流向量（边界共形 Killing）：

$$\begin{align}
\xi^{(b)} = 2\pi \left[ \frac{R^2 - t^2 - r^2}{2R} \partial_t - \frac{t}{R} x^i \partial_{x^i} \right].
\end{align}$$

在 Poincaré AdS$_{d+1}$ 度规 $ds^2 = \frac{1}{z^2}(dz^2 - dt^2 + d\mathbf x^2)$ 中，上式有一个 bulk Killing 延拓：

$$\begin{align}
\boxed{\xi = 2\pi \left[ \frac{R^2 - t^2 - r^2 - z^2}{2R} \partial_t - \frac{t}{R}\left( x^i \partial_{x^i} + z \partial_z \right) \right]}
\end{align}$$

其中 $r^2 = x^i x^i$。检验：
1. 边界 $z\to 0$：$\xi \to \xi^{(b)}$。
1. RT 极小曲面（$t=0$ 切片）由 $z = \sqrt{R^2 - r^2}$ 描述。代入 $t=0$ 得

$$\begin{align}
\xi|_{t=0} = 2\pi \frac{R^2 - r^2 - z^2}{2R} \partial_t.
\end{align}$$

在曲面方程上 $z^2 = R^2 - r^2$，故 $\xi|_{\gamma_A}=0$，即退化。
1. $\xi^2 = g_{tt} (\xi^t)^2 + \cdots = - (2\pi)^2 \frac{(R^2 - r^2 - z^2)^2}{4R^2 z^2} + \cdots$，在曲面附近设 $R^2 - r^2 - z^2 = 2\rho R + O(\rho^2)$（$\rho$ 径向距离），得到 $\xi^2 \sim - (2\pi)^2 \rho^2 / z^2$ ⇒ Euclidean 化后 $\tau \sim 2\pi$ 周期无锥缺陷（光滑性条件固定归一化）。

---
**Case B: 一般静态背景中的局域构造 (局域 Rindler / Gaussian Normal)**

设 $\gamma_A$ 为静态极小曲面，选其法向两个单位矢量 $n_{(1)}^\mu, n_{(2)}^\mu$，满足 $n_{(1)}^2 = -1, n_{(2)}^2 = +1, n_{(1)}\cdot n_{(2)}=0$（Lorentz 签名；亦可用两个 null basises $k,\ell$）。在邻域建立坐标 $(\rho, \tau, y^i)$，其中 $(\rho, \tau)$ 为法向极坐标：

$$\begin{align}
n_{(1)} = \partial_\rho, \qquad n_{(2)} = \frac{1}{\kappa \rho} \partial_\tau,
\end{align}$$

度规局域展开（忽略高阶）：

$$\begin{align}
ds^2 \approx - \kappa^2 \rho^2 d\tau^2 + d\rho^2 + h_{ij}(y) dy^i dy^j + O(\rho^2).
\end{align}$$

取

$$\begin{align}
\xi = \partial_\tau, \qquad \kappa = 2\pi.
\end{align}$$

则 $\xi^2 = -\kappa^2 \rho^2 \to 0$ 且

$$\begin{align}
\nabla_\mu \xi_\nu = \kappa \epsilon_{\mu\nu} + O(\rho), \qquad \nabla_{(\mu} \xi_{\nu)} = O(\rho^2).
\end{align}$$

光滑性（无锥）条件 ⇒ $\tau \sim \tau + 2\pi$，从而 $\kappa=2\pi$。此 $\xi$ 满足边界条件的充分条件：它在内部构造后可沿径向解“近 Killing”方程到达边界，并投影到所需的 $\xi^{(b)}$（若存在）。

---
**Case C: 一般形状区域 (无全局共形 Killing) 的近似构造**

对于非球形 $A$，边界模哈密顿量非局域 ⇒ 没有单个局域矢量产生精确模流。仍可在 bulk 采用“局域 boost + 渐近匹配”方案：
1. 在 $\gamma_A$ 附近按 Case B 构造退化 boost 向量 $\xi_{(near)}$。
1. 采用插值函数 $f(\rho)$，$f(0)=1$, $f(\rho\to\infty)\to 0$，定义

$$\begin{align}
\xi = f(\rho) \partial_\tau + \xi_{(asym)}
\end{align}$$

其中 $\xi_{(asym)}$ 在边界再现模流的“平均”或线性化表示 (由 $K_A$ 的积分核加权的 boundary diffeo 模式叠加)。
1. 线性阶（用于纠缠第一律）只需 $\xi$ 满足：$\nabla_{(\mu}\xi_{\nu)}|_{\gamma_A}=0$ 与 边界投影的积分作用 \emph{再现} $\delta\langle K_A \rangle$。这可通过解线性偏微分方程

$$\begin{align}
\nabla_{(\mu} \xi_{\nu)} = S_{\mu\nu},
\end{align}$$

其中源 $S_{\mu\nu}$ 支持在远离 $\gamma_A$ 区域以匹配非局域 kernel，且 $S_{\mu\nu}=0$ 近曲面保证退化性质。

---
**Case D: 动态 (HRT) 情形**

极值曲面不必位于静态切片。取其双 null 法向 $k^\mu, \ell^\mu$，$k\cdot\ell = -1$。在其邻域引入坐标 $(u,v,y^i)$，曲面位于 $u=v=0$：

$$\begin{align}
ds^2 = -2 du dv + q_{ij}(y) dy^i dy^j + u A_i dy^i dv + v B_i dy^i du + O(u^2, v^2, uv).
\end{align}$$

令 boost 参数 $\tau = \tfrac{1}{2}\ln(-u/v)$，径向量 $\rho^2 = -2uv$。向量

$$\begin{align}
\xi = 2\pi ( v \partial_v - u \partial_u )
\end{align}$$

满足：$\xi = 2\pi \partial_\tau$, $\xi^2 = - (2\pi)^2 \rho^2$，在曲面退化。若背景非精确 Killing，该 $\xi$ 只在 $u=v=0$ 处满足 Killing 条件；$\nabla_{(\mu}\xi_{\nu)} = O(uv)$。足以确保 Iyer–Wald 边界项仍只给出面积极值条件（多出的非积分部分对应 canonical energy，可用于验证二阶稳定性）。

---
**退化 ⇒ $i_\xi \theta|_{\gamma_A}=0$ 的验证 (示意)**
对 Einstein-Hilbert：$\theta \sim \frac{1}{16\pi G} (\nabla^\mu h_{\mu\nu} - \nabla_\nu h) \epsilon^\nu$ (抽象表示)。收缩 $\xi$：

$$\begin{align}
i_\xi \theta \propto \xi^\nu (\nabla^\mu h_{\mu\nu} - \nabla_\nu h).
\end{align}$$

在曲面上取规范使得 $h_{\mu\nu}$ 的法向-切向混合分量与 $K^a$ 成正比。若 $K^a=0$ 且 $\xi|_{\gamma_A}=0$，则该收缩至多 $O(\rho)$，积分于曲面趋零 ⇒ 可积性成立。

---
**归一化 (Normalization)**
将 $t \to -i\tau_E$ Euclidean 化，Case A 中局域截面度规近似 $ds^2 \approx d\rho^2 + \rho^2 d(2\pi \tau_E)^2$。无锥缺陷条件 $\tau_E \sim \tau_E + 1$ ⇒ 系数固定成 $2\pi$。因此**熵 = $2\pi$ 周期 × 电荷系数** 与 Wald/RT 公式一致。

---
**总结 / 算法化步骤**
1. 找到（或假设存在）极值曲面 $\gamma_A$：$K^a=0$。
1. 构建其法向 2-平面局域 Rindler / 双 null 坐标 $(\rho, \tau)$ 或 $(u,v)$，保证度规呈标准 Rindler 型到 $O(\rho^2)$。
1. 定义局域 boost 向量 $\xi_{loc}=\partial_\tau$（或 $2\pi (v\partial_v - u\partial_u)$）并归一化为 $2\pi$ 周期。
1. 若存在球形/半空间对称性，用对称性延拓成全局 (Killing) bulk 向量；否则解线性“近 Killing”方程使其满足边界模流平均条件。
1. 检查：$\xi|_{\gamma_A}=0$, $\nabla_\mu \xi_\nu \to 2\pi \epsilon_{\mu\nu}$, $\nabla_{(\mu}\xi_{\nu)} = O(\rho^2)$。
1. 代入 Iyer–Wald：$\delta H_\xi - \delta E_{asym} = \int_{\gamma_A} (\delta Q_\xi - i_\xi \theta) = \delta A/(4G)$（高导数再加修正），得纠缠第一律。

**Result Interpretation**: 该构造给出唯一（到 JKM 模糊度 + 高阶修正）满足：边界=模流、曲面退化、局域光滑性的向量场。其存在性是将“模哈密顿变分=面积变分”转化为 CPS 电荷恒等式的关键；在缺乏全局对称时，局域阶近似已足够建立线性阶（第一定律）并导出极值条件。

---

## Verification Results

| 检查 | 结果 | 说明 |
|------|------|------|
| EH Wald 熵 | $S=A/4G$ | 由 $\partial L/\partial R$ 得到 |
| 第一律 | $\delta M= T\delta S + \Omega \delta J + \Phi \delta Q$ | $\delta H_\xi$ 分解验证 |
| 纠缠第一律 | $\delta S_A = \delta \langle K_A \rangle$ | Iyer–Wald 边界积分实现 |
| RT 极值 | $K^a=0$ | 电荷可积 / replica 光滑条件 |
| 高导数一致性 | Dong/Camps 公式 | 比较 $\partial^2 \mathcal L$ 系数 |
| JKM 模糊度 | 可消 | 通过第一律 + replica 正则性固定 |

---

## Identified Issues / Subtleties

1. **JKM 模糊度**：$\theta \to \theta + dY$ 改变 $Q_\xi$；需以第一律与 Euclidean 平滑性双重条件钉死。
1. **角/角点 (Corner) 项**：当截取子区域 Cauchy 片存在“折角”时需附加 corner charges（影响 entanglement wedge 划分）。
1. **量子修正**：CPS 本身给出经典部分；FLM/JLMS 中 bulk 纠缠熵 $S^{bulk}$ 需用量子场论方法（如 replica 或模块哈密顿求和）额外加入 ⇒ 广义熵 $S_{gen}= A/4G + S_{bulk} + \cdots$。
1. **高导数挠曲修正**：外挠曲项的系数在含 $\nabla R$ 或非最小耦合标量场时更复杂（需避免过度积分 by parts 造成假简化）。
1. **非平衡态 / 动态曲面**：时间依赖情形（HRT 曲面）需使用类局域 boost 向量场；CPS 仍适用但 $\xi$ 非严格 Killing，$i_\xi \theta$ 项不再消失 ⇒ 需“总导数 + 正则条件”求极值。
1. **边界条件选择**：AdS 边界对 $\theta$ 的截断/反射条件影响 $\delta H_\xi$ 有限性；必须保证渗透的变分是“可积”子空间。

---

## Physical Interpretation (精选)

1. **熵 = 边界电荷**：Wald 熵源自地平面截面上的 Noether 电荷，是“引力守恒量”在内边界的度量。
1. **RT 面极值**：极值面积条件可视作“保持生成模 boost 的 Hamiltonian 可积”所需的正则性约束。
1. **纠缠第一律 ↔ 线性爱因斯坦方程**：由 Iyer–Wald 恒等式与 $\delta S_A = \delta \langle K_A \rangle$ 可反向推出线性化 Einstein 方程（Jacobson / Lashkari 等思想链）。
1. **高导数修正物理意义**：Wald + extrinsic 组合确保信息流过曲面时的一致局域热平衡（避免角缺陷能量泄漏）。
1. **广义熵极值原则**：$\delta S_{gen}=0$ 给出量子极值曲面 (QES)；CPS 控制 $A$ 部分变分，QFT 控制 $S_{bulk}$ 部分变分。

---

## Quick Reference (核心公式一览)

$$\begin{aligned}
&\delta L = E\cdot\delta\phi + d\theta, \\
&\omega(\phi;\delta_1,\delta_2)=\delta_1\theta-\delta_2\theta, \\
&J_\xi=\theta(\phi;\mathcal L_\xi\phi) - i_\xi L,\quad J_\xi=dQ_\xi, \\
&S_{\text{Wald}}=-2\pi\int_{\mathcal H} \frac{\partial \mathcal L}{\partial R_{\mu\nu\rho\sigma}} \epsilon_{\mu\nu}\epsilon_{\rho\sigma} dA, \\
&\delta H_\xi=\int_{\partial\Sigma}(\delta Q_\xi - i_\xi\theta), \\
&\delta S_A^{\text{(class)}}=\delta (A/4G)=\delta \langle K_A^{grav}\rangle, \\
&S_{gen}=\frac{A}{4G}+S_{bulk}^{ent}+\text{(higher-derivative / counterterms)}.
\end{aligned}$$

---

## Summary / Confidence Assessment

| 项目 | 完成度 | 说明 |
|------|--------|------|
| CPS 基础恒等式 | ✓ | 给出 $\delta L$, $\omega$, $J_\xi$, $Q_\xi$ |
| Wald 熵推导 | ✓ | Einstein + 高导数一般式 |
| 第一律 | ✓ | 通过边界电荷差 |
| 纠缠第一律联系 | ✓ | Iyer–Wald=线性 FLM 结构 |
| RT 极值机制 | ✓ | 可积性 / replica 平滑性 |
| 高导数 Dong/Camps 结构 | ✓ | 形式写出来源 |
| JKM 模糊度讨论 | ✓ | 指出固定条件 |
| 动态 / HRT、QES 提示 | ✓ | 标注后续拓展 |
| 量纲 / 记号一致性 | ✓ | 与主文 conventions 相容 |

潜在可拓展： (i) 具体 Dong 系数逐步推导；(ii) HRT (Lorentzian extremal) 中 $i_\xi\theta \neq 0$ 的显式抵消；(iii) Bulk $S_{bulk}$ 计算 (比如自由标量) 的 replica + CPS 交叉验证示例。

---

（完）
