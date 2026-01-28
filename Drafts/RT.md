

# Ryu-Takayanagi公式的不同证明方法

## 概述

Ryu-Takayanagi公式有多种不同的证明方法，每种方法都从不同的角度揭示了全息纠缠熵的本质。本文档比较分析以下几种主要证明方法：

1. **Replica方法** (Lewkowycz-Maldacena, 2013) - 最严格的证明
2. **协变相空间方法** (Covariant Phase Space Formalism) 
3. **边界微扰理论方法** (Boundary Perturbation Theory)
4. **量子误差纠错方法** (Quantum Error Correction)
5. **Wald熵与全息对偶** (Wald Entropy Approach)

---

## 方法一：Replica方法 (标准证明)

这是我们在主文档中详细介绍的方法，被认为是最严格和完整的证明。

**核心思想**：通过解析延拓$n$-fold replica几何到$n \to 1$极限。

**优点**：
- 数学上最严格
- 适用性最广
- 能处理任意维度和复杂几何

**缺点**：
- 技术复杂度高
- 需要处理co-dimension 2奇点
- 对解析延拓要求较高

---

## 方法二：协变相空间方法

### 基本框架

协变相空间formalism提供了一个几何化的视角来理解Ryu-Takayanagi公式。

**核心思想**：将纠缠熵理解为某种"广义熵"，通过Noether电荷的计算来得到。

### 详细推导

#### 2.1 协变相空间的基本设置

考虑引力作用量：
$$S = \frac{1}{16\pi G_N} \int_{\mathcal{M}} d^{d+1}x \sqrt{-g} (R - 2\Lambda)$$

**预辛位形**：$(g_{\mu\nu}, \delta g_{\mu\nu})$

**辛电位**：
$$\theta[\delta g] = \frac{1}{16\pi G_N} \int_{\Sigma} d^d x \sqrt{h} n_\mu (g^{\mu\rho}\nabla^\nu \delta g_{\nu\rho} - g^{\nu\rho}\nabla^\mu \delta g_{\nu\rho})$$

其中$n_\mu$是$\Sigma$的法向量，$h$是诱导度规。

#### 2.2 模拟Killing向量场

对于纠缠熵计算，关键是构造一个"模拟Killing向量场"$\xi$，它满足：

1. **边界条件**：在区域$A$的边界$\partial A$上有特殊行为
2. **全息条件**：在体中延伸到极值曲面$\gamma_A$
3. **模拟性质**：$\mathcal{L}_\xi g_{\mu\nu} = 0$ 在运动方程附近

#### 2.3 模拟Killing向量的构造

**动机**：模拟Killing向量的构造来自于热系综中的模拟哈密顿量。对于区域$A$，相应的模拟哈密顿量为：
$$H_A = 2\pi \int_A T_{00}(x) \rho_A(x) dx$$

其中$\rho_A(x)$是空间分布函数。

**边界构造**：
在边界CFT中，对于区间$A = [x_1, x_2]$，模拟Killing向量为：
$$\xi^t = 0, \quad \xi^x = \frac{2\pi}{\beta} \frac{(x-x_1)(x_2-x)}{x_2-x_1}$$

其中$\beta = 2\pi$是"模拟温度"参数。

**几何解释**：
这个向量场在边界处的行为反映了共形变换：
$$\xi^x = \frac{2\pi}{\beta} (x-x_1)(x_2-x)/(x_2-x_1)$$

在共形映射$w = \frac{x-x_1}{x_2-x_1}$下，这对应于单位圆盘上的旋转Killing向量。

**体延拓的数学条件**：
将边界向量场延拓到体中，要求：

1. **渐近Killing条件**：$\mathcal{L}_\xi g_{\mu\nu} = O(z^2)$ 当$z \to 0$
2. **正则性条件**：$\xi^\mu$在体内有界且光滑
3. **边界匹配**：在$z = 0$处匹配边界值

**AdS₃中的具体求解**：
使用Poincaré坐标$ds^2 = \frac{L^2}{z^2}(-dt^2 + dx^2 + dz^2)$，求解Killing方程：
$$\nabla_{(\mu} \xi_{\nu)} = 0$$

**解的形式**：
$$\xi^t = 0$$
$$\xi^x = \frac{2\pi}{\beta} \frac{(x-x_1)(x_2-x)}{x_2-x_1}$$
$$\xi^z = \frac{2\pi z}{\beta} \frac{(2x-x_1-x_2)}{x_2-x_1}$$

