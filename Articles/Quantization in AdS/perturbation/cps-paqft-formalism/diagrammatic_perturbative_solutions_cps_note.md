# 用 diagrammatics 微扰求解 ODE/PDE，并接到协变相空间的 note

日期：2026-07-09

## 0. 直接结论

本文是 rooted-tree classical solution 与 CPS pullback 的背景综述，不是 quantum loop calculation pipeline。实际标量 loop 计算统一使用 `../cps canonical quantization to loop corrections.md`；本文出现 commutator 时取 $\hbar=1$。Gauge theory、BV-BRST 和 dynamical gravity 的段落只保留为未来范围提示，不属于当前工作流。

有。前人确实考虑过用类似 Feynman rules 的图形语言来表示 ODE/PDE 的微扰解，而且有三条成熟脉络。

1. **ODE/固定点方程脉络**：Butcher series、rooted trees、Butcher group。这里的“图”是 rooted trees，表达 ODE 流或固定点方程解的微扰级数。
2. **经典 PDE/场方程脉络**：把非线性方程写成 Green 函数积分方程，再 Picard/Duhamel 迭代。每一次迭代给一棵 rooted tree。经典 Cauchy 问题天然给 retarded Green function，图有一条 distinguished output/root leg，没有量子圈图。
3. **tree amplitude/perturbiner 脉络**：Boulware-Brown、Berends-Giele recursion、perturbiner expansion。经典场方程的形式解可以作为 tree-level amplitudes 或 off-shell tree currents 的生成函数。现代 perturbiner 直接用多粒子 ansatz 解非线性场方程，递归产生 tree currents。

所以你的目标可以被精确表述为：

> 给定自由理论的解空间和自由 Green 算子，任意阶弱耦合经典解可以表示为以自由解为叶子、以 Green 算子为内部边、以相互作用项为顶点的 rooted-tree 展开。若不做量子路径积分或随机平均，就没有 loop diagrams。

但要接到 covariant phase space (CPS)，还需要额外处理三件事：

1. 选择背景、边界条件、规范固定和 Green 算子，使树图解真正是 admissible solution。
2. 把完整 CPS symplectic form 拉回到自由解参数空间，逐阶规范化模式或做 Darboux/canonical 变量重定义。
3. 把未破缺对称性矢量场 \(X_\lambda\) 也拉回到微扰解空间，逐阶定义 Noether/Hamiltonian charge，并检查 integrability、boundary flux、central extension 和 gauge degeneracy。

下面把这些内容组织成一套可直接用于 \(\phi^3/\phi^4\) 场论和 CPS 的工作公式。

## 1. 前人怎么做的

### 1.1 ODE：rooted trees 和 Butcher series

对 ODE

$$\begin{align}
\frac{d x}{dt}=\beta(x),\qquad x(0)=g,
\end{align}$$

Taylor 展开中的高阶导数可以用 rooted trees 编码。每个顶点代表一次对 \(\beta\) 的导数，每条子树代表一个已经生成的 lower-order elementary differential。Faris 的综述明确说：固定点方程和 ODE 解的 perturbation expansion 可以写成由 rooted trees indexed 的幂级数；Butcher group 则编码这些 tree series 的 composition/substitution 结构。

这和 QFT 图的差别是：ODE 的 tree 更像 Faà di Bruno/chain rule 的组合结构，而不是传播子积分结构。但概念上它已经是“用图来组织任意阶微扰解”。

### 1.2 PDE/经典场论：Green 函数积分方程和 rooted tree 解

给定非线性方程

$$\begin{align}
K\phi + \lambda N(\phi)=0,
\end{align}$$

其中 \(K\) 是自由线性算子。选定一个 Green 算子 \(G\)，满足

$$\begin{align}
K_xG(x,y)=\delta(x,y)
\end{align}$$

并满足所需边界条件或因果条件。于是方程可写成积分形式

$$\begin{align}
\phi=\phi_0-\lambda\,G N(\phi), \qquad K\phi_0=0.
\end{align}$$

Picard 迭代给出

$$\begin{align}
\phi=\sum_{n\ge 0}\lambda^n\phi_n,
\end{align}$$

每个 \(\phi_n\) 是有限棵 rooted trees 的和。树根是观测点 \(x\)，每条内部边是 \(G\)，每个内部顶点是 \(N\) 的 multilinear vertex，每个叶子是自由解 \(\phi_0\)。

Finster-Tolksdorf 对 classical \(\phi^4\) Cauchy problem 明确做了这件事：他们把 classical solution 展开成 tree diagrams；这些图使用 retarded Green function，而不是 Feynman propagator，并且每个图有一条 outgoing leg。文中也明确比较了 classical expansion 和 quantum expansion：classical field 的 perturbation expansion 只有 non-loop diagrams。

### 1.3 tree amplitudes：classical field 是 tree graphs 的生成函数

Boulware-Brown 的经典结论是：由外源产生的 classical field 是对应 QFT tree-graph approximation 的 generating functional。Lowell Brown 后来在 threshold tree graphs 中也使用了“classical field equation sums tree graphs”的思想。

现代 scattering-amplitude 语言中，同一思想变成 Berends-Giele recursion 和 perturbiner expansion。比如 bi-adjoint scalar 的方程

$$\begin{align}
\Box \phi=\frac12[\![\phi,\phi]\!]
\end{align}$$

