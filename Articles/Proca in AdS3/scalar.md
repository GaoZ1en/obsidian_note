# AdS$_n$空间中Proca场的运动方程及其解析解

## 背景与设置

Anti-de Sitter空间(AdS$_n$)是一个具有常负曲率的时空，是Einstein场方程在负宇宙常数下的最大对称解。Proca场是一种具有质量的矢量场，其拉格朗日量包含质量项和规范不变的场强项。

## AdS$_n$的Global坐标系

首先建立AdS$_n$的global坐标系。AdS$_n$可嵌入到$(n+1)$维伪欧几里得空间，满足约束条件：

$$-X_0^2 - X_{n}^2 + \sum_{i=1}^{n-1} X_i^2 = -L^2$$

其中$L$是AdS半径。Global坐标参数化为：

$$X_0 = L\sec\rho \cos\tau$$
$$X_n = L\sec\rho \sin\tau$$
$$X_i = L\tan\rho \Omega_i, \quad i=1,2,...,n-1$$

其中$\Omega_i$是单位球面$S^{n-2}$上的坐标，满足$\sum_{i=1}^{n-1} \Omega_i^2 = 1$，$\tau \in [0,2\pi)$，$\rho \in [0,\pi/2)$。

对应的度规为：

$$ds^2 = L^2\sec^2\rho(-d\tau^2 + d\rho^2 + \sin^2\rho d\Omega_{n-2}^2)$$

## Proca场的作用量与运动方程

Proca场的作用量为：

$$S = -\int d^nx \sqrt{-g} \left(\frac{1}{4}F_{\mu\nu}F^{\mu\nu} + \frac{1}{2}m^2 A_\mu A^\mu\right)$$

其中$F_{\mu\nu} = \partial_\mu A_\nu - \partial_\nu A_\mu$。变分后得到运动方程：

$$\nabla_\mu F^{\mu\nu} - m^2 A^\nu = 0$$

此外，对运动方程取散度可得到附加约束：

$$\nabla_\mu A^\mu = 0 \quad \text{(当$m^2 \neq 0$)}$$

## 在AdS$_n$中的明确形式

在AdS$_n$的global坐标下，引入记号$g_{\mu\nu} = L^2\sec^2\rho \tilde{g}_{\mu\nu}$，其中$\tilde{g}_{\mu\nu}$是共形平坦度规。考虑到AdS$_n$的对称性，我们可以将运动方程展开为：

$$\frac{1}{\sqrt{-g}}\partial_\mu(\sqrt{-g}g^{\mu\alpha}g^{\nu\beta}F_{\alpha\beta}) - m^2 g^{\mu\nu}A_\mu = 0$$

代入AdS$_n$度规并展开，得到具有显式坐标依赖的偏微分方程组。

## 解的方法与矢量球谐函数

利用AdS$_n$的球对称性，可以使用分离变量法求解。我们令：

$$A_\mu(x) = e^{-i\omega \tau}R_\mu(\rho)Y_{\mu}(\Omega)$$

其中$Y_{\mu}(\Omega)$是$(n-2)$维球面上的矢量球谐函数。

对于$(n-2)$维球面，矢量球谐函数可分为三类：
1. 纵向(Longitudinal)分量：$Y^L_{lm} = \nabla_{\Omega}Y_{lm}$
2. 横向(Transverse)分量：满足$\nabla_{\Omega} \cdot Y^T_{lm} = 0$
3. 径向(Radial)分量：指向球心方向

## 径向方程与解析解

分离变量后，径向函数满足：

$$\rho^{2-n}\partial_\rho(\rho^{n-2}\partial_\rho R_l(\rho)) + \left[\omega^2 - \frac{l(l+n-3)}{\rho^2} - m^2L^2\right]R_l(\rho) = 0$$

引入变量变换$z = \omega\rho$并令$R_l(\rho) = z^{-(n-3)/2}f_l(z)$，方程转化为贝塞尔方程：

$$z^2\frac{d^2f_l}{dz^2} + z\frac{df_l}{dz} + \left[z^2 - \nu^2\right]f_l = 0$$

其中$\nu^2 = (l+\frac{n-3}{2})^2 + m^2L^2$。

因此，通解为贝塞尔函数的线性组合：