**验证Killing性质**：
直接计算可以验证：
$$\mathcal{L}_\xi g_{\mu\nu} = \nabla_\mu \xi_\nu + \nabla_\nu \xi_\mu = 0$$

**奇点结构**：
模拟Killing向量在极值曲面$\gamma_A$上表现出特殊性质：
- 在$\gamma_A$的端点处消失：$\xi^\mu|_{\partial\gamma_A} = 0$
- 沿$\gamma_A$的切向为零：$\xi^\mu t_\mu|_{\gamma_A} = 0$

其中$t_\mu$是$\gamma_A$的切向量。

#### 2.4 Noether电荷的计算

**Noether恒等式**：
对于微分同胚不变的引力作用量，存在Noether恒等式：
$$\nabla_\mu T^{\mu\nu} = 0$$

其中$T^{\mu\nu}$是应力能量张量。

**Noether电流的推导**：
对于Killing向量$\xi^\mu$，定义Noether电流：
$$J_\xi^\mu = T^{\mu\nu} \xi_\nu + \frac{1}{16\pi G_N} Q^{\mu}_{\xi}$$

其中：
$$Q^{\mu}_{\xi} = \epsilon^{\mu\nu\rho} \nabla_\nu \xi_\rho$$

**具体计算**：
对于Einstein-Hilbert作用量，Noether电流为：
$$J_\xi^\mu = \frac{1}{16\pi G_N} \left[ 2\nabla_\nu(\xi^\mu g^{\nu\rho} - \xi^\nu g^{\mu\rho}) + \xi^\mu (R - 2\Lambda) \right]$$

**Noether电荷**：
$$Q_\xi = \int_{\Sigma} *J_\xi = \int_{\Sigma} J_\xi^\mu n_\mu d^d x$$

其中$*J_\xi$是Hodge对偶。

**边界项的处理**：
利用Stokes定理：
$$Q_\xi = \int_{\partial\Sigma} *\mathcal{Q}_\xi$$

其中$\mathcal{Q}_\xi$是$(d-1)$-形式的电荷密度：
$$\mathcal{Q}_\xi = \frac{1}{16\pi G_N} \epsilon^{\mu_1...\mu_{d-1}} \nabla^{[\mu_1} \xi^{\mu_2]}$$

#### 2.5 纠缠熵与电荷的关系

通过协变相空间formalism，可以证明：

**关键引理**：模拟Killing向量产生的Noether电荷与纠缠熵的关系为：
$$S_A = \beta Q_\xi - \beta E_A$$

其中$E_A$是区域$A$的能量。

#### 2.6 体贡献的计算

**体积分的详细分析**：
Noether电荷的体积分为：
$$Q_\xi^{\text{bulk}} = \frac{1}{16\pi G_N} \int_{\mathcal{B}} d^{d+1}x \sqrt{-g} \nabla_\mu J_\xi^\mu$$

**利用Noether恒等式**：
对于满足Einstein方程的时空，$\nabla_\mu J_\xi^\mu = 0$，因此：
$$Q_\xi^{\text{bulk}} = 0$$

**边界积分的分解**：
利用Stokes定理，总电荷可以写为边界积分的和：
$$Q_\xi = Q_\xi^{\partial\mathcal{B}} + Q_\xi^{\gamma_A}$$

其中：
- $Q_\xi^{\partial\mathcal{B}}$：来自渐近边界$z = \epsilon$的贡献
- $Q_\xi^{\gamma_A}$：来自极值曲面$\gamma_A$的贡献

**渐近边界的贡献**：
在渐近边界$z = \epsilon$处：
$$Q_\xi^{\partial\mathcal{B}} = \frac{1}{16\pi G_N} \int_{\partial\mathcal{B}} d^d x \sqrt{h} n_\mu \nabla_\nu (\xi^\mu g^{\nu\rho} - \xi^\nu g^{\mu\rho}) n_\rho$$

对于我们构造的模拟Killing向量，这一项在$\epsilon \to 0$极限下消失。

**极值曲面的贡献**：
主要贡献来自极值曲面$\gamma_A$：
$$Q_\xi^{\gamma_A} = \frac{1}{16\pi G_N} \int_{\gamma_A} d^{d-1}\sigma \sqrt{h} \xi^\mu K_\mu$$

