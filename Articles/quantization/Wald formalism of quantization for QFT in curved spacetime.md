# quantum mechanics

consider a system with action

$$\tag{1.1}
\begin{align}
S & =\int _{t_{i}}^{t_{f}}L[q(t)]\mathrm{d}t
\end{align}
$$

take a variation, we have eom and symplectic potential

$$\tag{1.2}
\begin{align}
\delta S & =\int ^{t_{f}}_{t_{i}}E\delta q\mathrm{d}t+\theta|^{t_{f}}_{t_{i}} \\
E & =\frac{\delta L}{\delta q}-\frac{\mathrm{d}}{\mathrm{d}t} \frac{\delta L}{\delta \dot{q}} \\
\theta & =\frac{\delta L}{\delta\dot{q}}\delta q
\end{align}
$$

the symplectic form is obtained by taking a variation of the symplectic potential

$$\tag{1.3}
\begin{align}
\omega & =\delta \theta \\
 & =\delta\left( \frac{\delta L}{\delta \dot{q}} \right)\wedge \delta q
\end{align}
$$

suppose $\displaystyle{q(t)=q[a,a^{\dagger}]}$ solves the complexified eom and the symplectic form can be written as

$$\tag{1.4}
\begin{align}
\omega & =i\delta a^{\dagger}\wedge \delta a
\end{align}
$$

suppose $\displaystyle{\frac{\partial}{\partial \tau}}$ generates a symmetry of the action, i.e., there is a vector field $\displaystyle{X_{\tau}}$ corresponding to $\displaystyle{\frac{\partial}{\partial \tau}}$

$$\tag{1.5}
\begin{align}
X_{\tau} & =\int \mathrm{d}\tau \delta _{\tau}q \frac{\delta}{\delta q}
\end{align}
$$

and satisfies

$$\tag{1.6}
\begin{align}
X_{\tau}\cdot S & =\alpha _{\tau}|_{t_{f}-t_{i}}
\end{align}
$$

then the Noether charge (we call it a Hamiltonian if $\displaystyle{\frac{\partial}{\partial \tau}}$ is the time translation generator) corresponding to $\displaystyle{\frac{\partial}{\partial \tau}}$ is given by

$$\tag{1.7}
\begin{align}
H_{\tau} & =X_{\tau}\cdot \theta-\alpha _{\tau}
\end{align}
$$

for an operator $\displaystyle{\mathcal{O}[q]}$, the corresponding Hamiltonian flow under the coordinates $\displaystyle{(a,a^{\dagger})}$ is given by

$$\tag{1.8}
\begin{align}
X_{\mathcal{O}} & =-i\int \mathrm{d}\tau\left(\frac{\delta \mathcal{O}}{\delta a^{\dagger}} \frac{\delta}{\delta a}-\frac{\delta \mathcal{O}}{\delta a} \frac{\delta}{\delta a^{\dagger}}\right)
\end{align}
$$

then the Poisson bracket between $\displaystyle{\mathcal{O}_{1}}$ and $\displaystyle{\mathcal{O}_{2}}$ is defined as

$$\tag{1.9}
\begin{align}
\left\{\mathcal{O}_{1},\mathcal{O}_{2}\right\} & =X_{\mathcal{O}_{1}}\cdot X_{\mathcal{O}_{2}}\cdot \omega
\end{align}
$$

in particular, we have

$$\tag{1.10}
\begin{align}
\left\{a,a^{\dagger}\right\} & =-i
\end{align}
$$

now we will turn to quantum side. the quantum commutator is obtained by simply adding an $\displaystyle{i}$ to the Poisson bracket

$$\tag{1.11}
\begin{align}
[\mathcal{O}_{1},\mathcal{O}_{2}] & =i\left\{\mathcal{O}_{1},\mathcal{O}_{2}\right\} \\
 & =iX_{\mathcal{O}_{1}}\cdot X_{\mathcal{O}_{2}}\cdot \omega