可取多粒子 ansatz

$$\begin{align}
\phi(x)=\sum_{P,Q}\Phi_{P|Q}e^{ik_P\cdot x}T^{a_P}\otimes \widetilde T^{\tilde a_Q},
\end{align}$$

代回方程后得到递归

$$\begin{align}
\Phi_{P|Q} =\frac{1}{s_P}
\sum_{P=RS}\sum_{Q=TU} \left(\Phi_{R|T}\Phi_{S|U}-(R\leftrightarrow S)\right).
\end{align}$$

这就是把 nonlinear EOM 转化成 tree-level off-shell currents 的递归生成器。Yang-Mills 中也类似，但需要 gauge fixing、polarization、Ward identity 或 color ordering 来控制冗余。

## 2. 标量场的统一树图解

取背景 \((M,g_{\mu\nu})\) 上的实标量场：

$$\begin{align}
S[\phi] =\int_M d^dx\,\sqrt{|g|} \left[ -\frac12\phi K\phi -\frac{g_3}{3!}\phi^3 -\frac{g_4}{4!}\phi^4 \right],
\end{align}$$

其中可取

$$\begin{align}
K=\Box_g-m^2-\xi R
\end{align}$$

或者按你的号约定取 \(K=-\Box_g+m^2+\xi R\)。下面只要求 \(K\) 和 \(G\) 的符号约定一致。EOM 写成

$$\begin{align}
K\phi+\frac{g_3}{2}\phi^2+\frac{g_4}{3!}\phi^3=0.
\end{align}$$

选定 classical solution kernel $G_{\rm sol}^{\mathcal B}$。Lorentzian Cauchy 问题通常用 retarded $G_R^{\mathcal B}$ 或 advanced $G_A^{\mathcal B}$；Euclidean classical boundary-value problem 使用相应的 elliptic inverse。Feynman kernel $G_F^{\mathcal B}$ 属于选定 state 后的 quantum time-ordering layer，不是 retarded classical solution map 的内部线。积分方程为

$$\begin{align}
\phi(x) =\phi_0(x) -\int_M d\mu_y\,G_{\rm sol}^{\mathcal B}(x,y) \left[ \frac{g_3}{2}\phi(y)^2 +\frac{g_4}{3!}\phi(y)^3 \right], \qquad d\mu_y=\sqrt{|g(y)|}\,d^dy.
\end{align}$$

### 2.1 \(\phi^3\) 递归

设只保留 \(g_3=g\)，并写

$$\begin{align}
\phi=\sum_{n\ge0}g^n\phi_n.
\end{align}$$

则

$$\begin{align}
K\phi_0=0,
\end{align}$$

$$\begin{align}
K\phi_n =-\frac12\sum_{a+b=n-1}\phi_a\phi_b, \qquad n\ge1,
\end{align}$$

也即

$$\begin{align}
\phi_n(x) =-\frac12\int_M d\mu_y\,G(x,y)
\sum_{a+b=n-1}\phi_a(y)\phi_b(y).
\end{align}$$

前两阶是

$$\begin{align}
\phi_1(x) =-\frac12\int d\mu_y\,G(x,y)\phi_0(y)^2,
\end{align}$$

$$\begin{align}
\phi_2(x) =-\int d\mu_y\,G(x,y)\phi_0(y)\phi_1(y) =\frac12\int d\mu_y d\mu_z\, G(x,y)\phi_0(y)G(y,z)\phi_0(z)^2.
\end{align}$$

图规则：

- 外部/root 点 \(x\)：要求解的 \(\phi(x)\)。
- 叶子：自由解 \(\phi_0\)。
- 内部边：\(G\)。
- 三点相互作用在 EOM 中表现为一个 binary rooted vertex，因子 \(-g/2\)。
- 对同阶所有 rooted binary trees 求和；若使用无序树，需要除以 automorphism/symmetry factor；若使用递归中的 ordered partitions，则组合因子已经由递归公式给出。

### 2.2 \(\phi^4\) 递归

只保留 \(g_4=\lambda\)，写

$$\begin{align}
\phi=\sum_{n\ge0}\lambda^n\phi_n.
\end{align}$$

则

$$\begin{align}
K\phi_n =-\frac1{3!}
\sum_{a+b+c=n-1} \phi_a\phi_b\phi_c,
\end{align}$$

$$\begin{align}
\phi_n(x) =-\frac1{3!} \int_M d\mu_y\,G(x,y)
\sum_{a+b+c=n-1} \phi_a(y)\phi_b(y)\phi_c(y).
\end{align}$$

图规则对应 rooted ternary trees：每个 \(\phi^4\) Lagrangian vertex 在 EOM 中变成三条 incoming subtrees 和一条 outgoing/root line。第一阶为

$$\begin{align}
\phi_1(x) =-\frac1{3!}\int d\mu_y\,G(x,y)\phi_0(y)^3.
\end{align}$$

### 2.3 一般多项式相互作用

若

$$\begin{align}
K\phi+\sum_{r\ge2}\frac{g_r}{r!}\phi^r=0,
\end{align}$$

则树的顶点 valency 为 \(r\)。递归为