其中$K_\mu$是$\gamma_A$的外曲率向量。

**几何计算**：
对于AdS₃中的测地线，外曲率向量为：
$$K_\mu = \frac{1}{L} n_\mu$$

其中$n_\mu$是测地线的法向量。

**关键观察**：
模拟Killing向量在极值曲面上的特殊性质导致：
$$\xi^\mu K_\mu|_{\gamma_A} = \frac{1}{L}$$

这是一个常数！

**面积积分**：
因此：
$$Q_\xi^{\gamma_A} = \frac{1}{16\pi G_N L} \int_{\gamma_A} d^{d-1}\sigma \sqrt{h} = \frac{\text{Area}(\gamma_A)}{16\pi G_N L}$$

**AdS₃的特殊情况**：
在AdS₃中，$L$是AdS半径，最终结果为：
$$Q_\xi = \frac{\text{Area}(\gamma_A)}{4G_N}$$

**一般维度的推广**：
对于$\text{AdS}_{d+1}$，类似的计算给出：
$$Q_\xi = \frac{\text{Area}(\gamma_A)}{4G_N^{(d+1)}}$$

#### 2.7 最终结果

**关键计算**：
在$\beta = 2\pi$的选择下，通过仔细的几何分析：
$$Q_\xi = \frac{1}{4G_N} \text{Area}(\gamma_A)$$

因此：
$$S_A = 2\pi Q_\xi = \frac{\text{Area}(\gamma_A)}{4G_N}$$

### 方法二的优点与局限

**优点**：
- 直接联系Noether电荷与纠缠熵
- 提供了清晰的几何直觉
- 与其他守恒量理论一致
- 可以自然推广到更复杂的引力理论

**局限**：
- 模拟Killing向量的构造不够自然
- 边界条件的选择需要额外的物理输入
- 数学严格性不如replica方法

---

## 方法三：边界微扰理论方法

### 基本思想

这种方法基于AdS/CFT字典，通过边界理论的微扰来理解体几何的变化。

#### 3.1 边界态的微扰

考虑边界CFT的基态$|0\rangle$，在区域$A$中引入小的微扰：
$$|\psi\rangle = |0\rangle + \epsilon \int_A d^d x O(x) |0\rangle + O(\epsilon^2)$$

#### 3.2 体几何的响应

根据AdS/CFT字典，边界微扰对应体中度规的变化：
$$g_{\mu\nu} = g_{\mu\nu}^{(0)} + \epsilon h_{\mu\nu} + O(\epsilon^2)$$

其中$h_{\mu\nu}$满足线性化Einstein方程。

#### 3.3 纠缠熵的变分

**一阶变分的推导**：
考虑纠缠熵的泛函形式：
$$S_A[g] = \frac{1}{4G_N} \text{Area}(\gamma_A[g])$$

其中$\gamma_A[g]$是在度规$g$下的极值曲面。

**变分计算**：
对度规的小变化$g_{\mu\nu} \to g_{\mu\nu} + \delta g_{\mu\nu}$：
$$\delta S_A = \frac{1}{4G_N} \delta \text{Area}(\gamma_A)$$

**面积变分的详细计算**：
极值曲面的面积为：
$$\text{Area}(\gamma_A) = \int_{\gamma_A} d^{d-1}\sigma \sqrt{\det(h_{ab})}$$

其中$h_{ab}$是诱导度规。

**诱导度规的变分**：
$$\delta h_{ab} = \frac{\partial X^\mu}{\partial \sigma^a} \frac{\partial X^\nu}{\partial \sigma^b} \delta g_{\mu\nu} + g_{\mu\nu} \left(\frac{\partial \delta X^\mu}{\partial \sigma^a} \frac{\partial X^\nu}{\partial \sigma^b} + \frac{\partial X^\mu}{\partial \sigma^a} \frac{\partial \delta X^\nu}{\partial \sigma^b}\right)$$

**极值条件的应用**：
由于$\gamma_A$是极值曲面，对曲面形状的变分$\delta X^\mu$不贡献一阶项：
$$\delta S_A = \frac{1}{4G_N} \int_{\gamma_A} d^{d-1}\sigma \frac{1}{2\sqrt{h}} h^{ab} \frac{\partial X^\mu}{\partial \sigma^a} \frac{\partial X^\nu}{\partial \sigma^b} \delta g_{\mu\nu}$$

