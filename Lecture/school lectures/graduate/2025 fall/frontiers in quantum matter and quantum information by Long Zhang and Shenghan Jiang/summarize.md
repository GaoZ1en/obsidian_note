# 一维量子物质与量子信息复习提纲

这份提纲基于你的作业内容（SSH, Heisenberg, Ising, MPS, AKLT），梳理了核心概念、物理图像和关键技术。

---

## 一、 核心图景：一维量子系统的分类

在一维系统中，我们主要关注**有能隙（Gapped）**的相。根据**对称性**和**拓扑性质**，可以分为以下几类：

1.  **平庸相 (Trivial Phase)**:
    *   没有对称性破缺，没有拓扑性质。
    *   基态近似于直积态（Product State）。
    *   *例子*: Ising 模型的大横场相 ($h \gg J$)，SSH 模型的 $t_1 \gg t_2$ 相。
2.  **对称性破缺相 (SSB Phase)**:
    *   **Landau 范式**：基态简并，破坏了哈密顿量的全局对称性。
    *   存在**局域序参量** (Local Order Parameter) $\neq 0$。
    *   *例子*: Ising 模型的铁磁相 ($J \gg h$)，Heisenberg 模型的反铁磁序（但在1D量子系统中，连续对称性通常因量子涨落而不破缺，即Mermin-Wagner定理，但离散对称性如 $\mathbb{Z}_2$ 可以破缺）。
3.  **对称性保护拓扑相 (SPT Phase)**:
    *   **超越 Landau 范式**：没有对称性破缺（局域序参量为 0），但与平庸相无法绝热连接。
    *   特征：**边缘态 (Edge States)**、**非局域弦序参量 (String Order Parameter)**。
    *   *例子*: SSH 模型的拓扑相 ($t_2 > t_1$)，AKLT 模型（Haldane 相）。

---

## 二、 关键模型与物理概念

### 1. SSH 模型 (自由费米子拓扑)
*   **物理图像**: 粒子在双子格链上跳跃。
*   **核心概念**:
    *   **手征对称性 (Chiral Symmetry)**: 保证了哈密顿量可以写成反对角块形式，从而定义了**卷绕数 (Winding Number)** $\nu$。
    *   **体边对应 (Bulk-Boundary Correspondence)**: 体态的拓扑性质（$\nu=1$）直接导致了开边界条件下零能**边缘态**的存在。
    *   **保护机制**: 只要不破坏手征对称性（例如不加 $t_1 c_{j,a}^\dagger c_{j,a}$ 这种项）且不关闭能隙，边缘态就是稳定的。

### 2. Transverse Field Ising 模型 (量子相变原型)
*   **物理图像**: 铁磁相互作用 $J$ vs 量子涨落 $h$。
*   **核心概念**:
    *   **对偶性 (Duality)**: 强场相和弱场相在数学形式上是对偶的（通过 Jordan-Wigner 变换或 Kramers-Wannier 对偶）。
    *   **域壁 (Domain Wall)**: 在铁磁相中，激发是“域壁”。无序算符 $\prod X_j$ 实际上是在测量域壁的关联。
    *   **MPS 视角**:
        *   **SSB 的信号**: 转移矩阵 $T$ 的最大本征值简并。
        *   **Cat State**: 物理上的基态是全对称的叠加态（GHZ态），但在热力学极限下，我们会自发选择一个对称性破缺的基态。

### 3. Heisenberg & AKLT 模型 (相互作用自旋链)
*   **Heisenberg**:
    *   **微扰论**: 从 Hubbard 模型在大 $U$ 极限下推导而来。这是**有效哈密顿量**的一个经典例子：高能自由度（双占据态）被积分掉，产生低能下的自旋交换相互作用 $J \sim t^2/U$。
*   **AKLT (Spin-1)**:
    *   **Haldane Gap**: 整数自旋的反铁磁链是有能隙的（不同于半整数自旋的无能隙）。
    *   **VBS (Valence Bond Solid)**: 每个 Spin-1 分裂成两个虚 Spin-1/2，相邻格点的虚自旋形成单态（Singlet）。
    *   **隐藏序 (Hidden Order)**: 局域看起来是无序的（$\langle S_i S_j \rangle \sim e^{-|i-j|}$），但存在非局域的**弦序**（String Order）。