$$\begin{align}
\phi_N(x) =-\sum_{r\ge2}\frac{1}{r!}
\sum_{\substack{n_1+\cdots+n_r=N-1}} g_r \int d\mu_y\,G(x,y)
\prod_{i=1}^{r}\phi_{n_i}(y).
\end{align}$$

这就是 classical Feynman rule。区别于量子 Feynman rule 的地方是：

1. propagator 由解问题决定，Cauchy 问题通常是 \(G_R\)；
2. 图有 root/output leg；
3. 不对内部动量做 loop integration，因为图无圈；
4. 若做 scattering amplitude，可通过 LSZ 或 perturbiner/Berends-Giele 把 rooted current 变成 on-shell tree amplitude。

## 3. 任意时空背景下是否适用？

**结论：不在无条件意义下适用；在下列精确条件下适用。**

给定背景 \((M,g)\)、边界条件和自由算子 \(K\)，上述 tree expansion 可形式化推广到任意背景，只要满足：

1. **有合适 Green 算子**。Lorentzian Cauchy 问题通常要求全局双曲，才能有唯一 retarded/advanced Green operator。Euclidean 或椭圆边值问题要求边界条件使 \(K\) 成为可逆 Fredholm operator，或可逆 modulo zero modes。
2. **规范冗余已处理**。规范场、引力或有约束系统中，\(K\) 在未规范固定前不可逆。必须先规范固定，或在 BRST/BV/quotient space 中定义 propagator，并把 residual gauge/edge modes 单独保留。
3. **zero modes 和 resonances 已分离**。若 \(K\) 有物理零模，Green 算子只能作用在零模正交补上；源项必须满足 Fredholm solvability condition。若源项激发 resonance，会出现 secular terms，需要重整频率、重整模参数或使用多尺度展开。
4. **边界条件和相空间边界条件相容**。树图解必须落在 CPS 允许的 solution space 中。AdS、null boundary、horizon、finite box、spatial boundary 等情形都可能要求额外 boundary counterterm 或 flux term。
5. **局部有效性而非全局收敛**。大多数场论弱耦合展开是 formal/asymptotic series。Cauchy 问题中 retarded 展开通常只在有限时间或小数据区间内受控；长时间下可能出现 secular growth。

因此曲时空上的规则不是“失效”，而是把平直空间动量 Feynman rule 替换为 position-space covariant Feynman rule：

- propagator: \(G(x,y)\)，是背景上的 bidistribution；
- vertex: \(\int_M d^dy\sqrt{|g|}\) 加局部张量/导数结构；
- derivative interaction: 顶点上有协变导数，作用在相应 propagator 或外腿上；
- boundary: 需要 boundary Green function、corner term 或 allowed falloff。

## 4. 和 covariant phase space 的接法

设完整 Lagrangian \(d\)-form 为

$$\begin{align}
L[\phi;\epsilon]=\sum_{r\ge0}\epsilon^r L_r[\phi],
\end{align}$$

其中 \(\epsilon\) 可以是 \(g_3,g_4\)、高导数参数、或 EFT 小参数。变分写成

$$\begin{align}
\delta L=E(\phi;\epsilon)\delta\phi+d\Theta(\phi;\epsilon;\delta\phi),
\end{align}$$

$$\begin{align}
\omega(\phi;\epsilon;\delta_1\phi,\delta_2\phi) =\delta_1\Theta(\phi;\epsilon;\delta_2\phi) -\delta_2\Theta(\phi;\epsilon;\delta_1\phi).
\end{align}$$

微扰解写成

$$\begin{align}
\phi(\alpha;\epsilon) =\phi_0(\alpha)+\epsilon\phi_1(\alpha)+\epsilon^2\phi_2(\alpha)+\cdots,
\end{align}$$

其中 \(\alpha^A\) 是自由解空间的坐标，例如 mode coefficients \(a_{\bf k},a_{\bf k}^*\) 或离散模式 \(a_n,a_n^\dagger\)。定义 solution map

$$\begin{align}
p_\epsilon:\mathcal S_0\to \mathcal S_\epsilon, \qquad \alpha\mapsto \phi(\alpha;\epsilon).
\end{align}$$

那么微扰后的相空间形式不是直接用 \(\Omega_0\)，而是完整 symplectic current 拉回：

$$\begin{align}
\Omega_{\rm eff}(\epsilon) =p_\epsilon^*\Omega_\epsilon =\int_\Sigma p_\epsilon^*\omega(\phi;\epsilon).
\end{align}$$

展开为

$$\begin{align}
\Omega_{\rm eff} =\Omega^{(0)}+\epsilon\Omega^{(1)} +\epsilon^2\Omega^{(2)}+\cdots.
\end{align}$$

这就是 CPS 版本的“微扰后 canonical structure”。2606.24442 的做法正是：先从 Lagrangian 读出 \(\Theta,\Omega,H\)，再把 perturbative solution 代入 \(\Omega\)，最后用 \(\Omega^{-1}\) 量子化；他们的 toy model 中 \(O(\lambda)\) 和 \(O(\lambda^2)\) 的 symplectic corrections 在代入解后抵消，得到标准 \([a,a^\dagger]=1+O(\lambda^3)\)。进一步的全阶检查表明，这个 toy model 的低能分支其实满足 \(p_\lambda^*\Omega_\lambda=-i\,\delta a\wedge\delta a^\dagger\) 的全阶恒等式；但这仍是该线性模型和其归一化选择的结果，不能作为任意相互作用场论的普遍定理使用。