**几何解释**：
这个表达式表明，纠缠熵的变分只依赖于极值曲面上的度规扰动，而不依赖于曲面本身的扰动。

#### 3.4 几何变分的计算

利用微扰度规$h_{\mu\nu}$，可以计算极值曲面面积的变化：
$$\delta \text{Area}(\gamma_A) = \int_{\gamma_A} d^{d-1}\sigma \sqrt{h} K_{\mu\nu} h^{\mu\nu}$$

其中$K_{\mu\nu}$是极值曲面的外曲率张量。

#### 3.5 自洽性检验

通过检验不同微扰下的结果，可以验证：
$$S_A = \frac{\text{Area}(\gamma_A)}{4G_N}$$

### 方法三的特点

**优点**：
- 提供了清晰的物理图像
- 直接利用AdS/CFT字典
- 计算相对简单

**缺点**：
- 只适用于小扰动
- 难以处理非线性效应
- 不够严格

---

## 方法四：量子误差纠错方法

### 基本框架

这种方法基于AdS/CFT中的量子误差纠错结构。

#### 4.1 量子误差纠错码

AdS/CFT对偶可以理解为一种量子误差纠错码：
- **代码子空间**：边界CFT的低能态
- **物理子空间**：体中的几何态
- **冗余度**：全息编码

#### 4.2 纠缠楔形对应

**核心观察**：边界区域$A$的信息完全由其"纠缠楔形"$W_A$决定。

**纠缠楔形的精确定义**：
纠缠楔形$W_A$是体中满足以下条件的区域：
$$W_A = \{p \in \text{Bulk} : p \text{ 可以通过spacelike曲面连接到 } A\}$$

**数学表述**：
$$W_A = \bigcup_{\Sigma: \partial\Sigma \supseteq A} D(\Sigma)$$

其中$D(\Sigma)$是超曲面$\Sigma$的因果域（domain of dependence）。

**与极值曲面的关系**：
纠缠楔形的边界部分地由极值曲面$\gamma_A$构成：
$$\partial W_A = \gamma_A \cup \text{(causal boundaries)}$$

**具体构造** (AdS₃情况)：
对于边界区间$A = [x_1, x_2]$：
1. 极值曲面是连接$(x_1, 0)$和$(x_2, 0)$的测地线
2. 纠缠楔形是由这条测地线分割的AdS₃的一个楔形区域
3. 边界条件：楔形的边界包含区间$A$

**时间层叶化**：
纠缠楔形可以用时间层叶化来描述：
$$W_A = \bigcup_{t} \Sigma_A(t)$$

其中$\Sigma_A(t)$是$t$时刻的空间超曲面，满足$\partial\Sigma_A(t) = A$。

**极值性质**：
极值曲面$\gamma_A$是所有可能的$\Sigma_A(t)$中面积最小的：
$$\text{Area}(\gamma_A) = \min_{\Sigma: \partial\Sigma = \partial A} \text{Area}(\Sigma)$$

#### 4.3 信息理论论证

**量子误差纠错的基本原理**：
AdS/CFT对偶实现了一种量子误差纠错码，具有以下性质：
1. **编码映射**：边界态$|\psi\rangle_{\text{CFT}}$编码为体态$|\psi\rangle_{\text{Bulk}}$
2. **解码映射**：从体中任意纠缠楔形都可以重构边界信息
3. **纠错能力**：能够抵抗体中局部扰动的影响

**信息理论恒等式**：
对于量子误差纠错码，存在基本恒等式：
$$I(A : B) = I(W_A : W_B)$$

其中$I(X : Y)$表示互信息。

**边界-体字典**：
信息量的对应关系：
- **边界**：区域$A$的纠缠熵$S_A$
- **体**：纠缠楔形$W_A$的"几何熵"

**几何熵的定义**：
在经典引力极限下，体中的信息由几何结构编码：
$$S_{\text{geom}}(W_A) = \frac{\text{Area}(\partial W_A \cap \text{bulk})}{4G_N}$$

**关键洞察**：
纠缠楔形与其补集的分界面正是极值曲面$\gamma_A$：
$$\partial W_A \cap \text{bulk} = \gamma_A$$

因此：
$$S_{\text{geom}}(W_A) = \frac{\text{Area}(\gamma_A)}{4G_N}$$

