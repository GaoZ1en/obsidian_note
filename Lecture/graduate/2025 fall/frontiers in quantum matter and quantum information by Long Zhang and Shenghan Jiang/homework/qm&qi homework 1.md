# SSH model

consider the SSH model, the Hamiltonian is

$$\tag{1.0}\begin{align}
H & =\sum ^{L}_{j=1}\left(-t_{1}c_{j,a}^{\dagger}c_{j,b}-t_{2}c^{\dagger}_{j,b}c_{j+1,a}+\text{h.c.}\right)
\end{align}$$

where $\displaystyle{c_{j,a}}$ and $\displaystyle{c_{j,b}}$ are the fermion annihilation operators on sublattices $\displaystyle{a}$ and $\displaystyle{b}$ of the $\displaystyle{j}$-th unit cell, and $\displaystyle{t_{1}}$ and $\displaystyle{t_{2}}$ are real positive hopping amplitudes. we adopt periodic boundary conditions, i.e., $\displaystyle{c_{L+1,a/b}=c_{1,a/b}}$. 

## energy spectrum solution

take a Fourier transform

$$\begin{align}
c_{k,a/b} & =\frac{1}{\sqrt{ L }}\sum _{j=1}^{L}c_{j,a/b}e^{-ik_{j}}, &  k _{j} & =\frac{2\pi j}{L}, & j & =0,1,2,\cdots,L-1 \\
\implies c_{j,a/b} & =\frac{1}{\sqrt{ L }}\sum _{k}c_{k,a/b}e^{ik _{j}}
\end{align}$$

then the Hamiltonian becomes

