# 问题

Weyl 定律指出，对于一个 d 维紧致流形 Σ，Laplace-Beltrami 算符 Δ 的谱计数函数具有如下渐近行为：

$$
N(\lambda) \sim \frac{\omega_d \,\mathrm{Vol}(\Sigma)}{(2\pi)^d} \lambda^{d/2} + \mathcal{O}\left(\lambda^{(d-1)/2}\right)
$$

其中 $N(\lambda) = \#\{n : \lambda_n \leqslant \lambda\}$ 是特征值计数函数，$\omega_d$ 是 d 维单位球的体积（即单位 d 维球的体积），$\mathrm{Vol}(\Sigma)$ 是流形 Σ 的体积。

现在考虑自由标量场的两个真空态之间的振幅 $\langle 0|0'\rangle$，其中 $\ket{0}$ 和 $\ket{0'}$ 分别是在时空 $M = \mathbb{R} \times \Sigma$（Σ 为 $(d-1)$ 维紧致流形）上，具有不同质量 $m \neq m'$ 的两个自由标量场理论的真空态。两个理论的作用量分别为

$$
\begin{align}
S   &= -\frac{1}{2}\int_M \mathrm{d}^{d+1}x\sqrt{-g}\,(\nabla_\mu\phi\nabla^\mu\phi + m^2\phi^2) \\[4pt]
S'  &= -\frac{1}{2}\int_M \mathrm{d}^{d+1}x\sqrt{-g}\,(\nabla_\mu\phi\nabla^\mu\phi + m'^2\phi^2)
\end{align}
$$

时空度规为静态度规

$$
\mathrm{d}s^2 = -\mathrm{d}t^2 + \sigma_{ab}(x)\mathrm{d}x^a\mathrm{d}x^b
$$

其中 $\sigma_{ab}$ 是 $\displaystyle{\Sigma}$ 上的度规。

**问题：** 在哪些维度 $d$ 下，这个真空-真空振幅严格为零，即 $\langle 0|0'\rangle = 0$？

# 答案

当 $d \geqslant 4$ 时，$\langle 0|0'\rangle = 0$。

# 解答

标量场的运动方程为

$$
\left( -\partial_t^2 + \Delta_\Sigma - m^2 \right)\phi = 0
$$

在紧致流形 $\displaystyle{\Sigma}$ 上，Laplace-Beltrami 算符的特征值方程

$$
\Delta_\Sigma \phi_n = -\lambda_n \phi_n, \qquad \lambda_n \geqslant 0
$$

特征函数 $\{\phi_n\}$ 构成 $L^2(\Sigma)$ 的正交归一基底。将场按特征函数展开

$$
\phi(t,x) = \sum_n a_n(t)\,\phi_n(x)
$$

代入作用量后得到

$$
S = \frac{1}{2}\int \mathrm{d}t \sum_n \bigl(\dot a_n^2 - \omega_n^2 a_n^2\bigr), \qquad \omega_n^2 = \lambda_n + m^2
$$

对应的另一理论（质量为 $m'$）有

$$
S' = \frac{1}{2}\int \mathrm{d}t \sum_n \bigl(\dot a_n^2 - \omega_n'^2 a_n^2\bigr), \qquad {\omega_n'}^2 = \lambda_n + m'^2
$$

两个理论的真空分别是频率为 $\{\omega_n\}$ 和 $\{\omega_n'\}$ 的谐振子乘积真空。两个真空的内积已知为（Bogoliubov 变换结果）

$$
\langle 0|0'\rangle 
= \prod_n \frac{1}{\sqrt{\cosh\theta_n}}
= \exp\left( -\frac{1}{2}\sum_n \ln\cosh\theta_n \right)
$$

其中 $\tanh\theta_n = \sqrt{\frac{\omega_n'}{\omega_n}}$（或其倒数，取较小者），更方便的表达式是

$$
\langle 0|0'\rangle 
= \exp\left( -\frac{1}{2}\sum_n \ln\left[ \frac{1}{2}\left( \sqrt{\frac{\omega_n}{\omega_n'}} + \sqrt{\frac{\omega_n'}{\omega_n}} \right) \right] \right)
$$

当$\displaystyle{\lambda\gg|m^{2}-m'^{2}|}$时，可将对数展开到领头项，得到

$$
\langle 0|0'\rangle 
\sim C \exp\left( -\frac{(m^2-m'^2)^2}{16} \sum_n \frac{1}{\lambda_n^2} \right)
$$

将求和转为对特征值密度的积分，利用 Weyl 定律的渐近形式

$$
\sum_n f(\lambda_n) \approx \int_0^\infty f(\lambda)\, \mathrm{d}N(\lambda), \qquad 
\mathrm{d}N(\lambda) \sim \frac{\omega_d \,\mathrm{Vol}(\Sigma)}{(2\pi)^d} \cdot \frac{d}{2} \lambda^{d/2-1} \mathrm{d}\lambda
$$

因此指数部分的行为由以下积分主导（紫外截断 $\Lambda$ 后取 $\Lambda\to\infty$）

$$
\int_\Lambda^\infty \frac{\mathrm{d}N(\lambda)}{\lambda^2}
\sim \frac{d\,\omega_d \,\mathrm{Vol}(\Sigma)}{(2\pi)^d} \int_\Lambda^\infty \lambda^{d/2 - 3} \mathrm{d}\lambda
$$

积分的收敛性完全取决于指数 $d/2 - 3$：

- 当 $d/2 - 3 < -1$，即 $d < 4$ 时，积分在 $\lambda\to\infty$ 收敛 → 指数有限 → $\langle 0|0'\rangle$ 为有限非零值；
- 当 $d/2 - 3 = -1$，即 $d = 4$ 时，出现对数发散 $\sim \ln\Lambda$ → 指数 $\sim \Lambda^{-\text{const}}$ → 振幅严格为 0；
- 当 $d/2 - 3 > -1$，即 $d > 4$ 时，积分正幂发散 → 指数超指数衰减 → 振幅更严格为 0。

因此综合得

$$
\langle 0|0'\rangle 
\begin{cases}
= 0     & \text{当 } d \geqslant 4 \\[4pt]
\neq 0 \text{（有限）} & \text{当 } d \leqslant 3
\end{cases}
$$