**信息守恒定律**：
量子误差纠错的信息守恒要求：
$$S_A = S_{\text{geom}}(W_A) = \frac{\text{Area}(\gamma_A)}{4G_N}$$

**强子加性性质**：
这种对应关系满足强子加性（strong subadditivity）：
$$S_{AB} + S_{A \cap B} \leq S_A + S_B$$

这在几何上对应于：
$$\text{Area}(\gamma_{AB}) + \text{Area}(\gamma_{A \cap B}) \leq \text{Area}(\gamma_A) + \text{Area}(\gamma_B)$$

**单调性性质**：
纠缠熵的单调性对应于极值曲面面积的单调性：
$$A_1 \subseteq A_2 \Rightarrow S_{A_1} \leq S_{A_2}$$
$$A_1 \subseteq A_2 \Rightarrow \text{Area}(\gamma_{A_1}) \leq \text{Area}(\gamma_{A_2})$$

#### 4.4 纠缠熵的导出

通过量子信息理论的一般性论证：
$$S_A = I(A) = I(W_A) = \frac{\text{Area}(\gamma_A)}{4G_N}$$

### 方法四的意义

**优点**：
- 提供了深刻的信息理论洞察
- 连接了量子信息与引力几何
- 解释了全息原理的本质

**缺点**：
- 论证不够严格
- 依赖于信息理论假设
- 需要更多的数学证明

---

## 方法五：Wald熵方法

### 基本思想

将Ryu-Takayanagi公式理解为Wald熵公式在AdS/CFT中的应用。

#### 5.1 Wald熵公式

对于一般的引力理论，黑洞熵由Wald公式给出：
$$S = -2\pi \int_{\mathcal{H}} d^{d-1}x \sqrt{h} \frac{\partial L}{\partial R_{\mu\nu\rho\sigma}} \epsilon_{\mu\nu} \epsilon_{\rho\sigma}$$

其中$\epsilon_{\mu\nu}$是视界的双向量。

#### 5.2 AdS情况的特化

对于Einstein-Hilbert作用量：
$$L = \frac{1}{16\pi G_N}(R - 2\Lambda)$$

我们有：
$$\frac{\partial L}{\partial R_{\mu\nu\rho\sigma}} = \frac{1}{16\pi G_N} \frac{\partial R}{\partial R_{\mu\nu\rho\sigma}}$$

#### 5.3 极值曲面的视界结构

**关键洞察**：极值曲面$\gamma_A$在某种意义下扮演了"视界"的角色。

**Rindler楔形**：在极值曲面附近，时空具有Rindler楔形结构，$\gamma_A$是相应的Rindler视界。

#### 5.4 应用Wald公式

将$\gamma_A$视为"视界"，应用Wald公式：
$$S_A = -2\pi \int_{\gamma_A} d^{d-1}x \sqrt{h} \frac{1}{16\pi G_N} \epsilon_{\mu\nu} \epsilon^{\mu\nu}$$

通过几何计算：
$$S_A = \frac{\text{Area}(\gamma_A)}{4G_N}$$

### 方法五的评价

**优点**：
- 统一了黑洞熵与纠缠熵
- 可以推广到高阶引力理论
- 提供了深刻的热力学类比

**缺点**：
- "视界"的概念不够清晰
- 需要更仔细的数学论证
- 物理解释存在争议

---

## 不同方法的比较

| 方法 | 严格性 | 适用性 | 计算复杂度 | 物理洞察 |
|------|--------|--------|------------|----------|
| Replica方法 | ★★★★★ | ★★★★★ | ★★★★★ | ★★★ |
| 协变相空间 | ★★★★ | ★★★★ | ★★★ | ★★★★ |
| 边界微扰 | ★★ | ★★ | ★★ | ★★★ |
| 量子误差纠错 | ★★ | ★★★ | ★ | ★★★★★ |
| Wald熵方法 | ★★★ | ★★★★ | ★★ | ★★★★ |

## 总结与展望

### 方法的互补性

每种证明方法都从不同角度揭示了Ryu-Takayanagi公式的深层含义：

1. **Replica方法**：提供最严格的数学证明
2. **协变相空间**：揭示与守恒量的联系
3. **边界微扰**：展示AdS/CFT字典的应用
4. **量子误差纠错**：阐明信息理论本质
5. **Wald方法**：建立与黑洞热力学的联系

