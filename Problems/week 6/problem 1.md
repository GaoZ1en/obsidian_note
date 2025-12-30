# 题目

对于定义在时空区域 $M$ 中的场论，其作用量为 $S[\phi]$，该区域被两个Cauchy面 $\Sigma_f$ 和 $\Sigma_i$ 所夹住。协变相空间定义为满足运动方程的所有解构成的空间 $\mathcal{\tilde{P}}$，其中动力学场 $\phi$ 在空间边界 $\Gamma$ 上满足特定的边界条件。相空间上的预辛形式 $\omega$ 依赖于边界项 $\theta$（称为预辛势），其定义如下：

$$
\begin{align}
\delta S &= \int_M \mathrm{d}^d x \sqrt{-g}\, E_\phi[\phi]\delta\phi 
+ \int_{\Sigma_f} \mathrm{d}^{d-1}x \sqrt{\sigma}\, \tau_\mu \theta^\mu[\phi,\delta\phi] 
- \int_{\Sigma_i} \mathrm{d}^{d-1}x \sqrt{\sigma}\, \tau_\mu \theta^\mu[\phi,\delta\phi] \\[6pt]
\omega &= \int_\Sigma \mathrm{d}^{d-1}x \sqrt{\sigma}\, \tau_\mu \delta\theta^\mu
\end{align}
$$

其中 $g_{\mu\nu}$ 是 $d$ 维流形 $M$ 的度规，$\sqrt{-g}$ 为体元；$\sqrt{\sigma}$ 为Cauchy面 $\Sigma$ 上的诱导体元；$\tau^\mu$ 为指向未来的单位法向量；$E_\phi[\phi]=0$ 是 $\phi$ 的运动方程；$\theta^\mu[\phi,\delta\phi]$ 称为预辛势。

对于无穷小变换 $\phi \to \phi + \delta_\lambda \phi$，我们在相空间上定义相应的向量场

$$
X_\lambda = \int \mathrm{d}^d x\; \delta_\lambda \phi(x) \frac{\delta}{\delta \phi(x)}
$$

如果满足

$$
X_\lambda \cdot \delta S = \alpha_\lambda[\phi]\big|_{\Sigma_f} - \alpha_\lambda[\phi]\big|_{\Sigma_i} + \beta_\lambda\big|_M
$$

其中 $\beta_\lambda$ 与场 $\phi$ 无关，则称该变换为对称性。其对应的Noether荷为

$$
H_\lambda = X_\lambda \cdot \int_\Sigma \mathrm{d}^{d-1}x \sqrt{\sigma}\, \tau_\mu \theta^\mu - \alpha_\lambda[\phi]\big|_\Sigma
$$

此Noether荷与Cauchy面的选取无关。现考虑如下共形耦合的实标量场

$$\begin{align}
S & =\int _{M} \mathrm{d}^{d}x\sqrt{ -g }\left(-\frac{1}{2}\nabla _{\mu}\phi \nabla ^{\mu}\phi+\frac{d-2}{4(d-1)}R\phi ^{2}\right)
\end{align}$$

其中 $R$ 为Ricci标量。该理论具有如下共形变换

$$\begin{align}
X_{\xi} & =\int _{M} \mathrm{d}^{d}x\left(\xi ^{\mu}\nabla _{\mu}\phi+\frac{d-2}{2d}\nabla _{\mu}\xi ^{\mu}\phi\right) \frac{\delta}{\delta \phi}
\end{align}$$

其中$\displaystyle{\xi ^{\mu}}$为共形Killing向量，满足

$$\begin{align}
\nabla _{\mu}\xi _{\nu}+\nabla _{\nu}\xi _{\mu}-\frac{2}{d}g_{\mu \nu}\nabla _{\rho}\xi ^{\rho} & =0
\end{align}$$

问题如下：

1. 计算对称性$\displaystyle{X_{\xi}}$对应的$\displaystyle{\alpha _{\xi}}$和$\displaystyle{\beta _{\xi}}$；
2. 计算对应的Noether荷$\displaystyle{H_{\xi}}$，将答案整理为$\displaystyle{H_{\xi}=\int _{\Sigma}\mathrm{d}^{d-1}x\sqrt{ \sigma }\tau ^{\mu}\xi ^{\nu}T_{\mu \nu}}$的形式，其中$\displaystyle{T_{\mu \nu}}$为一个对称张量。

# 答案

1. 我们得到

