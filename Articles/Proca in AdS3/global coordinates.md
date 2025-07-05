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

# S^d 上矢量球谐函数的其他定义

## 1. 基于 Killing 矢量的定义

### Killing 矢量球谐函数
在 $$S^d$$ 上，可以使用 **Killing 矢量场** 构造特殊的矢量球谐函数：

$$\mathbf{K}_{\ell m} = \text{Killing vectors on } SO(d+1)$$

这些满足 Killing 方程：
$$\nabla_{(\mu} K_{\nu)} = 0$$

**本征值：** $$\lambda_K = 0$$（零模）

### 应用优势
- 自然保持 $$SO(d+1)$$ 对称性
- 在 [[Einstein-Yang-Mills理论]] 中特别有用
- 对应规范场的纯规范模式

## 2. Hodge 分解定义

### 基于微分形式
将矢量场视为1-形式，使用 **Hodge 分解**：

$$\mathbf{V} = d\alpha + \delta\beta + \mathbf{H}$$

其中：
- $$d$$：外微分算子
- $$\delta = *d*$$：余微分算子  
- $$\mathbf{H}$$：调和1-形式

#### 对应的矢量球谐函数
1. **恰当型** (Exact)：$$\mathbf{Y}_{\ell m}^E = d Y_{\ell m}$$
2. **余恰当型** (Co-exact)：$$\mathbf{Y}_{\ell m}^C = \delta \omega_{\ell m}$$
3. **调和型** (Harmonic)：$$\mathbf{Y}_{\ell m}^H$$（仅当 $$b_1(S^d) \neq 0$$ 时存在）

**本征值：**
- 恰当型：$$\lambda^E = -\ell(\ell + d - 2) + 1$$
- 余恰当型：$$\lambda^C = -\ell(\ell + d - 2) + 1$$  
- 调和型：$$\lambda^H = 0$$

## 3. 张量球谐函数诱导定义

### 基于对称张量
从对称张量球谐函数 $$T_{\mu\nu}^{\ell m}$$ 出发：

$$\mathbf{Y}_{\ell m}^{T} = \nabla^\mu T_{\mu\nu}^{\ell m}$$

这在 **引力波理论** 中特别重要。

### 分类
1. **标量导出**：来自标量张量 $$T_{\mu\nu} = Y_{\ell m} g_{\mu\nu}$$
2. **矢量导出**：来自矢量张量 $$T_{\mu\nu} = V_{(\mu} \xi_{\nu)}$$
3. **张量导出**：来自无迹张量

## 4. 旋量球谐函数相关定义

### Dirac 旋量诱导
对于具有旋量结构的球面，可以定义：

$$\mathbf{Y}_{\ell m}^{\text{spin}} = \bar{\psi}_{\ell m} \gamma^\mu \psi_{\ell m}$$

其中 $$\psi_{\ell m}$$ 是旋量球谐函数。

**维度限制：** 需要 $$d+1$$ 维 Clifford 代数存在

## 5. 群论表示定义

### SO(d+1) 不可约表示
直接使用 $$SO(d+1)$$ 群的不可约表示构造：

$$\mathbf{Y}_{[\lambda_1,\ldots,\lambda_{[d/2]}]}^{\mu}$$

其中 $$[\lambda_1,\ldots,\lambda_{[d/2]}]$$ 是 Dynkin 标签。

#### Young 图解表示
- 一行：标量球谐函数
- 一列：矢量球谐函数  
- 混合：张量球谐函数

## 6. 复化定义

### 立体投影坐标
在 $$S^2 \cong \mathbb{CP}^1$$ 情况下，使用复坐标 $$z, \bar{z}$$：

$$\mathbf{Y}_{\ell m}^{(\pm)} = \left(\frac{\partial}{\partial z}\right)^{\pm} Y_{\ell m}(z,\bar{z})$$

**优势：** 与 [[共形场论]] 中的全纯/反全纯结构自然匹配

## 7. 超对称扩展

### 超球谐函数
在超对称理论中，需要考虑超球面 $$S^{d|2N}$$：

$$\mathbf{Y}_{\ell m}^{\text{SUSY}} = (Y_{\ell m}, \Psi_{\ell m}^A)$$

其中 $$\Psi_{\ell m}^A$$ 是费米子伴侣。

## 不同定义的比较

| 定义方法 | 优势 | 劣势 | 适用场景 |
|---------|------|------|----------|
| 梯度-旋转分解 | 物理直观，易于 Proca 方程 | 维度依赖复杂 | 经典场论 |
| Hodge 分解 | 数学严格，拓扑清晰 | 计算复杂 | 微分几何 |
| 群论表示 | 对称性明确 | 抽象难懂 | 高能物理 |
| Killing 矢量 | 保持等距 | 限制较强 | 引力理论 |

## 选择建议

### 对于 Proca 方程
**推荐：梯度-旋转分解**
- 物理模式分离清晰
- 本征值计算简单
- 边界条件容易处理

### 对于拓扑场论  
**推荐：Hodge 分解**
- 与拓扑不变量直接相关
- BRST 对称性自然

### 对于 AdS/CFT
**推荐：群论表示**
- 与边界共形群表示对应
- 全息字典明确

^cite{Balasubramanian1999,Camporesi1995,Duff1977}

[[球谐函数]] [[Hodge理论]] [[群表示论]] [[超对称]] [[AdS-CFT对应]]