### 4.1 \(\Omega^{(N)}\) 的实际计算方式

写

$$\begin{align}
\Theta=\sum_{r\ge0}\epsilon^r\Theta_r, \qquad \omega=\sum_{r\ge0}\epsilon^r\omega_r.
\end{align}$$

再将

$$\begin{align}
\phi=\phi_0+\epsilon\phi_1+\epsilon^2\phi_2+\cdots, \qquad \delta\phi=\delta\phi_0+\epsilon\delta\phi_1+\epsilon^2\delta\phi_2+\cdots
\end{align}$$

代入。第 \(N\) 阶包含两类项：

1. \(L_r\) 或 \(\Theta_r\) 本身的 explicit \(\epsilon^r\) correction；
2. 把 \(\omega_r\) 在 \(\phi_0\) 附近 Taylor 展开时，由 \(\phi_1,\ldots,\phi_N\) 和 \(\delta\phi_1,\ldots,\delta\phi_N\) 产生的 implicit correction。

形式上可以写成

$$\begin{align}
\Omega^{(N)} =\int_\Sigma
\sum_{\substack{r+s=N}} \left[ \frac1{s!} \frac{d^s}{d\epsilon^s} \omega_r(\phi(\epsilon);\delta\phi(\epsilon),\delta\phi(\epsilon)) \right]_{\epsilon=0}.
\end{align}$$

这个公式最安全，因为它不会遗漏 derivative interaction 或 higher-derivative interaction 对 \(\Theta\) 的贡献。

### 4.2 模式归一化和 homogeneous ambiguity

每一阶方程一般是

$$\begin{align}
K\phi_n=S_n[\phi_0,\ldots,\phi_{n-1}].
\end{align}$$

一个 particular solution 可由 \(G S_n\) 给出，但还可以加任意 homogeneous solution：

$$\begin{align}
\phi_n=G S_n+h_n,\qquad Kh_n=0.
\end{align}$$

这些 \(h_n\) 不是小问题；在 CPS 中它们正是模式归一化、频率重整、坐标选择和 boundary condition 的自由度。推荐的固定方式：

1. **先固定边界条件/因果条件**：例如 retarded correction 要求 \(\phi_n\) 在初始面为零；AdS normal mode 要求 normalizable falloff；散射问题要求 in/out boundary condition。
2. **再固定相空间坐标**：要求拉回后的 \(\Omega_{\rm eff}\) 在选定坐标中为 canonical/Darboux 形式。
3. **若 \(\Omega_{\rm eff}\neq\Omega_0\)**：做 order-by-order canonical transformation

$$\begin{align}
\alpha^A\mapsto A^A(\alpha;\epsilon) =\alpha^A+\epsilon f_1^A(\alpha)+\epsilon^2 f_2^A(\alpha)+\cdots
\end{align}$$

   使

$$\begin{align}
\Omega_{\rm eff} =i\sum_I dA_I^*\wedge dA_I
\end{align}$$

   或相应的 real Darboux form。
4. **若存在 gauge degeneracy**：先 quotient 掉 proper gauge kernel，或者保留 edge/large gauge data 后在 reduced phase space 上规范化。

对自由模式 \(u_I\)，通常先令

$$\begin{align}
\Omega^{(0)}(u_I,u_J^*)=i\sigma_I\delta_{IJ}.
\end{align}$$

选择归一化常数使 \(\sigma_I=1\)。微扰后如果

$$\begin{align}
\Omega_{\rm eff} =i Z_{IJ}(\epsilon)\, da_I^*\wedge da_J+\cdots,
\end{align}$$

则需要对 \(a_I\) 做矩阵归一化

$$\begin{align}
a_I=(Z^{-1/2})_{IJ} A_J+\cdots,
\end{align}$$

非线性项则用 Darboux/Moser 方法逐阶消除。若 \(\Omega_{\rm eff}\) 有正负范数或零范数方向，则不能盲目设 \([a,a^\dagger]=1\)；要先识别物理 quotient 和能量正定性。

## 5. Noether charge 的微扰展开

设 \(G\) 是未被微扰破坏的连续对称性群。场空间中的对称性矢量为

$$\begin{align}
X_\lambda =\int d^dx\, \delta_\lambda\phi(x) \frac{\delta}{\delta\phi(x)}.
\end{align}$$

这里 \(\lambda\) 可以是内部对称性参数、Killing 参数、large gauge 参数或 diffeomorphism 参数。假设

$$\begin{align}
\delta_\lambda L=d\mu_\lambda.
\end{align}$$

Noether current 为

$$\begin{align}
j_\lambda =\Theta(\phi;\delta_\lambda\phi)-\mu_\lambda
\end{align}$$

对 spacetime diffeomorphism 还要包含 \(-\iota_\xi L\) 等标准 Iyer-Wald 项。on-shell 有

$$\begin{align}
d j_\lambda=0,
\end{align}$$

并且在 gauge/diffeomorphism 型对称性中通常可写为

$$\begin{align}
j_\lambda=C_\lambda+dQ_\lambda,
\end{align}$$

其中 \(C_\lambda\) 是约束项，on-shell 消失。

### 5.1 Hamiltonian charge 的 CPS 定义

CPS 中 charge 的基本定义不是先猜 \(Q_\lambda\)，而是