\end{align}
$$

define

$$\tag{1.12}
\begin{align}
W_{\mathcal{O}} & =\exp\left(iX_{\mathcal{O}}\right)
\end{align}
$$

then (1.11) can be rewritten by BCH formula as

$$\tag{1.13}
\begin{align}
W_{\mathcal{O}_{1}}W_{\mathcal{O}_{2}} & =\exp\left(iX_{\mathcal{O}_{1}}\right)\exp\left(iX_{\mathcal{O}_{2}}\right) \\
 & = \exp\left( iX_{\mathcal{O}_{1}} + iX_{\mathcal{O}_{2}} - \frac{i}{2}\left\{\mathcal{O}_{1},\mathcal{O}_{2}\right\} + \frac{i^4}{12}\left([\mathcal{O}_{1},[\mathcal{O}_{1},\mathcal{O}_{2}]] + [\mathcal{O}_{2},[\mathcal{O}_{2},\mathcal{O}_{1}]]\right) + \ldots  \right)
\end{align}
$$

then we will consider $\displaystyle{\mathcal{P}^{\mathbb{C}}}$, the complexified covariant phase space $\displaystyle{\mathcal{P}}$. then the Poisson bracket naturally gives a map $\displaystyle{(\cdot,\cdot):\mathcal{P}^{\mathbb{C}}\times \mathcal{P}^{\mathbb{C}}\to \mathbb{C}}$ defined by

$$\tag{Klein-Gordon inner product}
\begin{align}
\left(\phi_{1},\phi_{2}\right) & =i\{\bar{\phi}_{1},\phi _{2}\}
\end{align}
$$

$\displaystyle{\left(\cdot,\cdot\right)}$ satisfies all the properties of an inner product on $\displaystyle{\mathcal{P}^{\mathbb{C}}}$, except that it fails to be positive definite. let $\displaystyle{\mathcal{H}}$ be the subspace only the positive frequency modes are included, it is easy to verify that $\displaystyle{\left(\cdot,\cdot\right)}$ is positive definite on $\displaystyle{\mathcal{H}}$, thus $\displaystyle{\mathcal{H}}$ is a Hilbert space.

let $\displaystyle{\mathcal{\bar{H}}}$ denote the complex conjugate space of $\displaystyle{\mathcal{H}}$, i.e., the subspace of $\displaystyle{\mathcal{P}^{\mathbb{C}}}$ that only the negative frequency modes are included. it follows that every $\displaystyle{\phi \in \mathcal{P}^{\mathbb{C}}}$ can be expressed as $\displaystyle{\phi=\phi ^{+}+\phi ^{-}}$, with $\displaystyle{\phi ^{+}\in \mathcal{H}}$ and $\displaystyle{\phi ^{-}\in \mathcal{H}^{-}}$. this fact allows us to project any $\displaystyle{\phi \in \mathcal{P}^{\mathbb{C}}}$ onto $\displaystyle{\mathcal{H}}$. the projection operator $\displaystyle{K}$ is defined by extracting the positive frequency modes from $\displaystyle{\phi}$. $\displaystyle{K}$ is actually a bijective. 

$$\tag{1.14}
\begin{align}
X_{\phi} & =-i\int \mathrm{d}\tau\left(\frac{\delta \phi}{\delta a^{\dagger}} \frac{\delta}{\delta a}-\frac{\delta \phi}{\delta a} \frac{\delta}{\delta a^{\dagger}}\right)
\end{align}
$$

---

I can't understand the importance of $\displaystyle{\mu}$... 

# Wald的弯曲时空场量子化方案

Robert Wald在其经典著作中发展了一套严格的弯曲时空量子场论框架，主要基于**代数量子场论**方法。以下是其核心思想：

## 基本设定与假设

Wald采用**公理化方法**，避开了平直时空中常用的粒子图像。关键假设包括：

