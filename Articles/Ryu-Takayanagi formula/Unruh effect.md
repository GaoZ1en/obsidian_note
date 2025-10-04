the metric in Rindler coordinates is given by

$$\begin{align}
\mathrm{d}s^{2} & =-a^{2}\xi ^{2}\mathrm{d}\eta ^{2}+\mathrm{d}\xi ^{2}+\mathrm{d}\vec{x}_{\bot}^{2} \\
t & =\xi \sinh(a\eta) \\
x & =\xi \cosh(a\eta)
\end{align}$$

where $\displaystyle{a}$ is a constant, $\displaystyle{\eta}$ is the Rindler time coordinate, and $\displaystyle{\xi}$ is the spatial coordinate. consider a massive scalar field $\displaystyle{\phi}$ in the Rindler wedge

$$\begin{align}
S & =-\frac{1}{2}\int _{M} \mathrm{d}^{d}x\sqrt{ -g }(\nabla _{\mu}\phi \nabla ^{\mu}\phi+m^{2}\phi ^{2})
\end{align}$$

take a variation of the action, gives the eom, the symplectic potential and the symplectic form

$$\begin{align}
\delta S & =\int _{M}\mathrm{d}^{d}x\sqrt{ -g }E\delta \phi+\theta|_{\Sigma _{f}-\Sigma _{i}} \\
E & =\nabla ^{2}\phi-m^{2}\phi \\
\theta & =\int _{\Sigma}\mathrm{d}^{d-1}x\sqrt{ \sigma }\tau ^{\mu}\nabla _{\mu}\phi \delta \phi \\
\omega & =\delta \theta \\
 & =\int _{\Sigma}\mathrm{d}^{d-1}x\sqrt{ \sigma }\tau ^{\mu}\nabla _{\mu}\delta \phi \wedge \delta \phi
\end{align}$$

where $\displaystyle{\Sigma}$ is a Cauchy surface, with $\displaystyle{\eta}$ constant, $\displaystyle{\sqrt{ \sigma }=1}$ is the induced metric on $\displaystyle{\Sigma}$, and $\displaystyle{\tau ^{\mu}=\frac{1}{a\xi}\delta ^{\mu \eta}}$ is the unit normal vector to $\displaystyle{\Sigma}$. the symplectic form becomes

$$\begin{align}
\omega & =\int _{0}^{\infty}\mathrm{d}\xi \mathrm{d}^{d-2}\vec{x}_{\bot} \frac{1}{a\xi}\partial _{\eta}\delta \phi \wedge \delta \phi
\end{align}$$

we will quantize the field in the Rindler wedge using the symplectic form above. the eom is

$$\begin{align}
-\frac{1}{a^{2}\xi ^{2}}\partial _{\eta}^{2}\phi+\partial _{\xi}^{2}\phi+\frac{1}{\xi}\partial _{\xi}\phi+\nabla ^{2}_{\bot}\phi-m^{2}\phi=0
\end{align}$$

take the following ansatz

$$\begin{align}
\phi & =e^{-i\omega t}e^{i\vec{k}_{\bot}\cdot \vec{x}_{\bot}}\tilde{\phi}(\xi)
\end{align}$$

then the eom becomes

$$\begin{align}
\partial _{\xi}^{2}\tilde{\phi}+\frac{1}{\xi}\partial _{\xi}\tilde{\phi}+\left( \frac{\omega ^{2}}{a^{2}\xi ^{2}}-\vec{k}_{\bot}-m^{2} \right)\tilde{\phi} & =0
\end{align}$$

the solution is given by the modified Bessel functions

$$\begin{align}
\tilde{\phi} & =C_{1}I_{i\nu}(\kappa\xi)+C_{2}K_{i\nu}(\kappa\xi)
\end{align}$$

where $\displaystyle{\nu=\frac{\omega}{a},\kappa=\sqrt{ \vec{k}^{2}_{\bot}+m^{2} }}$

we choose $\displaystyle{C_{1}=0}$ to have a well-defined solution at infinity. the normalized solution is


方向平直，可写成平面波：
$$\phi_{\vec{k}_\perp,\omega,\nu}(\eta,\xi,y,z) = e^{-i\omega\eta + i\vec{k}_\perp \cdot \vec{r}_\perp} \psi_\nu(\xi)$$

其中$$\vec{k}_\perp = (k_y, k_z)$$，$$\vec{r}_\perp = (y,z)$$。

### 径向方程
将分离变量代入Klein-Gordon方程，得到$$\psi_\nu(\xi)$$满足的方程：
$$\xi\frac{d}{d\xi}\left(\xi\frac{d\psi_\nu}{d\xi}\right) + \left[\frac{\omega^2}{a^2} - k_\perp^2\xi^2 - m^2\xi^2 - \nu^2\right]\psi_\nu = 0$$