$$\begin{align}
\delta H_\lambda =\iota_{X_\lambda}\Omega =\int_\Sigma \omega(\phi;\delta\phi,\delta_\lambda\phi).
\end{align}$$

若可化为边界形式，则

$$\begin{align}
\delta H_\lambda =\int_{\partial\Sigma} k_\lambda(\phi;\delta\phi),
\end{align}$$

其中在 Iyer-Wald 型理论中

$$\begin{align}
k_\lambda=\delta Q_\lambda-\iota_\xi\Theta+\cdots
\end{align}$$

省略号包括 boundary/corner term、total derivative ambiguity、以及 \(\delta_\lambda L=d\mu_\lambda\) 的修正。若 \(\delta H_\lambda\) 在场空间可积，则

$$\begin{align}
H_\lambda[\phi]-H_\lambda[\bar\phi] =\int_{\bar\phi}^{\phi}\iota_{X_\lambda}\Omega.
\end{align}$$

若不可积，则只有 flux/balance law，而不是普通 conserved Hamiltonian。

### 5.2 微扰展开

把解和 symplectic form 拉回自由解空间：

$$\begin{align}
\delta H_{\lambda,{\rm eff}} =\iota_{X_{\lambda,{\rm eff}}}\Omega_{\rm eff}, \qquad X_{\lambda,{\rm eff}}:=p_\epsilon^{-1}{}_*\;X_\lambda\;p_{\epsilon *}.
\end{align}$$

展开

$$\begin{align}
\Omega_{\rm eff} =\sum_{n\ge0}\epsilon^n\Omega^{(n)}, \qquad X_{\lambda,{\rm eff}} =\sum_{m\ge m_0}\epsilon^m X_\lambda^{(m)}.
\end{align}$$

则

$$\begin{align}
\delta H_\lambda^{(N)} =\sum_{n+m=N} \iota_{X_\lambda^{(m)}}\Omega^{(n)}.
\end{align}$$

这是最通用、最不容易漏项的公式。注意 \(m_0\) 不一定是 \(0\)。对内部线性对称性通常 \(m_0=0\)，但对引力扰动中的 diffeomorphism，若写

$$\begin{align}
g_{\mu\nu}=g^{(0)}_{\mu\nu} +\kappa h_{\mu\nu} +\kappa^2 k_{\mu\nu}+\cdots,
\end{align}$$

则

$$\begin{align}
\delta_\xi h_{\mu\nu} =\kappa^{-1}{\cal L}_\xi g^{(0)}_{\mu\nu} +{\cal L}_\xi h_{\mu\nu} +O(\kappa),
\end{align}$$

所以 field-space generator 可以有 Laurent 展开：

$$\begin{align}
X_\xi =\kappa^{-1}X_\xi^{[-1]} +X_\xi^{[0]} +\kappa X_\xi^{[1]}+\cdots.
\end{align}$$

这会导致“低阶 charge 从高阶 action/symplectic term 被 \(X_\xi^{[-1]}\) 拉下来”的现象。若背景是 \(\xi\) 的 Killing background，则 \({\cal L}_\xi g^{(0)}=0\)，这个 inhomogeneous leading term 消失；若 \(\xi\) 是 asymptotic symmetry 或 large diffeomorphism，则不能简单丢掉。

### 5.3 未破缺内部对称性的简单形式

若 \(G\) 是内部线性对称性，

$$\begin{align}
\delta_\lambda\phi=T_\lambda\phi,
\end{align}$$

且 \(T_\lambda\) 不含 \(\epsilon\)，则

$$\begin{align}
\delta_\lambda\phi_n=T_\lambda\phi_n.
\end{align}$$

如果相互作用保持 \(G\)，则每一阶源 \(S_n\) 都是 covariant 的，树图解自动把自由解的 \(G\)-作用提升到完整微扰解空间。charge 逐阶为

$$\begin{align}
H_\lambda =H_\lambda^{(0)} +\epsilon H_\lambda^{(1)} +\epsilon^2H_\lambda^{(2)}+\cdots,
\end{align}$$

其中

$$\begin{align}
\delta H_\lambda^{(N)} =\sum_{n=0}^{N} \Omega^{(n)}(\delta\phi,X_\lambda^{(N-n)}).
\end{align}$$

若 \(X_\lambda\) 无 explicit correction，则

$$\begin{align}
\delta H_\lambda^{(N)} =\Omega^{(N)}(\delta\phi,T_\lambda\phi)
\end{align}$$

但这里的 \(\Omega^{(N)}\) 已经包含 \(\phi_1,\ldots,\phi_N\) 对 solution map 的贡献。

### 5.4 charge algebra

若 \(H_\lambda\) 可积，Poisson bracket 由 \(\Omega_{\rm eff}^{-1}\) 定义：

$$\begin{align}
\{H_\lambda,H_\eta\} =\Omega_{\rm eff}(X_\lambda,X_\eta) =H_{[\lambda,\eta]}+K(\lambda,\eta).
\end{align}$$

微扰展开为

$$\begin{align}
K(\lambda,\eta) =\sum_N\epsilon^N K^{(N)}(\lambda,\eta).
\end{align}$$