---

## 三、 核心技术：矩阵乘积态 (MPS)

这是现代处理一维量子物质的通用语言。

### 1. 为什么用 MPS?
*   **面积定律 (Area Law)**: 一维 gapped 系统的纠缠熵 $S \sim \text{const}$，不随系统尺寸增长。MPS 恰好捕捉了这种低纠缠结构。

### 2. MPS 的结构
$$ |\Psi\rangle = \sum_{\{s\}} \text{Tr}(A^{s_1} A^{s_2} \dots) |s_1 s_2 \dots\rangle $$
*   **物理腿 (Physical Leg)**: 维度 $d$，代表真实的希尔伯特空间（如自旋上下）。
*   **虚拟腿 (Virtual Leg)**: 维度 $D$ (Bond Dimension)，代表纠缠资源。

### 3. 转移矩阵 (Transfer Matrix) $T$
*   $T = \sum_s A^s \otimes (A^s)^*$。
*   **作用**: 将计算关联函数 $\langle O_i O_j \rangle$ 转化为矩阵乘法 $T^n$。
*   **关联长度**: 由 $T$ 的最大本征值 $\lambda_1$ 和次大本征值 $\lambda_2$ 决定：$\xi \sim 1/\ln|\lambda_1/\lambda_2|$。

### 4. MPS 中的对称性 (这是考试重点)
如果系统有全局对称性 $U_g$，在 MPS 局部张量 $A$ 上体现为：
$$ \sum_{s'} (U_g)_{ss'} A^{s'} = e^{i\theta_g} V_g A^s V_g^\dagger $$
*   **$V_g$ 是什么？**: 它是对称群在**虚拟空间**上的表示。
*   **射影表示 (Projective Representation)**: 关键在于 $V_g$ 可能只是**射影表示**（即 $V_g V_h = e^{i\omega(g,h)} V_{gh}$，多一个相位因子）。
    *   **分类判据**: 不同的相位因子（上同调类 $H^2(G, U(1))$）对应不同的 **SPT 相**。
    *   *例子*: AKLT 模型中，物理自旋是 Spin-1 ($SO(3)$ 线性表示)，但虚拟自旋是 Spin-1/2 ($SU(2)$，是 $SO(3)$ 的射影表示，转 $2\pi$ 变号)。这就是它拓扑非平庸的原因。

---

## 四、 考试解题“套路”总结

1.  **解能谱 (Free Fermion)**:
    *   傅里叶变换 $c_j \to c_k$。
    *   写成 $H = \sum_k \psi_k^\dagger h(k) \psi_k$ 形式。
    *   对 $h(k)$ 矩阵对角化求 $E(k)$。
    *   *注意*: 边界条件（PBC vs OBC）。

2.  **微扰论 (Perturbation)**:
    *   公式: $H_{eff} = - P V \frac{1}{H_0 - E_0} V P$ (二阶)。
    *   *技巧*: 找准中间态（Virtual States）和能量差分母。

3.  **MPS 对称性分析**:
    *   给定张量 $A$，验证对称性 $U A = V A V^\dagger$。
    *   **判断 SSB**: 看转移矩阵 $T$ 是否有简并的模为 1 的本征值。
    *   **判断 SPT**: 算出虚拟表示 $V_g$，看它是否满足非平庸的代数关系（如 $V_x V_z = - V_z V_x$）。
    *   **计算弦序**: 转化为转移矩阵夹三明治 $\langle L | \hat{O}_{string} | R \rangle$。

4.  **张量网络缩并**:
    *   利用图形记号（Graphical Notation）辅助思考。
    *   利用 Wigner-Eckart 定理确定自由参数个数（数 Clebsch-Gordan 系数的通道数）。


---

## 五、 量子信息与量子纠错 (QEC)

这部分内容基于你的作业 (Homework 4, 5, 6)，涵盖了量子信道、纠错码（Shor, Steane, 5-qubit）以及容错量子计算。

### 1. 量子信道 (Quantum Channels)
*   **Kraus 表示 (Operator-Sum Representation)**:
    $$ \mathcal{E}(\rho) = \sum_k E_k \rho E_k^\dagger, \quad \sum_k E_k^\dagger E_k = I $$
    *   *物理意义*: 环境与系统相互作用后，对环境做迹。
    *   *常见信道*:
        *   **Depolarizing**: $\rho \to (1-p)\rho + p \frac{I}{d}$ (Bloch 球均匀收缩)。
        *   **Dephasing**: $\rho \to (1-p)\rho + p Z \rho Z$ (Bloch 球沿 Z 轴压缩，丧失相干性 $T_2$)。
        *   **Amplitude Damping**: 能量耗散 ($T_1$)。

### 2. 量子纠错码 (QEC Codes)
*   **QEC 条件 (Knill-Laflamme Condition)**:
    $$ P E_a^\dagger E_b P = \alpha_{ab} P $$
    *   $P$ 是码空间投影算符，$E_a, E_b$ 是错误算符。
    *   *直观理解*: 错误不能使得不同的码字混淆（正交性），且错误对码空间的影响必须是“刚性”的（不泄露信息）。

*   **稳定子码 (Stabilizer Codes)**:
    *   **定义**: 由阿贝尔 Pauli 群 $S$ 定义，码空间是 $S$ 的共同 +1 本征子空间。
    *   **逻辑算符**: 与 $S$ 对易但在 $S$ 之外的算符 ($\bar{X}, \bar{Z}$)。
    *   **经典例子**:
        *   **Shor 9-qubit**: $[[9, 1, 3]]$，纠正任意单比特错误。是 Repetition Code 的级联（纠正位翻转 + 相位翻转）。
        *   **Steane 7-qubit**: $[[7, 1, 3]]$，CSS 码。利用经典 Hamming Code $H$ 矩阵构造。
            *   *特点*: 逻辑门 $\bar{H}, \bar{S}, \text{CNOT}$ 都是**横向 (Transversal)** 的，非常适合容错计算。
        *   **5-qubit Code**: $[[5, 1, 3]]$，最小的能纠正任意单比特错误的编码。

### 3. 容错量子计算 (Fault-Tolerant Quantum Computing)
*   **核心思想**: 即使线路中的组件（门、测量、制备）有错误，错误也不会在数据块中**横向传播**导致不可纠正的错误（如一个物理错误变成两个物理错误）。
*   **关键技术**:
    *   **横向门 (Transversal Gates)**: 第 $i$ 个逻辑块的物理比特只与第 $i$ 个物理比特作用。例如 Steane 码的 CNOT。
    *   **魔态注入 (Magic State Distillation)**: 对于非 Clifford 门（如 $T$ 门），通常不能横向实现。解决方法是：
        1.  制备一个高保真度的“魔态” $|A\rangle = T|+\rangle$。
        2.  利用 Clifford 门和测量，通过**门隐形传态 (Gate Teleportation)** 将 $T$ 门作用到数据上。
    *   **综合征测量 (Syndrome Measurement)**: 不能直接测数据比特（会破坏叠加态），要用辅助比特测稳定子 $S_i$。
        *   *Cat State / GHZ State*: 用纠缠态辅助比特来防止辅助比特本身的错误传播回数据比特。

### 4. 考试解题“套路” (QEC)
1.  **验证 QEC 条件**:
    *   算出 $P E_a^\dagger E_b P$。
    *   如果 $E_a^\dagger E_b$ 在稳定子群 $S$ 内 $\to P$。
    *   如果 $E_a^\dagger E_b$ 与 $S$ 对易但不在 $S$ 内（即逻辑算符） $\to$ 坏了，不可纠正。
    *   如果 $E_a^\dagger E_b$ 与 $S$ 反对易 $\to 0$（正交，可区分）。

2.  **找逻辑算符**:
    *   $\bar{X}, \bar{Z}$ 必须与所有稳定子对易。
    *   $\{\bar{X}, \bar{Z}\} = 0$。
    *   独立于稳定子。

3.  **设计容错线路**:
    *   检查错误传播路径：一个错误通过 CNOT 控制端会传到目标端。
    *   确保单个错误最多导致每个码块内出现 1 个错误。
