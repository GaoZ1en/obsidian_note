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
\theta _{k} & =2E(k) \\
\vec{n}_{k} & =\frac{1}{E(k)}\begin{pmatrix}
-t_{1}-t_{2}\cos k \\
-t_{2}\sin k \\
0
\end{pmatrix}
\end{align}$$

then the Hamiltonian becomes

$$\begin{align}
H & =\sum _{k}E(k)(d_{k,+}^{\dagger}d_{k,+}-d_{k,-}^{\dagger}d_{k,-}) 
\end{align}$$

then the ground state is

$$\begin{align}
\ket{\psi}  & =\prod _{k}d_{k,-}^{\dagger}\ket{0} 
\end{align}$$


when $\displaystyle{t_{1}>t_{2}}$, the trajectory of $\displaystyle{\vec{n}_{k}}$ is just a arc, and when $\displaystyle{t_{2}>t_{1}}$, the trajectory of $\displaystyle{\vec{n}_{k}}$ is a full circle. so the topological non-trivial phase is $\displaystyle{t_{2}>t_{1}}$

![[Attachments/Pasted image 20251007194324.png]]

## stable edge states

turn to open boundary system. for $\displaystyle{t_{1}=0}$, the Hamiltonian is

$$\begin{align}
H & =\sum ^{L-1}_{j=1}\left(-t_{2}c^{\dagger}_{j,b}c_{j+1,a}-t_{2}c^{\dagger}_{j+1,a}c_{j,b}\right)
\end{align}$$

define

$$\begin{align}
\alpha _{j} & =\frac{1}{\sqrt{ 2 }}(c_{j+1,a}+c_{j,b}) \\
\alpha _{j}^{\dagger} & =\frac{1}{\sqrt{ 2 }}(c_{j+1,a}^{\dagger}+c_{j,b}^{\dagger}), & j=1,2,\cdots,L-1
\end{align}$$

then the Hamiltonian can be diagonalized as

$$\begin{align}
H & =\sum ^{L-1}_{j=1}-t_{2}(\alpha _{j}^{\dagger}\alpha _{j}-\alpha _{j}\alpha _{j}^{\dagger})
\end{align}$$

$$\tag{.}\begin{align}
\begin{pmatrix}
0 & 1 \\
1 & 0
\end{pmatrix}=U\begin{pmatrix}
1 & 0 \\
0 & -1
\end{pmatrix}U^{\dagger} \\
U & =\frac{1}{\sqrt{ 2 }}p
\end{align}$$

$$\begin{align}
H & =-t_{2}\begin{pmatrix}
0 & 0 & 0 & 0 & 0 & 0 & \dots \\
0 & 0 & 1 & 0 & 0 & 0 & \dots \\
0 & 1 & 0 & 0 & 0 & 0 & \dots \\
0 & 0 & 0 & 0 & 1 & 0 & \dots \\
0 & 0 & 0 & 1 & 0 & 0 & \dots \\
0 & 0 & 0 & 0 & 0 & 0 & \dots
\end{pmatrix}
\end{align}$$



## 矩阵表示

在实空间基底$$\{c_{1,a}, c_{1,b}, c_{2,a}, c_{2,b}, \ldots, c_{L,a}, c_{L,b}\}$$下，哈密顿量的矩阵形式为：

$$H = \begin{pmatrix}
0 & 0 & 0 & -t_2 & 0 & 0 & \cdots \\
0 & 0 & 0 & 0 & 0 & 0 & \cdots \\
0 & 0 & 0 & 0 & 0 & -t_2 & \cdots \\
-t_2 & 0 & 0 & 0 & 0 & 0 & \cdots \\
0 & 0 & 0 & 0 & 0 & 0 & \cdots \\
0 & 0 & -t_2 & 0 & 0 & 0 & \cdots \\
\vdots & \vdots & \vdots & \vdots & \vdots & \vdots & \ddots
\end{pmatrix}$$

