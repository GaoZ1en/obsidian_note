consider global coordinate for $\displaystyle{\mathrm{AdS}_{d}}$.

$$\tag{1.1}
\begin{align}
\mathrm{d}s^{2} & =-(1+\rho^{2})\mathrm{d}t^{2}+\frac{\mathrm{d}\rho ^{2}}{1+\rho ^{2}}+\rho ^{2}\mathrm{d}\Omega _{d-2}^{2}
\end{align}
$$

here we set $\displaystyle{L=1}$. we first write down the non-zero components of Christoffel symbol and Ricci tensor

$$\tag{1.2}
\begin{align}
\Gamma ^{t}_{~t\rho} & =\frac{\rho}{1+\rho ^{2}} \\
\Gamma ^{\rho}_{~tt} & =\rho(1+\rho ^{2}) \\
\Gamma ^{\rho}_{~\rho \rho} & =-\frac{\rho}{1+\rho ^{2}} \\
\Gamma ^{\rho}_{ij} & =-\rho (1+\rho ^{2})\tilde{g}_{ij} \\
\Gamma ^{k}_{~ij} & =\tilde{\Gamma}^{k}_{~ij} \\
\Gamma ^{i}_{~\rho j} & =\frac{1}{\rho}\delta ^{i}_{~j}
\end{align}
$$

where $\displaystyle{\tilde{\Gamma}^{\Omega}_{~\Omega \Omega}}$ is the christoffel symbol of the unit sphere $\displaystyle{S^{d-2}}$. here $\displaystyle{a}$ stands for $\displaystyle{t,\rho}$, and $\displaystyle{i}$ stands for coordinates on $\displaystyle{S^{d-2}}$. and

$$\tag{1.3}
\begin{align}
R_{\mu \nu} & = -(d-1)g_{\mu \nu}
\end{align}
$$

---

we will first consider the scalar field in $\mathrm{AdS}_{d}$, the eom is given by

$$\tag{2.1}
\begin{align}
S & =-\frac{1}{2}\int _{M}\mathrm{d}^{d}x(\sqrt{ -g }g^{\mu \nu}\partial _{\mu}\phi \partial _{\nu}\phi+m^{2}\phi) \\
\implies (\nabla ^{2}-m^{2})\phi & =0
\end{align}
$$

expand the Laplacian

$$\tag{2.2}
\begin{align}
\tilde{\Delta}^{2}_{\mathcal{N}}\phi+\frac{1}{\rho ^{2}}\tilde{\Delta}_{S^{d-2}}\phi-m^{2}\phi & =0 \\
\tilde{\Delta}_{\mathcal{N}}\phi & =-\frac{1}{1+\rho ^{2}}\partial _{t}^{2}\phi+(1+\rho ^{2})\partial _{\rho}^{2}\phi+\frac{d-2}{\rho}(1+\rho ^{2})\partial _{\rho}\phi+2\rho \partial _{\rho}\phi
\end{align}
$$

the subspace $\displaystyle{\mathcal{N}}$ is spanned by $\displaystyle{(t,\rho)}$. we make the ansatz

$$\tag{2.3}
\begin{align}
\phi & =e^{-i\omega t}R(\rho)\mathrm{Y}_{\ell \mathbf{m}}(\Omega _{d-2})
\end{align}
$$

where the spherical harmonics $\displaystyle{\mathrm{Y}_{\ell \mathbf{m}}}$ satisfies

$$\tag{2.4}
\begin{align}
\tilde{\Delta}_{S^{d-2}}\mathrm{Y}_{\ell \mathbf{m}} & =-\ell(\ell+d-3)\mathrm{Y}_{\ell \mathbf{m}}
\end{align}
$$

then we have

$$\tag{2.5}
\begin{align}
\frac{\omega ^{2}}{1+\rho ^{2}}R(\rho)+(1+\rho ^{2})\partial _{\rho}^{2}R(\rho)+\frac{d-2}{\rho}(1+\rho ^{2})\partial _{\rho}R(\rho)+2\rho \partial _{\rho}R(\rho)-\frac{\ell(\ell+d-3)}{\rho ^{2}}R(\rho)-m^{2}R(\rho) & =0
\end{align}
$$

define $\displaystyle{\rho=\tan r}$, (2.5) becomes

$$\tag{2.6}
\begin{align}
\cos ^{2}r\partial ^{2} _{r}R(r)+\frac{d-2}{\tan r}\partial _{r}R(r)+\left(\omega ^{2}\cos ^{2}r-\frac{\ell(\ell+d-3)}{\tan ^{2}r}-m^{2}\right)R(r) & =0
\end{align}
$$

further define $\displaystyle{z=\cos^{2}r}$ and $\displaystyle{R(r)=\sin ^{\ell}r\cos ^{\Delta}rF(r)}$ with $\displaystyle{\Delta=\frac{d-1}{2}+\sqrt{ \frac{(d-1)^{2}}{4}+m^{2} }}$, we have

