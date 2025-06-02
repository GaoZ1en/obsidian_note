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