对 global internal symmetry 通常 \(K=0\)。对 asymptotic symmetry、boundary symmetry、Virasoro/Kac-Moody 型情形，\(K\) 可以非零并且对 boundary counterterm、falloff 和 symplectic potential ambiguity 敏感。

## 6. 和 2606.24442 的关系

2606.24442 的核心流程是：

1. 从 Lagrangian 变分读出 EOM、symplectic potential \(\Theta\)、symplectic form \(\Omega\) 和 Hamiltonian。
2. 把 solution 写成 perturbative expansion，order by order 解 EOM。
3. 将 perturbative solution 代回 symplectic form。
4. 用 \(\Omega^{-1}\) 定义 commutator，并计算 spectrum/correlator。

这正是上面第 4 节的 CPS pullback 公式。该文的特殊点是 toy model 的 perturbation 改变了 kinetic/constraint structure；标准 Dirac-Bergmann canonical quantization 在 \(\lambda=0\) 与 \(\lambda>0\) 的相空间维数不一致，CPS 通过“先构造低能 perturbative solution space，再拉回 \(\Omega\)”绕开这个困难。

对你的场论目标，2606.24442 没有做的是：

1. 没有把 \(\phi^3/\phi^4\) 或 gauge theory 的 arbitrary-order tree solution 写成 diagrammatic recursion。
2. 没有系统讨论 curved background、boundary、gauge degeneracy 和 zero modes。
3. 没有给出 Noether charge 的 tree-level/CPS perturbative expansion。

所以我们可以把它当作 CPS quantization 的 template，而不是 diagrammatic perturbative solution 的来源。前面的 Green-function rooted-tree 技术补上 solution construction；CPS pullback 补上 symplectic normalization 和 charge。

### 6.1 对 2606.24442 toy model 的高阶 stress test

对 2606.24442 的二阶结果继续向高阶检验时，最方便的无量纲变量是

$$\begin{align}
q=\lambda\omega,\qquad s=\omega t,\qquad d=\sqrt{1+4q},
\end{align}$$

低能频率为

$$\begin{align}
f_1=\omega r,\qquad r=\frac{\sqrt{1+4q}-1}{2q}.
\end{align}$$

修正符号后的低能精确分支可写成

$$\begin{align}
x=c\left(\cos[(r-1)s]x_0+\sin[(r-1)s]y_0\right),
\end{align}$$

$$\begin{align}
y=c\left(-\sin[(r-1)s]x_0+\cos[(r-1)s]y_0\right), \qquad c=(1+4q)^{-1/4}.
\end{align}$$

这个线性模型中的 diagrammatics 退化为 rooted-chain recursion：

$$\begin{align}
X_n'-Y_n=Y_{n-1}'', \qquad Y_n'+X_n=-X_{n-1}'',
\end{align}$$

其中 homogeneous pieces 由 CPS normalization 固定。该闭式解给出全阶恒等式

$$\begin{align}
(1+2qr)c^2=1,\qquad c^2(1+qr^2)=r.
\end{align}$$

第一条等价于

$$\begin{align}
p_\lambda^*\Omega_\lambda =-i\,\delta a\wedge\delta a^\dagger
\end{align}$$

全阶成立；第二条等价于

$$\begin{align}
H_{\rm low} =f_1\left(a^\dagger a+\frac12\right)
\end{align}$$

全阶成立。因此 CPS 微扰法与低能精确理论一致，不只到 \(O(\lambda^2)\)。

这个检查还暴露出 2606.24442 v2 的一个符号不一致：其精确解展示式中低能 \(y\) 分支的号与 EOM、\(\lambda=0\) 极限、\(\pi_x,\pi_y\) 公式和 Sec. 4.4 的 CPS commutator 不一致。正确低能分支应为

$$\begin{align}
y_{\rm low} =-\frac{i}{\sqrt{2\sqrt{1+4\lambda\omega}}} \left(ae^{-if_1t}-a^\dagger e^{if_1t}\right).
\end{align}$$

相应地

$$\begin{align}
[x(t_1),y(t_2)]_{\rm low} =+\frac{i}{\sqrt{1+4\lambda\omega}}\cos f_1(t_1-t_2).
\end{align}$$

如果逐字采用源文精确低能小节中的负号，会错误地制造出和 CPS 微扰计算的冲突；修正该符号后冲突消失。详细计算见同目录的 `2606_24442_higher_order_cps_check.md`。

### 6.2 4d flat \(\phi^3/\phi^4\) 的 stress test

对 4d Minkowski 中的普通实标量势能相互作用

$$\begin{align}
S=\int d^4x\, \left[ -\frac12\partial_\mu\phi\,\partial^\mu\phi -\frac12m^2\phi^2 -\frac{g_3}{3!}\phi^3 -\frac{g_4}{4!}\phi^4 \right],
\end{align}$$

tree solution 的递归真正分叉：

$$\begin{align}
\phi=\sum_{a,b\ge0}g_3^ag_4^b\phi_{a,b},
\end{align}$$

$$\begin{align}
K\phi_{a,b} = \frac12
\sum_{\substack{a_1+a_2=a-1\\
b_1+b_2=b}} \phi_{a_1,b_1}\phi_{a_2,b_2} + \frac1{3!}
\sum_{\substack{a_1+a_2+a_3=a\\
b_1+b_2+b_3=b-1}} \phi_{a_1,b_1}\phi_{a_2,b_2}\phi_{a_3,b_3}.
\end{align}$$