$$\tag{2.7}
\begin{align}
z(1-z) \frac{\mathrm{d}^{2}F}{\mathrm{d}z^{2}}+\left[ \left( \Delta+\frac{3-n}{2} \right)-(\ell+\Delta+1)z \right] \frac{\mathrm{d}F}{\mathrm{d}z}-\frac{1}{4}((\ell+\Delta)^{2}-\omega ^{2})F=0
\end{align}
$$

this is a hypergeometric equation, the general solution is given by

$$\tag{2.8}
\begin{align}
F(z) & =C_{1}{}_{2}F_{1}\left( \frac{1}{2}(\ell+\Delta-\omega), \frac{1}{2}(\ell+\Delta+\omega);\Delta+\frac{3-d}{2};z \right) \\
 & +C_{2}(1-z)^{-\Delta-1/2+n/2}{}_{2}F_{1}\left( \frac{1}{2}(\ell-\Delta-\omega-1+d), \frac{1}{2}(\ell-\Delta+\omega-1+d);-\Delta+\frac{1+d}{2};z \right)
\end{align}
$$

we require that the solution converges at $\displaystyle{z=0}$ and regular at $\displaystyle{z=1}$. this implies $\displaystyle{C_{2}=0}$ and $\displaystyle{\omega _{k\ell}=\Delta+\ell+2k}$, where $\displaystyle{k\in \mathbb{N}}$. then the complete solution is given by

$$\tag{2.9}
\begin{align}
\phi _{k\ell \mathbf{m}}(t,\rho,\Omega _{n-2}) & =N_{k\ell}e^{-i \omega t} (\sin \rho)^{\ell}(\cos \rho)^{\Delta}{}_{2}F_{1}\left( -k,\ell+\Delta+k;\Delta-\frac{n-3}{2};\cos ^{2}\rho \right)Y_{\ell \mathbf{m}}(\Omega _{n-2})
\end{align}
$$

---

then we consider Proca field with eom

$$\tag{2.10}
\begin{align}
\nabla _{\mu}F^{\mu \nu} & =m^{2}A^{\nu}
\end{align}
$$

# S^d 上矢量球谐函数的定义

## 适用于 Proca 方程的标准定义

对于在 $$S^d$$ 球面上求解 Proca 方程，最适合的是使用基于标量球谐函数的**梯度-旋转分解**定义：

### 标量球谐函数基础
首先，$$S^d$$ 上的标量球谐函数 $$Y_{\ell m}(\theta_1,\ldots,\theta_{d-1},\phi)$$ 满足：
$$\Delta_{S^d} Y_{\ell m} = -\ell(\ell + d - 2) Y_{\ell m}$$

### 矢量球谐函数的三重分解

在 $$S^d$$ 上，矢量场可以按照其变换性质分解为三类：

#### 1. 径向型 (Radial/Electric Type)
$$\mathbf{Y}_{\ell m}^{(0)} = Y_{\ell m} \hat{\mathbf{r}}$$

其中 $$\hat{\mathbf{r}}$$ 是径向单位矢量。这对应于**纵向模式**。

#### 2. 梯度型 (Gradient/Polar Type) 
$$\mathbf{Y}_{\ell m}^{(1)} = \frac{1}{\sqrt{\ell(\ell + d - 2)}} \nabla_{S^d} Y_{\ell m}$$

其中 $$\nabla_{S^d}$$ 是球面上的协变导数算子。

#### 3. 旋转型 (Curl/Axial Type)
$$\mathbf{Y}_{\ell m}^{(2)} = \frac{1}{\sqrt{\ell(\ell + d - 2)}} \hat{\mathbf{r}} \times \nabla_{S^d} Y_{\ell m}$$

### Proca 方程中的应用优势

对于质量为 $$m$$ 的 Proca 场：
$$\partial_\mu F^{\mu\nu} + m^2 A^\nu = 0$$
$$\partial_\mu A^\mu = 0$$

在球对称时空 $$\mathbb{R} \times S^d$$ 中分离变量时：

1. **径向模式** $$\mathbf{Y}_{\ell m}^{(0)}$$：对应**标量扰动**，满足纵向约束
2. **梯度模式** $$\mathbf{Y}_{\ell m}^{(1)}$$：对应**极化扰动**，可以完全消除（gauge freedom）
3. **旋转模式** $$\mathbf{Y}_{\ell m}^{(2)}$$：对应**横向扰动**，是物理的传播模式

## 正交性与完备性