1. **时空背景**：固定的经典度规 $$g_{\mu\nu}$$（半经典近似）
2. **因果结构**：保持经典广义相对论的光锥结构
3. **局域性**：场算符在类空分离点处对易

## 量子化程序

### 第一步：经典场方程
从作用量出发，例如标量场：
$$S = \int d^4x \sqrt{-g}\left[-\frac{1}{2}g^{\mu\nu}\nabla_\mu\phi\nabla_\nu\phi - \frac{1}{2}m^2\phi^2 - \xi R\phi^2\right]$$

得到运动方程：
$$(\Box - m^2 - \xi R)\phi = 0$$
其中 $$\Box = g^{\mu\nu}\nabla_\mu\nabla_\nu$$ 是弯曲时空中的d'Alembertian算符。

### 第二步：代数结构
构造**场代数** $$\mathcal{A}$$，包含：
- 基本场算符 $$\hat{\phi}(x)$$
- **正则对易关系**（CCR）：
$$[\hat{\phi}(x), \hat{\phi}(y)] = 0$$
$$[\hat{\pi}(x), \hat{\pi}(y)] = 0$$  
$$[\hat{\phi}(x), \hat{\pi}(y)] = i\hbar G(x,y)\mathbf{1}$$

其中 $$G(x,y)$$ 是**同步函数**（commutator function）。

### 第三步：态的构造
关键困难：**没有自然的真空态**！

Wald使用以下策略：
1. **Hadamard条件**：要求二点函数具有正确的短距离奇异性
2. **局域Hadamard态**：
$$\langle\hat{\phi}(x)\hat{\phi}(y)\rangle = H(x,y) + W(x,y)$$
其中 $$H(x,y)$$ 包含所有奇异项，$$W(x,y)$$ 是光滑的。

## 核心技术工具

### Hadamard双点函数
标准形式：
$$H(x,y) = \frac{U(x,y)}{8\pi^2\sigma(x,y)} + V(x,y)\ln\sigma(x,y)$$

其中：
- $$\sigma(x,y)$$ 是**Synge世界函数**（测地距离的一半平方）
- $$U(x,y)$$, $$V(x,y)$$ 是**Hadamard系数**

### 应力能张量重整化
使用**点分裂正规化**：
$$\langle T_{\mu\nu}\rangle_{\text{ren}} = \lim_{x'\to x}\left[\langle T_{\mu\nu}(x,x')\rangle - \langle T_{\mu\nu}(x,x')\rangle_{\text{Hadamard}}\right]$$

## 物理应用

### 黑洞热力学
1. **Hawking辐射**：通过比较Kruskal坐标与Schwarzschild坐标中的真空态
2. **Unruh效应**：加速观察者的热浴温度 $$T = \frac{\hbar a}{2\pi k_B c}$$

### 宇宙学应用
- **粒子产生**：在膨胀宇宙中通过绝热不变量分析
- **Bogolubov系数**：联系不同时刻的模式

## 数学严格性

Wald的方法优势：
1. **不依赖全局时间切片**
2. **保持广义协变性**
3. **处理因果视界**（如黑洞事件视界）
4. **避免红外/紫外发散的混淆**

## 局限性与开放问题

[[重要开放问题]]:
1. **Back-reaction问题**：量子涨落对度规的反作用
2. **信息悖论**：黑洞蒸发中的信息丢失
3. **真空选择**：缺乏唯一性原理
4. **非线性效应**：自相互作用场的处理

## 现代发展

Post-2020的相关进展：
- **代数QFT在AdS/CFT中的应用** ^cite{Witten2021}
- **Entanglement wedge重构** ^cite{Penington2020}  
- **量子错误修正码与全息** ^cite{Almheiri2021}

---

Wald的框架至今仍是弯曲时空量子场论的**黄金标准**，为理解黑洞热力学和早期宇宙物理提供了坚实的数学基础。其代数方法避开了许多技术困难，同时保持了物理上的透明性。