## 边缘态分析

### 左边缘态（零模）

观察哈密顿量结构，我们寻找满足$$H|\psi\rangle = 0$$的态。

注意到：
- $$c_{1,a}$$只与$$c_{2,b}$$耦合
- $$c_{L,b}$$只与$$c_{L-1,a}$$耦合  
- 这两个格点各自只有一个邻居

尝试左边缘态：$$|\psi_L\rangle = c_{1,a}^\dagger |0\rangle$$

验证：
$$H c_{1,a}^\dagger |0\rangle = -t_2 c_{2,b}^\dagger c_{1,a} c_{1,a}^\dagger |0\rangle + t_2 c_{1,a}^\dagger c_{2,b} c_{1,a}^\dagger |0\rangle = 0$$

因为$$c_{2,b}c_{1,a}^\dagger = c_{1,a}^\dagger c_{2,b}$$（不同格点反对易），且$$c_{2,b}|0\rangle = 0$$。

### 右边缘态（零模）

类似地，右边缘态为：$$|\psi_R\rangle = c_{L,b}^\dagger |0\rangle$$

验证：
$$H c_{L,b}^\dagger |0\rangle = -t_2 c_{L-1,a}^\dagger c_{L,b} c_{L,b}^\dagger |0\rangle + t_2 c_{L,b}^\dagger c_{L-1,a} c_{L,b}^\dagger |0\rangle = 0$$

## 体态的求解

对于体态，我们可以用类似的方法。系统实际上可以分解为独立的二聚体对：

### 二聚体结构

当$$t_1=0$$时，系统变成$$L-1$$个独立的二聚体：
$$(c_{j,b}, c_{j+1,a})$$ for $$j = 1, 2, \ldots, L-1$$

每个二聚体的哈密顿量为：
$$H_{\text{dimer}} = -t_2(c_{j,b}^\dagger c_{j+1,a} + c_{j+1,a}^\dagger c_{j,b})$$

其本征值为$$E = \pm t_2$$，对应的本征态为：
- **成键态**（能量$$-t_2$$）：$$|\psi_-\rangle = \frac{1}{\sqrt{2}}(c_{j,b}^\dagger + c_{j+1,a}^\dagger)|0\rangle$$
- **反键态**（能量$$+t_2$$）：$$|\psi_+\rangle = \frac{1}{\sqrt{2}}(c_{j,b}^\dagger - c_{j+1,a}^\dagger)|0\rangle$$

## 多体基态

$$t_1=0$$时的多体基态包含：

1. **左边缘零模**：$$c_{1,a}^\dagger$$
2. **所有二聚体的成键态**：$$\prod_{j=1}^{L-1} \frac{1}{\sqrt{2}}(c_{j,b}^\dagger + c_{j+1,a}^\dagger)$$
3. **右边缘态空着**（$$c_{L,b}$$不被占据）

因此，多体基态为：

$$\boxed{|\Psi_0\rangle = c_{1,a}^\dagger \prod_{j=1}^{L-1} \frac{1}{\sqrt{2}}(c_{j,b}^\dagger + c_{j+1,a}^\dagger) |0\rangle}$$

## 基态性质

1. **粒子数**：$$N = 1 + (L-1) = L$$（半填充）
2. **总能量**：$$E_0 = 0 + (L-1) \times (-t_2) = -(L-1)t_2$$
3. **边缘态**：左边缘有一个被占据的零模，右边缘有一个空的零模

## 物理图像

这个结果完美展示了[[拓扑边缘态]]的特征：
- 在拓扑非平凡相（$$t_2 > t_1 = 0$$）中
- 系统两端各有一个零能边缘态
- 左端被占据，右端为空
- 这些边缘态是拓扑保护的，不会因为局部扰动而消失

这是[[Su-Schrieffer-Heeger模型]]中[[体边对应]]原理的直接体现。