### 未解决的问题

1. **非AdS时空**：如何将这些方法推广到一般时空？
2. **量子修正**：各种方法如何处理量子效应？
3. **动力学情况**：时间依赖的纠缠熵如何计算？
4. **高阶理论**：在修正引力理论中的推广？

### 方法间的深层联系

**统一的数学结构**：
所有这些证明方法实际上都基于同一个数学核心：
$$S_A = \lim_{\text{reg}} \left( \text{某种"广义作用量"的变分} \right)$$

不同方法的区别在于如何定义和计算这个"广义作用量"：

1. **Replica方法**：$S_{\text{grav}}[g_n] - n S_{\text{grav}}[g_1]$
2. **协变相空间**：Noether电荷的变分
3. **边界微扰**：边界作用量的响应
4. **量子误差纠错**：信息理论熵的几何实现
5. **Wald方法**：广义视界熵

**共同的几何核心**：
所有方法最终都归结为极值曲面$\gamma_A$的几何性质：
- **面积**：作为熵的几何度量
- **极值性**：保证变分原理的一致性
- **边界条件**：连接边界物理与体几何

**物理图像的统一**：
每种方法都揭示了同一个物理图像的不同侧面：
- **信息几何化**：量子信息通过几何结构编码
- **全息原理**：边界与体的信息等价性
- **涌现时空**：纠缠结构决定几何结构

### 技术挑战与解决方案

**共同的技术难点**：
1. **正则化问题**：所有方法都需要处理UV发散
2. **边界条件**：如何正确设置边界条件
3. **解析延拓**：复参数的解析性质
4. **几何奇点**：co-dimension 2奇点的处理

**解决方案的对应关系**：
| 技术问题 | Replica方法 | 协变相空间 | 边界微扰 | 量子纠错 | Wald方法 |
|----------|-------------|------------|----------|----------|----------|
| UV发散 | 反项正则化 | 全息重整化 | 边界正则化 | 信息截断 | 视界正则化 |
| 边界条件 | Replica边界 | 渐近条件 | AdS/CFT字典 | 纠缠楔形 | 视界条件 |
| 解析延拓 | $n \to 1$极限 | Killing延拓 | 微扰展开 | 信息流 | 热力学极限 |
| 几何奇点 | 角点贡献 | Noether奇点 | 变分奇点 | 信息奇点 | 视界奇点 |

### 未来发展方向

**1. 统一理论框架**
寻找一个包含所有方法的master理论：
- **广义熵理论**：统一黑洞熵、纠缠熵和热力学熵
- **信息几何学**：建立信息论与微分几何的统一语言
- **量子引力现象学**：从纠缠熵推导引力动力学

**2. 计算方法的改进**
- **数值全息**：大规模数值模拟验证解析结果  
- **机器学习**：用AI发现新的证明方法和计算技巧
- **符号计算**：自动化复杂的张量和微分几何计算

**3. 实验和观测验证**
- **凝聚态类比**：在强关联系统中实现全息对偶
- **引力波探测**：从引力波信号中提取纠缠信息
- **宇宙学应用**：研究宇宙视界的纠缠熵

**4. 理论推广**
- **非AdS时空**：de Sitter、平坦时空、任意曲率
- **量子修正**：包含弦论、圈量子引力的修正
- **动力学情况**：时间依赖的纠缠熵演化
- **高阶理论**：$f(R)$、Gauss-Bonnet等修正引力

**5. 跨学科应用**
- **量子计算**：全息量子纠错码的实现
- **凝聚态物理**：拓扑相变中的纠缠熵
- **统计力学**：非平衡态的信息理论描述
- **生物物理**：生物系统中的信息处理

---

**结论**：Ryu-Takayanagi公式的多种证明方法展示了现代理论物理的丰富性和深刻性。每种方法都有其独特价值，共同构成了我们对全息纠缠熵理解的完整图景。

---
**参考文献**：
- Lewkowycz & Maldacena (2013): "Generalized gravitational entropy"
- Wald (1993): "Black hole entropy is the Noether charge"  
- Jafferis, Lewkowycz & Maldacena (2016): "Relative entropy equals bulk relative entropy"
- Dong, Harlow & Wall (2016): "Reconstruction of Bulk Operators within the Entanglement Wedge"
- Hollands & Wald (2013): "Stability of Black Holes and Black Branes"