## Bessel函数解

### 标准形式变换
令$$z = \sqrt{k_\perp^2 + m^2}\xi$$，$$\nu^2 = \frac{\omega^2}{a^2}$$，方程化为：
$$z^2\frac{d^2\psi}{dz^2} + z\frac{d\psi}{dz} + (z^2 - \nu^2)\psi = 0$$

这是[[修正Bessel方程]]。

### 通解形式
$$\psi_\nu(z) = c_1 I_\nu(z) + c_2 K_\nu(z)$$

其中$$I_\nu(z)$$和$$K_\nu(z)$$分别是第一类和第二类修正Bessel函数。

### 边界条件选择
- **正频模式**：选择在$$\xi \to 0^+$$处有合适行为的解
- **负频模式**：选择在$$\xi \to \infty$$处衰减的解

## 模式函数的构造

### 正频Rindler模式
$$\boxed{\phi_{\omega,\vec{k}_\perp}^{(+)}(\eta,\xi,y,z) = N_{\omega,\vec{k}_\perp} e^{-i\omega\eta + i\vec{k}_\perp \cdot \vec{r}_\perp} K_{i\omega/a}(\kappa\xi)}$$

其中$$\kappa = \sqrt{k_\perp^2 + m^2}$$。

### 负频Rindler模式
$$\boxed{\phi_{\omega,\vec{k}_\perp}^{(-)}(\eta,\xi,y,z) = N_{\omega,\vec{k}_\perp} e^{+i\omega\eta + i\vec{k}_\perp \cdot \vec{r}_\perp} K_{i\omega/a}(\kappa\xi)}$$

## 归一化条件

### Klein-Gordon内积
在Rindler时空中，Klein-Gordon内积定义为：
$$(\phi_1, \phi_2) = -i\int_{\Sigma} d^3x \sqrt{g^{(3)}} n^\mu (\phi_1^* \overleftrightarrow{\partial_\mu} \phi_2)$$

其中$$\Sigma$$是等$$\eta$$超面，$$n^\mu = (1/(a\xi), 0, 0, 0)$$。

### 归一化计算
对于模式函数，要求：
$$(\phi_{\omega,\vec{k}_\perp}^{(+)}, \phi_{\omega',\vec{k}_\perp'}^{(+)}) = \delta(\omega-\omega')\delta^2(\vec{k}_\perp-\vec{k}_\perp')$$

计算积分：
$$\int_0^\infty d\xi \int d^2r_\perp \frac{|N_{\omega,\vec{k}_\perp}|^2}{a\xi} \cdot 2\omega |K_{i\omega/a}(\kappa\xi)|^2 \delta^2(\vec{k}_\perp-\vec{k}_\perp') = \delta(\omega-\omega')$$

### 归一化因子

利用修正Bessel函数的积分性质：^cite{Gradshteyn2007}
$$\int_0^\infty \frac{dz}{z} |K_{i\nu}(z)|^2 = \frac{\pi^2}{2\sinh(\pi\nu)}$$

得到归一化因子：
$$\boxed{|N_{\omega,\vec{k}_\perp}|^2 = \frac{a\kappa\sinh(\pi\omega/a)}{2\pi^3\omega}}$$

## 完整的标准化模式

### 最终的模式函数
$$\boxed{\phi_{\omega,\vec{k}_\perp}^{(\pm)}(\eta,\xi,y,z) = \sqrt{\frac{a\kappa\sinh(\pi\omega/a)}{2\pi^3\omega}} e^{\pm i\omega\eta + i\vec{k}_\perp \cdot \vec{r}_\perp} K_{i\omega/a}(\kappa\xi)}$$

### 场的展开
$$\phi(\eta,\xi,y,z) = \int_0^\infty d\omega \int d^2k_\perp \left[a_{\omega,\vec{k}_\perp} \phi_{\omega,\vec{k}_\perp}^{(+)} + a_{\omega,\vec{k}_\perp}^\dagger \phi_{\omega,\vec{k}_\perp}^{(-)}\right]$$

## 重要物理性质

### 1. Rindler粒子概念
- 模式函数在Rindler视界处有特殊行为
- 与[[Minkowski真空]]中的[[Unruh粒子]]相关

### 2. 热谱性质
归一化因子中的$$\sinh(\pi\omega/a)$$项体现了Rindler模式的热谱特征，温度为：
$$T_{\text{Unruh}} = \frac{a}{2\pi}$$

### 3. 与Minkowski模式的关系
[[Bogoliubov变换]]将Rindler模式与Minkowski模式联系起来，是理解[[Unruh效应]]的关键。

### 相关开放问题
- [[Rindler-Hawking对应]]中的精确映射关系
- 有相互作用场论中的Rindler量子化
- [[全息Rindler重构]]的完备性

^cite{Birrell1982} ^cite{Crispino2008}