### 正交关系
$$\int_{S^d} \mathbf{Y}_{\ell m}^{(i)} \cdot \mathbf{Y}_{\ell' m'}^{(j)*} \, d\Omega_d = \delta_{ii'}\delta_{\ell\ell'}\delta_{mm'}$$

### 完备性关系
$$\sum_{i=0}^2 \sum_{\ell,m} \mathbf{Y}_{\ell m}^{(i)}(\Omega) \otimes \mathbf{Y}_{\ell m}^{(i)*}(\Omega') = \mathbf{I} \delta^{(d)}(\Omega - \Omega')$$

## 维度依赖性

- **d=2 (圆周)**：只有 $$\mathbf{Y}_{\ell}^{(1)}$$ 存在
- **d=3 (标准球面)**：经典的 $$\mathbf{Y}_{\ell m}, \boldsymbol{\Psi}_{\ell m}, \boldsymbol{\Phi}_{\ell m}$$ 分解
- **d≥4**：需要考虑更复杂的 [[Clebsch-Gordan系数]] 结构

## 与其他定义的关系

这个定义的优势在于：
1. 明确的**物理意义**：每种模式对应不同的极化
2. **规范不变性**：自然分离纯规范模式
3. **计算效率**：Proca方程的径向部分解耦

^cite{Kodama1984,Regge1957}

[[球谐函数]] [[Proca方程]] [[矢量场分解]] [[球对称时空]]

# S^d 上矢量球谐函数的 Laplacian 本征值

## 矢量 Laplacian 算子

在 $$S^d$$ 上，矢量场的 Laplacian 算子（Hodge-de Rham Laplacian）定义为：
$$\Delta_{\text{vec}} \mathbf{V} = -\nabla^2 \mathbf{V} + \text{Ric}(\mathbf{V})$$

其中 Ricci 张量在 $$S^d$$ 上为：$$\text{Ric}_{\mu\nu} = (d-1)g_{\mu\nu}$$

## 各模式的本征值

### 1. 径向型 $$\mathbf{Y}_{\ell m}^{(0)}$$
$$\Delta_{\text{vec}} \mathbf{Y}_{\ell m}^{(0)} = -[\ell(\ell + d - 2) + (d-1)] \mathbf{Y}_{\ell m}^{(0)}$$

**本征值：**
$$\lambda_{\ell}^{(0)} = -\ell(\ell + d - 2) - (d-1) = -(\ell + d - 1)(\ell + 1) + 1$$

### 2. 梯度型 $$\mathbf{Y}_{\ell m}^{(1)}$$
$$\Delta_{\text{vec}} \mathbf{Y}_{\ell m}^{(1)} = -[\ell(\ell + d - 2) - 1] \mathbf{Y}_{\ell m}^{(1)}$$

**本征值：**
$$\lambda_{\ell}^{(1)} = -\ell(\ell + d - 2) + 1 = -\ell^2 - \ell(d-2) + 1$$

### 3. 旋转型 $$\mathbf{Y}_{\ell m}^{(2)}$$
$$\Delta_{\text{vec}} \mathbf{Y}_{\ell m}^{(2)} = -[\ell(\ell + d - 2) - 1] \mathbf{Y}_{\ell m}^{(2)}$$

**本征值：**
$$\lambda_{\ell}^{(2)} = -\ell(\ell + d - 2) + 1 = -\ell^2 - \ell(d-2) + 1$$

## 重要观察

### 简并性
注意到 $$\lambda_{\ell}^{(1)} = \lambda_{\ell}^{(2)}$$，即**梯度型和旋转型具有相同本征值**。这反映了 $$S^d$$ 的高度对称性。

### 与标量情况的关系
- 标量球谐函数：$$\lambda_{\ell}^{\text{scalar}} = -\ell(\ell + d - 2)$$
- 径向型：$$\lambda_{\ell}^{(0)} = \lambda_{\ell}^{\text{scalar}} - (d-1)$$
- 横向型：$$\lambda_{\ell}^{(1,2)} = \lambda_{\ell}^{\text{scalar}} + 1$$

## Proca 方程中的应用

对于 Proca 方程 $$(\square + m^2)A_\mu = 0$$ 在 $$\mathbb{R} \times S^d$$ 时空中：

### 径向模式频率
$$\omega_{\ell}^{(0)2} = m^2 + (\ell + d - 1)(\ell + 1) - 1$$

### 横向模式频率  
$$\omega_{\ell}^{(1,2)2} = m^2 + \ell(\ell + d - 2) - 1$$

## 特殊维度情况

### d = 3 (标准3维球面)
- $$\lambda_{\ell}^{(0)} = -(\ell + 2)(\ell + 1) + 1 = -\ell^2 - 3\ell - 1$$
- $$\lambda_{\ell}^{(1,2)} = -\ell(\ell + 1) + 1$$

### d = 4 (4维球面)
- $$\lambda_{\ell}^{(0)} = -(\ell + 3)(\ell + 1) + 1 = -\ell^2 - 4\ell - 2$$  
- $$\lambda_{\ell}^{(1,2)} = -\ell(\ell + 2) + 1$$

### d = 2 (圆周)
只有梯度型存在：$$\lambda_{\ell}^{(1)} = -\ell^2 + 1$$

## 物理解释

这些本征值的差异反映了：
1. **几何耦合**：径向模式感受到球面的内禀曲率
2. **拓扑效应**：横向模式的简并度与球面的同伦群相关
3. **质量谱**：在 [[AdS/CFT对应]] 中，这些本征值决定了对偶场论中算子的共形维度

^cite{Camporesi1994,Higuchi1987}

[[矢量球谐函数]] [[Hodge理论]] [[球面几何]] [[Proca方程]] [[共形场论]]