$$R_l(\rho) = \rho^{-(n-3)/2}[c_1 J_{\nu}(\omega\rho) + c_2 Y_{\nu}(\omega\rho)]$$

在AdS空间中，为保证解在$\rho=0$处正则，通常取$c_2=0$。

## 完整解

结合时间、径向和角部分，Proca场的完整解为：

$$A_\mu(\tau,\rho,\Omega) = \sum_{l,m} e^{-i\omega \tau}\rho^{-(n-3)/2}J_{\nu}(\omega\rho)Y^{(\alpha)}_{lm,\mu}(\Omega)$$

其中$Y^{(\alpha)}_{lm,\mu}$代表不同类型($\alpha$)的矢量球谐函数分量，$\nu = \sqrt{(l+\frac{n-3}{2})^2 + m^2L^2}$。

要得到物理上可接受的解，还需施加边界条件：
1. 在$\rho=0$处正则
2. 在AdS边界($\rho=\pi/2$)上适当衰减

特别地，对于量子场论应用，频率$\omega$会被量子化，导致离散能谱。

[[AdS/CFT对应]]中，这些解对应于边界CFT中的矢量算符，具有明确的共形维度。

# AdS_n空间中Proca场的运动方程与解析解

## 1. AdS_n的全局坐标系

在n维反德西特空间(AdS_n)的全局坐标系下，度规可以表示为：

$$ds^2 = L^2(-\cosh^2\rho\,dt^2 + d\rho^2 + \sinh^2\rho\,d\Omega_{n-2}^2)$$

其中：
- $L$ 是AdS空间的曲率半径
- $t \in (-\infty,\infty)$ 是时间坐标
- $\rho \in [0,\infty)$ 是径向坐标
- $d\Omega_{n-2}^2$ 是$(n-2)$维单位球面的度量元

该度规的行列式为：
$$\sqrt{-g} = L^n \cosh\rho \sinh^{n-2}\rho \sqrt{\gamma}$$
其中$\gamma$是球面度规的行列式。

## 2. Proca场的作用量

Proca场是具有质量的矢量场，其作用量为：

$$S = -\int d^nx \sqrt{-g} \left(\frac{1}{4}F_{\mu\nu}F^{\mu\nu} + \frac{1}{2}m^2 A_\mu A^\mu\right)$$

其中：
- $A_\mu$ 是矢量场
- $F_{\mu\nu} = \partial_\mu A_\nu - \partial_\nu A_\mu$ 是场强张量
- $m$ 是矢量场的质量

## 3. 运动方程的推导

通过变分原理，对作用量进行变分可得：

$$\delta S = -\int d^nx \sqrt{-g} \left(\delta A_\nu (\nabla_\mu F^{\mu\nu} - m^2 A^\nu) + \partial_\mu (\sqrt{-g}F^{\mu\nu}\delta A_\nu)\right)$$

应用边界条件消除边界项，并根据变分原理要求$\delta S = 0$，我们得到Proca场的运动方程：

$$\nabla_\mu F^{\mu\nu} - m^2 A^\nu = 0$$

同时，我们可以从场强张量的定义得到恒等式：
$$\nabla_\mu F_{\nu\sigma} + \nabla_\nu F_{\sigma\mu} + \nabla_\sigma F_{\mu\nu} = 0$$

## 4. AdS_n中的Proca方程

在AdS_n空间中，上述方程可以展开为：

$$\frac{1}{\sqrt{-g}}\partial_\mu(\sqrt{-g}g^{\mu\alpha}g^{\nu\beta}F_{\alpha\beta}) - m^2 g^{\nu\sigma}A_\sigma = 0$$

对于质量项，我们有附加条件：
$$\nabla_\mu A^\mu = 0$$

这与标量场的Klein-Gordon方程类似，但对于矢量场，我们需要考虑额外的张量结构。

## 5. 分离变量求解

为求解Proca方程，我们采用分离变量方法。考虑以下形式的解：

$$A_\mu(t,\rho,\Omega) = e^{-i\omega t} \sum_{l,\vec{m}} A_{\mu,l\vec{m}}(\rho) Y_{l\vec{m}}(\Omega)$$

其中$Y_{l\vec{m}}(\Omega)$是$(n-2)$维球面上的球谐函数。

在此坐标系下，可以进一步将矢量场分解为三个分量：
- 时间分量：$A_t$
- 径向分量：$A_\rho$
- 角向分量：$A_i$（与球面坐标相关）