$$\begin{align}
X_{\xi}\cdot \delta S & =\alpha _{\xi}|_{\Sigma _{f}}-\alpha _{\xi}|_{\Sigma _{i}}+\beta _{\xi}|_{M} \\
\alpha _{\xi} & =\int _{\Sigma}\mathrm{d}^{d-1}x\sqrt{ \sigma }\tau ^{\mu}\left(\frac{1}{2}\xi _{\mu}\nabla _{\nu}\phi \nabla ^{\nu}\phi+\frac{d-2}{8(d-1)}R\xi ^{\mu}\phi ^{2}+\frac{d-2}{4d}\nabla ^{\mu}\nabla _{\nu}\xi ^{\nu}\phi ^{2}\right) \\
\beta _{\xi} & =0
\end{align}$$

2. 相应的Noether荷为

$$\begin{align}
H_{\xi} & =\int _{\Sigma}\mathrm{d}^{d-1}x\sqrt{ \sigma }\tau ^{\mu}\xi ^{\nu}T_{\mu \nu} \\
T_{\mu \nu} & =\nabla _{\mu}\phi \nabla _{\nu}\phi-\frac{1}{2}g_{\mu \nu}\nabla _{\rho}\phi \nabla ^{\rho}\phi \\
 & +\frac{d-2}{4(d-1)}\left( R_{\mu \nu}-\frac{1}{2}g_{\mu \nu}R \right)\phi ^{2} \\
 & -\frac{d-2}{4d}\nabla _{\mu}\nabla _{\nu}\phi ^{2}+\frac{d-2}{4d}g_{\mu \nu}\nabla ^{2}\phi ^{2}
\end{align}$$

# 解答

我们遵循协变相空间形式的标准步骤。对作用量进行变分，得到

$$\begin{align}
\delta S & =\int _{M}\mathrm{d}^{d}x\sqrt{ -g }E_{\phi}\delta \phi+\int _{\Sigma _{f}-\Sigma _{i}}\mathrm{d}^{d-1}x\sqrt{ \sigma }\tau ^{\mu}\theta _{\mu} \\
E & =\nabla ^{2}\phi-\frac{d-2}{4(d-1)}R\phi \\
\theta _{\mu} & =\nabla _{\mu}\phi \delta \phi
\end{align}$$

将对称性矢量

$$\begin{align}
X_{\xi} & =\int _{M} \mathrm{d}^{d}x\left(\xi ^{\mu}\nabla _{\mu}\phi+\frac{d-2}{2d}\nabla _{\mu}\xi ^{\mu}\phi\right) \frac{\delta}{\delta \phi}
\end{align}$$

作用到$\displaystyle{\delta S}$上，得到

$$\begin{align}
X_{\xi}\cdot \delta S & =\alpha _{\xi}|_{\Sigma _{f}}-\alpha _{\xi}|_{\Sigma _{i}}+\beta _{\xi}|_{M} \\
\alpha _{\xi} & =\int _{\Sigma}\mathrm{d}^{d-1}x\sqrt{ \sigma }\tau ^{\mu}\left(\frac{1}{2}\xi _{\mu}\nabla _{\nu}\phi \nabla ^{\nu}\phi+\frac{d-2}{8(d-1)}R\xi ^{\mu}\phi ^{2}+\frac{d-2}{4d}\nabla ^{\mu}\nabla _{\nu}\xi ^{\nu}\phi ^{2}\right) \\
\beta _{\xi} & =0
\end{align}$$

因此，该理论的共形对称性没有经典反常。从而，对应的Noether荷为

$$\begin{align}
H_{\xi} & =\int _{\Sigma}\mathrm{d}^{d-1}x\sqrt{ \sigma }\tau ^{\mu}(X_{\xi}\cdot \theta _{\mu})-\alpha _{\xi} \\
 & =\int _{M}\mathrm{d}^{d-1}x\sqrt{ \sigma }\tau ^{\mu}\xi ^{\nu}T_{\mu \nu} \\
T_{\mu \nu} & =\nabla _{\mu}\phi \nabla _{\nu}\phi-\frac{1}{2}g_{\mu \nu}\nabla _{\rho}\phi \nabla ^{\rho}\phi \\
 & +\frac{d-2}{4(d-1)}\left( R_{\mu \nu}-\frac{1}{2}g_{\mu \nu}R \right)\phi ^{2} \\
 & -\frac{d-2}{4d}\nabla _{\mu}\nabla _{\nu}\phi ^{2}+\frac{d-2}{4d}g_{\mu \nu}\nabla ^{2}\phi ^{2}
\end{align}$$

此处代数计算较为直接。