这里 \(\phi^3\) 给 binary rooted vertices，\(\phi^4\) 给 ternary rooted vertices。若用 retarded Green function 并规定所有高阶修正在初始 Cauchy 面上的值和时间导数为零，则 interacting solution space 由自由初始数据参数化。

这个 stress test 的 CPS 结论比 2606 toy model 更简单：

$$\begin{align}
p_{g_3,g_4}^*\Omega_{\rm int}=\Omega_0
\end{align}$$

全阶成立。原因是势能相互作用不含导数，symplectic potential

$$\begin{align}
\Theta^\mu=-\partial^\mu\phi\,\delta\phi
\end{align}$$

没有 explicit \(g_3,g_4\) correction；再加上 full symplectic current 在 Cauchy 面之间守恒，而初始面上高阶修正为零。这说明普通 \(\phi^3/\phi^4\) 的非平凡性主要在 tree solution 和 Hamiltonian/in-out map 中，不在 \(\Omega\) 的 Darboux 重定义中。详细计算见同目录的 `flat4_phi3_phi4_tree_cps.md`。

### 6.3 Global AdS3 interacting scalar 的 stress test

Global AdS3 中的 interacting scalar 是更强的测试，因为自由谱离散且高度共振。取

$$\begin{align}
ds^2=\sec^2x(-dt^2+dx^2+\sin^2x\,d\varphi^2),
\end{align}$$

standard/Dirichlet scalar 的 normal modes 为

$$\begin{align}
u_{n,m} =e^{-i\omega_{n,m}t}e^{im\varphi} N_{n,m}(\cos x)^\Delta(\sin x)^{|m|} P_n^{(|m|,\Delta-1)}(\cos2x),
\end{align}$$

$$\begin{align}
\omega_{n,m}=\Delta+2n+|m|.
\end{align}$$

Retarded tree recursion 仍然成立：

$$\begin{align}
\phi_{a,b}=G_R S_{a,b},
\end{align}$$

其中 \(S_{a,b}\) 由 \(\phi^3\) 的二叉顶点和 \(\phi^4\) 的三叉顶点组成。若用 retarded Green function 并令高阶修正在初始 Cauchy 面上为零，则由于势能相互作用不改 \(\Theta^\mu\)，仍有

$$\begin{align}
p_{g_3,g_4}^*\Omega_{\rm int}=\Omega_0
\end{align}$$

全阶成立。

但是这里暴露出前面 tree-solution 语言必须补上的限定：global AdS 的频率满足

$$\begin{align}
\omega_{n,m}=\Delta+N,\qquad N\in\mathbb Z_{\ge0},
\end{align}$$

所以源项频率

$$\begin{align}
\Omega_{\rm source}=\sum_i\sigma_i\omega_{\alpha_i}
\end{align}$$

很容易满足

$$\begin{align}
\Omega_{\rm source}=\omega_\alpha.
\end{align}$$

此时 retarded particular solution 包含 secular terms \(t e^{-i\omega_\alpha t}\)。因此 arbitrary-order rooted-tree expansion 是有限时间 Cauchy 解的自然表示；若目标是 global AdS 中长期有效的 dressed normal modes、能谱或相互作用量子化，则必须在 tree expansion 后再做 Poincare-Lindstedt、canonical normal form 或 resonant system。详细计算见同目录的 `global_ads3_interacting_scalar_tree_cps.md`。

## 7. Classical CPS companion workflow

下面的顺序只构造 classical solution map 与 CPS pullback；量子 loop、counterterms 和 renormalized correlators 进入单独的 canonical/Wick pipeline。

### Step 1：固定自由问题

明确：

$$\begin{align}
K\phi_0=0, \qquad \Omega^{(0)}=\int_\Sigma\omega_0.
\end{align}$$

选择自由模式 \(u_I\) 并归一化：

$$\begin{align}
\Omega^{(0)}(u_I,u_J^*)=i\delta_{IJ}.
\end{align}$$

当前固定背景标量范围不含 gauge degeneracy。

### Step 2：选 classical solution kernel

明确 $G_{\rm sol}^{\mathcal B}$ 是 retarded、advanced、Euclidean elliptic，还是投影掉 zero mode 后的 pseudo-inverse。$G_F^{\mathcal B}$ 或 $G_E^{\mathcal B}$ 作为 quantum contractions 时由 canonical/Wick pipeline 另行选择。Classical kernel 的选择决定：

1. 树图 propagator；
2. homogeneous correction \(h_n\) 的固定；
3. solution map \(p_\epsilon\) 的定义；
4. 后续 \(\Omega_{\rm eff}\) 是否 conserved / independent of \(\Sigma\)。

### Step 3：写 rooted-tree recursion

用递归公式而不是手画图作为定义：

$$\begin{align}
\phi_n=-G\,S_n[\phi_0,\ldots,\phi_{n-1}]+h_n.
\end{align}$$

其中 \(S_n\) 来自 EOM 的第 \(n\) 阶。图只是该递归的可视化和组合记账。

### Step 4：计算 CPS pullback

从完整 \(L\) 读出 \(\Theta,\omega\)，不要只用 \(L_0\)。计算

$$\begin{align}
\Omega_{\rm eff} =\int_\Sigma \omega(\phi(\alpha;\epsilon);\delta\phi(\alpha;\epsilon)).
\end{align}$$