$$\begin{align}
H & =\sum _{j=1}^{L}-t_{1} \frac{1}{\sqrt{ L }}\sum _{k}c_{k,a}^{\dagger}e^{-ik _{j}} \frac{1}{\sqrt{ L }}\sum _{k'}c_{k',b}e^{ik' _{j}} \\
 & -t_{2} \frac{1}{L}\sum _{k}c^{\dagger}_{k,a}e^{-ik _{j}}\sum _{k'}c_{k',b}e^{ik'_{j+1}}+\text{h.c.} \\
 & =\sum _{k}-t_{1}c_{k,a}^{\dagger}c_{k,b}-t_{2}e^{ik}c^{\dagger}_{k,a}c_{k,b}+\text{h.c.} \\
 & =\sum _{k}(c^{\dagger}_{k,a},c^{\dagger}_{k,b})\begin{pmatrix}
0 & -t_{1}-t_{2}e^{-ik} \\
-t_{1}-t_{2}e^{ik} & 0
\end{pmatrix}\begin{pmatrix}
c_{k,a} \\
c_{k,b}
\end{pmatrix} \\
H(k) & =-(t_{1}+t_{2}\cos k)\sigma _{x}-t_{2}\sin k\sigma _{y}
\end{align}$$


then

$$\begin{align}
\det(H(k)-E(k)I) & =0 \\
\implies E(k) & =\pm\sqrt{ (t_{1}+t_{2}\cos k)^{2}+t_{2}^{2}\sin ^{2}k } \\
 & =\pm\sqrt{ t_{1}^{2}+t_{2}^{2}+2t_{1}t_{2}\cos k }
\end{align}$$

the energy spectrum is symmetric about $\displaystyle{E=0}$, and the band gap closes when $\displaystyle{t_{1}=t_{2}}$.

![[Attachments/Pasted image 20251007182251.png]]

(in this picture we assume $\displaystyle{t_{1}=1,t_{2}=2}$)

## band topology

define

$$\begin{align}
d_{k} & =\exp\left(i\theta _{k}\frac{\vec{n}_{k}\cdot \sigma}{2}\right)\begin{pmatrix}
c_{k,a} \\
c_{k,b}
\end{pmatrix} \\
\vec{n}_{k} & = \\
\theta _{k}
\end{align}$$

then the ground state wave function can be written as

$$\begin{align}
\ket{\Psi} =\prod _{k}d ^{\dagger}_{k}\ket{0} 
\end{align}$$

## 求解 SSH 模型中的 $\theta_k$ 和 $\vec{n}_k$

从你提供的 SSH 模型哈密顿量出发，我们需要将其写成标准的二能级系统形式来提取 Bloch 向量参数。

### Step 1: 哈密顿量的标准形式

从你的推导中，我们有：
$$H(k) = -(t_1 + t_2\cos k)\sigma_x - t_2\sin k\sigma_y$$

这可以写成：
$$H(k) = \vec{h}_k \cdot \vec{\sigma}$$

其中 $\vec{h}_k = (h_x, h_y, h_z)$ 是 Bloch 向量，$\vec{\sigma} = (\sigma_x, \sigma_y, \sigma_z)$ 是 Pauli 矩阵向量。

### Step 2: 提取 Bloch 向量分量

比较系数，我们得到：
$$\begin{align}
h_x &= -(t_1 + t_2\cos k) \\
h_y &= -t_2\sin k \\
h_z &= 0
\end{align}$$

### Step 3: 计算 $\theta_k$ 和 $\vec{n}_k$

Bloch 向量的模长为：
$$|\vec{h}_k| = \sqrt{h_x^2 + h_y^2 + h_z^2} = \sqrt{(t_1 + t_2\cos k)^2 + t_2^2\sin^2 k}$$

这正好等于你计算的能量本征值的绝对值：$|\vec{h}_k| = |E(k)|$

因此：
$$\boxed{\theta_k = 2|\vec{h}_k| = 2\sqrt{t_1^2 + t_2^2 + 2t_1t_2\cos k}}$$

单位向量 $\vec{n}_k$ 为：
$$\boxed{\vec{n}_k = \frac{\vec{h}_k}{|\vec{h}_k|} = \frac{1}{\sqrt{t_1^2 + t_2^2 + 2t_1t_2\cos k}} \begin{pmatrix} -(t_1 + t_2\cos k) \\ -t_2\sin k \\ 0 \end{pmatrix}}$$

### Step 4: 物理意义

- **$\theta_k$**: 表示在 Bloch 球面上绕 $\vec{n}_k$ 轴的旋转角度，其大小正比于能隙
- **$\vec{n}_k$**: 是 Bloch 球面上的单位向量，指向哈密顿量在赝自旋空间中的"磁场"方向

### Step 5: 特殊情况验证

当 $k = 0$ 时：
$$\vec{n}_0 = \frac{-(t_1 + t_2), 0, 0}{|t_1 + t_2|} = (-\text{sgn}(t_1 + t_2), 0, 0)$$

当 $k = \pi$ 时：
$$\vec{n}_\pi = \frac{-(t_1 - t_2), 0, 0}{|t_1 - t_2|} = (-\text{sgn}(t_1 - t_2), 0, 0)$$

这些结果在分析 [[拓扑相变]] 时非常重要，特别是在 $t_1 = t_2$ 时系统处于临界点。

^cite{Su1979,Thouless1982}

## 为什么可以将哈密顿量写成 $H(k) = \vec{h}_k \cdot \vec{\sigma}$ 形式？

这是一个非常好的基础问题！让我从数学和物理两个角度来解释。

### 数学基础：Pauli 矩阵的完备性

**核心定理**：任何 $2 \times 2$ 厄米矩阵都可以唯一地表示为：
$$H = h_0 I + h_x \sigma_x + h_y \sigma_y + h_z \sigma_z$$

其中 $h_0, h_x, h_y, h_z \in \mathbb{R}$。

**证明思路**：
1. Pauli 矩阵 $\{I, \sigma_x, \sigma_y, \sigma_z\}$ 构成 $2 \times 2$ 复矩阵空间的一组基
2. 任何 $2 \times 2$ 厄米矩阵有 4 个独立的实参数
3. 因此这种分解是唯一的

### Step 1: 具体验证 SSH 模型

你的 SSH 哈密顿量：
$$H(k) = \begin{pmatrix} 0 & -(t_1 + t_2 e^{-ik}) \\ -(t_1 + t_2 e^{ik}) & 0 \end{pmatrix}$$

展开 $e^{\pm ik} = \cos k \pm i \sin k$：
$$H(k) = \begin{pmatrix} 0 & -(t_1 + t_2\cos k) + it_2\sin k \\ -(t_1 + t_2\cos k) - it_2\sin k & 0 \end{pmatrix}$$

现在比较 Pauli 矩阵：
$$\begin{align}
\sigma_x &= \begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix}, \quad
\sigma_y = \begin{pmatrix} 0 & -i \\ i & 0 \end{pmatrix}, \quad
\sigma_z = \begin{pmatrix} 1 & 0 \\ 0 & -1 \end{pmatrix}
\end{align}$$

### Step 2: 系数提取

通过直接比较矩阵元素：
$$H(k) = -(t_1 + t_2\cos k)\sigma_x - t_2\sin k\sigma_y + 0 \cdot \sigma_z$$

因此：
$$\boxed{\vec{h}_k = (-(t_1 + t_2\cos k), -t_2\sin k, 0)}$$

### Step 3: 为什么这种分解有用？

**1. 几何直观**：
- $\vec{h}_k$ 可以视为"有效磁场"在赝自旋空间中的表示
- Bloch 向量 $\vec{n}_k = \vec{h}_k/|\vec{h}_k|$ 在 Bloch 球面上的轨迹决定了拓扑性质

**2. 能谱计算**：
$$E_{\pm}(k) = \pm|\vec{h}_k| = \pm\sqrt{h_x^2 + h_y^2 + h_z^2}$$

**3. 拓扑不变量**：
Berry 相位和 Chern 数可以通过 $\vec{n}_k$ 的几何性质计算：
$$\gamma = \oint_C \vec{A}_k \cdot d\vec{k}$$
其中 $\vec{A}_k$ 是 Berry 连接

### Step 4: 物理图像

**赝自旋表示**：
- SSH 模型的两个格点（A, B）对应赝自旋的两个状态
- $\sigma_x$ 对应 A-B 间的跃迁
- $\sigma_y$ 对应 A-B 间的相位差
- $\sigma_z$ 对应 A-B 间的能量差（SSH 中为零）

### Step 5: 一般化意义

这种分解对所有具有两能级结构的系统都适用：
- [[量子比特|Qubits]] 
- [[自旋轨道耦合|Spin-orbit coupled systems]]
- [[拓扑绝缘体|Topological insulators]] 的有效低能理论
- [[超导体|Superconductors]] 的 BdG 哈密顿量

**关键洞察**：$SU(2)$ 群的生成元（Pauli 矩阵）自然地描述了所有二能级量子系统的物理。

^cite{Kitaev2001,Thouless1982}

这就是为什么我们可以"这么做"——这不仅是数学上的便利，更反映了二能级系统的深层几何结构！