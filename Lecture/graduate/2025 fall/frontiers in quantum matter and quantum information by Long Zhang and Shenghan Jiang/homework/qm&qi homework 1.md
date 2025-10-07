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
 & -t_{2} \frac{1}{L}\sum _{k}c^{\dagger}_{k,a}e^{ik _{j}}\sum _{k'}c_{k',b}e^{ik'_{j+1}}+\text{h.c.} \\
 & =\sum _{k}-t_{1}c_{k,a}^{\dagger}c_{k,b}-t_{2}e^{-ik}c^{\dagger}_{k,a}c_{k,b}+\text{h.c.} \\
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
d_{k} & =\frac{1}{\sqrt{ 2 }}\left( \frac{E(k)}{t_{1}+t_{2}e^{ik}}c_{k,a}+c_{k,b} \right) \\
e_{k} & =\frac{1}{\sqrt{ 2 }}\left( -\frac{E(k)}{t_{1}+t_{2}e^{ik}}c_{k,a}+c_{k,b} \right)
\end{align}$$

the Hamiltonian can be diagonalized as

$$\begin{align}
H & =\sum _{k}E(k)e^{\dagger}_{k}e_{k}-E(k)d_{k}^{\dagger}d_{k}
\end{align}$$

## 数学推导检查

我逐步检查这个SSH模型的推导：

### ✅ 正确的部分

1. **傅里叶变换定义**：标准且正确
2. **哈密顿量的矩阵形式**：从第二个求和到矩阵表示的步骤正确
3. **能谱计算**：本征值求解无误

### ❌ 发现的错误

#### 1. 傅里叶变换中的关键错误

在从原始哈密顿量到动量空间的变换中，存在**符号和指数处理错误**：

**原推导第3-4行**：
$$H = \sum_k -t_1 c_{k,a}^\dagger c_{k,b} - t_2 e^{-ik} c_{k,a}^\dagger c_{k,b} + \text{h.c.}$$

**正确应该是**：
$$H = \sum_k \left(-t_1 c_{k,a}^\dagger c_{k,b} - t_2 e^{ik} c_{k,a}^\dagger c_{k,b}\right) + \text{h.c.}$$

**详细分析**：
- 第二项来自 $$-t_2 c_{j,b}^\dagger c_{j+1,a}$$
- 傅里叶变换后：$$\sum_j e^{ik(j+1)} = e^{ik}\sum_j e^{ikj}$$
- 因此指数应为 $$+ik$$，而非 $$-ik$$

#### 2. 哈密顿量矩阵的错误

**原推导给出**：
$$H(k) = \begin{pmatrix} 0 & -t_1-t_2 e^{-ik} \\ -t_1-t_2 e^{ik} & 0 \end{pmatrix}$$

**正确形式应为**：
$$H(k) = \begin{pmatrix} 0 & -t_1-t_2 e^{ik} \\ -t_1-t_2 e^{-ik} & 0 \end{pmatrix}$$

#### 3. Pauli矩阵表示错误

**原推导**：
$$H(k) = -(t_1+t_2\cos k)\sigma_x - t_2\sin k \sigma_y$$

**正确表示**：
$$H(k) = -(t_1+t_2\cos k)\sigma_x + t_2\sin k \sigma_y$$

这来自于：
$$-t_1-t_2 e^{ik} = -t_1-t_2(\cos k + i\sin k)$$

### ✅ 能谱结果仍然正确

尽管中间步骤有误，但最终的能谱公式：
$$E(k) = \pm\sqrt{t_1^2 + t_2^2 + 2t_1 t_2 \cos k}$$

**依然正确**，因为 $$|\mathbf{d}(k)|^2 = (t_1+t_2\cos k)^2 + (t_2\sin k)^2$$

### 🔧 建议修正

1. **重新推导傅里叶变换步骤**，特别注意 $$c_{j+1,a}$$ 项的处理
2. **验证边界条件**：确认周期性边界条件的一致性
3. **检查对角化部分**：公式 $$d_k, e_k$$ 的定义需要与修正后的哈密顿量保持一致

### 📚 物理图像

SSH模型的关键物理：
- [[Topological Phase Transition]]在 $$t_1 = t_2$$ 处
- [[Chiral Symmetry]]：$$\{H(k), \sigma_z\} = 0$$
- [[Winding Number]]：$$\nu = \frac{1}{2\pi}\oint dk \, \partial_k \arg(t_1 + t_2 e^{ik})$$

这些物理性质不受上述符号错误影响，但数学推导的严谨性很重要。