逐阶检查：

1. 是否闭合；
2. 是否 \(\Sigma\)-independent；
3. 是否有 boundary flux；
4. 是否有 degeneracy；
5. 是否能 Darboux 化。

### Step 5：用 \(\Omega_{\rm eff}\) 归一化模式

目标是选定变量 \(A_I\)，使

$$\begin{align}
\Omega_{\rm eff} =i\sum_I dA_I^*\wedge dA_I
\end{align}$$

到目标阶成立。然后再谈 canonical quantization：

$$\begin{align}
[A_I,A_J^\dagger]=\delta_{IJ}.
\end{align}$$

若只在旧变量 \(a_I\) 中写 \([a,a^\dagger]=1\)，必须证明 \(\Omega_{\rm eff}\) 在旧变量中无 correction，或说明 correction 已被吸收到 \(a\to A\)。

### Step 6：Noether charge

对每个未破缺对称性 \(X_\lambda\)，计算

$$\begin{align}
\delta H_\lambda =\iota_{X_\lambda}\Omega_{\rm eff}.
\end{align}$$

然后检查：

1. \(X_\lambda\) 是否 tangent to allowed perturbative solution space；
2. \(\delta H_\lambda\) 是否 integrable；
3. 若有边界，是否需要 \(k_\lambda\)、corner term、flux term；
4. charge algebra 是否有 central extension；
5. gauge parameter 是 proper gauge 还是 large gauge。

## 8. 关键 caveats

1. **tree-level 不等于 free-level**。树图包含任意多个 classical interaction vertices；free solution 只是树叶。
2. **没有 loop 是一个假设，不是图语言的必然结果**。如果做量子 path integral、随机 classical ensemble average、或者把 off-shell trees sewing 成 loop integrand，就会重新出现 loop。
3. **retarded propagator 和 Feynman propagator 不能混用**。Cauchy problem 的 classical solution 用 retarded \(G_R\)；S-matrix amplitude 的 generating functional 常会转成 Feynman prescription 或 on-shell amputated object。
4. **CPS 中的归一化来自完整 \(\Omega\)，不是来自 free action 的内积**。高导数、速度依赖或 boundary perturbation 会直接改 \(\Theta\)。
5. **引力/diffeomorphism 的 \(X_\xi\) 可能有负幂展开**。若背景不严格保持 \(\xi\)，不要把 \({\cal L}_\xi g^{(0)}\) 误当成普通 \(O(1)\) 线性变换。
6. **边界条件是物理输入**。同一个局部 EOM 在不同 Green 算子和边界条件下给不同 perturbative solution space 和不同 charge。

## 9. 最短可复用公式集

经典解：

$$\begin{align}
\phi=\phi_0-G\,V'(\phi), \qquad K\phi_0=0.
\end{align}$$

递归：

$$\begin{align}
K\phi_n=S_n[\phi_0,\ldots,\phi_{n-1}], \qquad \phi_n=G S_n+h_n.
\end{align}$$

CPS 拉回：

$$\begin{align}
\Omega_{\rm eff} =\int_\Sigma \omega(\phi_0+\epsilon\phi_1+\cdots; \delta\phi_0+\epsilon\delta\phi_1+\cdots).
\end{align}$$

模式归一化：

$$\begin{align}
\Omega_{\rm eff} \xrightarrow{\text{Darboux, order by order}}
i\sum_I dA_I^*\wedge dA_I.
\end{align}$$

Noether charge：

$$\begin{align}
\delta H_\lambda^{(N)} =\sum_{n+m=N} \iota_{X_\lambda^{(m)}}\Omega^{(n)}.
\end{align}$$

边界型 charge：

$$\begin{align}
\delta H_\lambda^{(N)} =\int_{\partial\Sigma} k_\lambda^{(N)}.
\end{align}$$

## 10. 参考文献

- D. G. Boulware and L. S. Brown, *Tree Graphs and Classical Fields*, Phys. Rev. 172, 1628-1631 (1968), DOI: https://doi.org/10.1103/PhysRev.172.1628
- F. Finster and J. Tolksdorf, *Bosonic Loop Diagrams as Perturbative Solutions of the Classical Field Equations in \(\phi^4\)-Theory*, arXiv:1201.5497, https://arxiv.org/abs/1201.5497
- W. G. Faris, *Rooted tree graphs and the Butcher group: Combinatorics of elementary perturbation theory*, arXiv:2101.09364, https://arxiv.org/abs/2101.09364
- C. R. Mafra, *Berends-Giele recursion for double-color-ordered amplitudes*, JHEP 07 (2016) 080, https://doi.org/10.1007/JHEP07(2016)080
- H. Gomez, R. L. Jusinskas, C. Lopez-Arcos and A. Quintero Velez, *One-Loop Off-Shell Amplitudes from Classical Equations of Motion*, arXiv:2208.02831, https://arxiv.org/abs/2208.02831
- D. Harlow and J.-Q. Wu, *Covariant phase space with boundaries*, arXiv:1906.08616, https://arxiv.org/abs/1906.08616
- J.-q. Wu and J. Zhao, *Canonical quantization for effective theories with perturbations altering degrees of freedom: a covariant phase space approach*, arXiv:2606.24442, https://arxiv.org/abs/2606.24442