## 6. 径向方程的求解

将分离变量的形式代入运动方程，我们得到一组关于径向函数$A_{\mu,l\vec{m}}(\rho)$的常微分方程。特别地，时间分量满足：

$$\frac{1}{\sinh^{n-2}\rho}\partial_\rho\left(\sinh^{n-2}\rho\partial_\rho A_t\right) - \left[\frac{l(l+n-3)}{\sinh^2\rho} + \frac{\omega^2}{\cosh^2\rho} - m^2L^2\right]A_t = 0$$

这是一个典型的Sturm-Liouville型方程。引入变换$z = \tanh^2\rho$，方程转化为超几何方程形式：

$$z(1-z)\frac{d^2A_t}{dz^2} + \left[c - (a+b+1)z\right]\frac{dA_t}{dz} - abA_t = 0$$

其中参数$a$、$b$和$c$与$\omega$、$m$和$l$相关。

## 7. 通解的表达

最终，Proca场各分量的通解可以表示为超几何函数的线性组合：

$$A_t(\rho) = C_1 (\sinh\rho)^l (\cosh\rho)^{-\Delta_+} {}_2F_1\left(a,b;c;\tanh^2\rho\right) + C_2 (\sinh\rho)^l (\cosh\rho)^{-\Delta_-} {}_2F_1\left(a',b';c';\tanh^2\rho\right)$$

其中：
- ${}_2F_1(a,b;c;z)$是高斯超几何函数
- $\Delta_\pm = \frac{n-1}{2} \pm \sqrt{\frac{(n-1)^2}{4} + m^2L^2}$是场的共形维度
- $C_1$和$C_2$是积分常数

类似地，可以得到$A_\rho$和$A_i$的解析表达式。

## 8. 物理解释与边界条件

要得到物理上可接受的解，需要施加适当的边界条件：

1. 在$\rho = 0$（AdS空间的中心），场应当是正则的，这要求$C_2 = 0$
2. 在边界$\rho \to \infty$处，场的渐近行为应当满足：
   $$A_\mu \sim e^{-\Delta_+ \rho}$$

这对应于AdS/CFT对应中的正则化解，与边界上的算符维度$\Delta_+$相关联。

## 9. 特殊情况：无质量极限

当$m \to 0$时，Proca场退化为规范场，其解具有更高的对称性，可以通过规范变换$A_\mu \to A_\mu + \partial_\mu \Lambda$简化。

[[AdS/CFT对应]]中，这些解对应于边界CFT中的守恒流。

---

以上推导展示了AdS_n空间中Proca场运动方程的完整分析和解析结构，这在研究[[全息对应]]和[[AdS/CFT]]中的矢量算符有重要应用。

# Proca场在AdS_n空间中的运动方程与解析

## AdS_n空间的Global Coordinates

反德西特空间AdS_n在global coordinates下的度规可以表示为：

$$ds^2 = L^2(-\cosh^2\rho\, dt^2 + d\rho^2 + \sinh^2\rho\, d\Omega_{n-2}^2)$$

其中：
- $L$ 是AdS空间的曲率半径
- $t \in (-\infty, \infty)$ 是时间坐标
- $\rho \in [0, \infty)$ 是径向坐标
- $d\Omega_{n-2}^2$ 表示 $(n-2)$ 维单位球面的度规

## Proca场作用量与变分原理

Proca场（有质量的矢量场）在弯曲时空中的作用量为：

$$S[A] = \int d^nx \sqrt{-g} \left(-\frac{1}{4}F_{\mu\nu}F^{\mu\nu} - \frac{1}{2}m^2 A_\mu A^\mu\right)$$

其中 $F_{\mu\nu} = \nabla_\mu A_\nu - \nabla_\nu A_\mu = \partial_\mu A_\nu - \partial_\nu A_\mu$ 是场强张量，$m$ 是Proca场的质量。

## 运动方程推导

对作用量进行变分，得到Proca场的运动方程：

$$\nabla_\nu F^{\mu\nu} + m^2 A^\mu = 0$$

在协变形式下，这个方程等价于：

$$\frac{1}{\sqrt{-g}}\partial_\nu(\sqrt{-g}F^{\mu\nu}) + m^2 A^\mu = 0$$

同时，Proca场满足附加条件：

$$\nabla_\mu A^\mu = 0$$

这不是一个规范条件，而是从运动方程自然导出的结果（对原方程取散度可证明）。

## 在AdS_n中的方程分解

在AdS_n的global coordinates下，我们可以利用球对称性将方程分解。首先将矢量场分为三个分量：

$$A_\mu = (A_t, A_\rho, A_i)$$

其中$A_i$表示角向分量。

### 分离变量

采用分离变量法，假设：

$$A_\mu(t,\rho,\Omega) = e^{-i\omega t} \tilde{A}_\mu(\rho,\Omega)$$

并进一步分解角向部分：

$$\tilde{A}_t(\rho,\Omega) = \phi_t(\rho)Y(\Omega)$$
$$\tilde{A}_\rho(\rho,\Omega) = \phi_\rho(\rho)Y(\Omega)$$
$$\tilde{A}_i(\rho,\Omega) = \phi(\rho)\nabla_i Y(\Omega) + \phi_V(\rho)Y_i(\Omega)$$

其中$Y(\Omega)$是球谐函数，$Y_i(\Omega)$是矢量球谐函数。

## 径向方程的求解

将分离变量的形式代入运动方程，可得到径向函数满足的方程。对于$\phi_t$和$\phi_\rho$分量，可以得到耦合的二阶微分方程组：

$$\frac{d^2\phi_t}{d\rho^2} + (n-1)\coth\rho\frac{d\phi_t}{d\rho} - \left(\frac{l(l+n-3)}{\sinh^2\rho} + m^2L^2\right)\phi_t + \frac{\omega^2}{\cosh^2\rho}\phi_t = 0$$

其中$l$是角动量量子数。

### 渐近行为分析

在$\rho \to \infty$处（AdS边界），解的渐近行为为：

$$\phi_t(\rho) \sim e^{-(n-1-\Delta)\rho} + \mathcal{B}e^{-\Delta\rho}$$

其中$\Delta = \frac{n-1}{2} + \sqrt{\frac{(n-1)^2}{4} + m^2L^2}$是共形维度。

### 通解构造

完整的通解可以用超几何函数表示：

$$\phi_t(\rho) = C_1 (\sinh\rho)^l(\cosh\rho)^{-\omega} {}_2F_1\left(\frac{\Delta+l-\omega}{2}, \frac{\Delta+l+\omega}{2}; l+\frac{n-1}{2}; \tanh^2\rho\right)$$
$$+ C_2 (\sinh\rho)^{2-n-l}(\cosh\rho)^{-\omega} {}_2F_1\left(\frac{2-n-l-\omega+\Delta}{2}, \frac{2-n-l+\omega+\Delta}{2}; 2-l-\frac{n-1}{2}; \tanh^2\rho\right)$$

## 标准化解和边界条件

为获得物理解，需要施加适当的边界条件：

1. 在$\rho = 0$（原点）处解应当正则
2. 在AdS边界$\rho \to \infty$处，解应满足特定的衰减条件

对于$m^2L^2 > 0$的情况，只有第一项是允许的，因此$C_2 = 0$。对于$-\frac{(n-1)^2}{4} < m^2L^2 < 0$的情况，两种模式都可能出现，对应双迹算符。

## 能谱分析

对于正规化解，频率$\omega$必须满足量子化条件：

$$\omega = \Delta + l + 2n, \quad n = 0, 1, 2, ...$$

这给出了AdS空间中Proca场的离散能谱。

## 完整波函数

将径向解与角部分和时间部分结合，得到完整的波函数：

$$A_\mu(t,\rho,\Omega) = e^{-i\omega t}[\phi_t(\rho)Y(\Omega)\delta_\mu^t + \phi_\rho(\rho)Y(\Omega)\delta_\mu^\rho + \phi(\rho)\nabla_i Y(\Omega)\delta_\mu^i + \phi_V(\rho)Y_i(\Omega)\delta_\mu^i]$$

其中径向函数由上述超几何函数给出。

这提供了AdS_n空间中Proca场的完整解析解。

## 物理解释

这些解代表AdS空间中有质量矢量粒子的束缚态。离散能谱反映了AdS空间的"盒子"性质，相比平坦空间中的连续谱有显著不同。在AdS/CFT对应中，这些模式对应边界CFT中的矢量算符。