# 问题

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

此Noether荷与Cauchy面的选取无关。通过计算可得两个Noether荷的泊松括号为

$$
\{H_\lambda, H_\mu\} = X_\lambda \cdot X_\mu \cdot \omega = - X_\lambda \cdot \delta H_\mu
$$

现考虑如下共形耦合的实标量场理论：

$$\begin{align}
S & =\int _{M} \mathrm{d}^{d}x\sqrt{ -g }\left(-\frac{1}{2}\nabla _{\mu}\phi \nabla ^{\mu}\phi+\frac{d-2}{4(d-1)}R\phi ^{2}\right)
\end{align}$$

其中 $\phi$ 为实标量场，是唯一的动力学自由度，$R$ 为Ricci标量。该理论具有如下共形变换

$$\begin{align}
X_{\xi} & =\int _{M} \mathrm{d}^{d}x\left(\xi ^{\mu}\nabla _{\mu}\phi+\frac{d-2}{2d}\nabla _{\mu}\xi ^{\mu}\phi\right) \frac{\delta}{\delta \phi} \\
0 & =\nabla _{\mu}\xi _{\nu}+\nabla _{\nu}\xi _{\mu}-\frac{2}{d}g_{\mu \nu}\nabla _{\rho}\xi ^{\rho}
\end{align}$$

其中 $\xi^\mu$ 为共形Killing向量。经过代数计算，可得对应的Noether荷为

$$\begin{align}
H_{\xi} & =\int _{\Sigma}\mathrm{d}^{d-1}x\sqrt{ \sigma }\tau ^{\mu}\xi ^{\nu}T_{\mu \nu} \\
T_{\mu \nu} & =\nabla _{\mu}\phi \nabla _{\nu}\phi-\frac{1}{2}g_{\mu \nu}\nabla _{\rho}\phi \nabla ^{\rho}\phi \\
 & +\frac{d-2}{4(d-1)}\left( R_{\mu \nu}-\frac{1}{2}g_{\mu \nu}R \right)\phi ^{2} \\
 & -\frac{d-2}{4d}\nabla _{\mu}\nabla _{\nu}\phi ^{2}+\frac{d-2}{4d}g_{\mu \nu}\nabla ^{2}\phi ^{2}
\end{align}$$

问题如下：

计算泊松括号 $\{H_\xi, H_\zeta\}$，其中 $\xi,\zeta$ 为两个共形Killing向量。推导中可使用以下共形Killing向量的性质：

$$
\begin{align}
\nabla_\mu \xi_\nu + \nabla_\nu \xi_\mu - g_{\mu\nu} \nabla_\rho \xi^\rho &= 0 \\
\nabla^2 \xi_\mu + \frac{1}{2} R \xi_\mu &= 0 \\
\nabla^2 (\nabla_\mu \xi^\mu) + \xi^\mu \nabla_\mu R + R \nabla_\mu \xi^\mu &= 0
\end{align}
$$
以及能量-动量张量的性质：

$$
\nabla^\mu T_{\mu\nu} = 0, \quad T_{\mu\nu}=T_{\nu\mu}, \quad g^{\mu\nu} T_{\mu\nu} = 0
$$w

# 答案

我们有

$$\begin{align}
\left\{H_{\xi},H_{\zeta}\right\} & =H_{[\xi,\zeta]} \\
 & =\int _{\Sigma}\mathrm{d}^{d-1}x\sqrt{ \sigma }\tau ^{\mu}[\xi ,\zeta ]^{\nu}T_{\mu \nu}
\end{align}$$

其中 $[\xi ,\zeta ]^{\nu}=\xi ^{\mu}\nabla _{\mu}\zeta ^{\nu}-\zeta ^{\mu}\nabla _{\mu}\xi ^{\nu}$ 为向量场的Lie括号。

# 解答

根据泊松括号定义：

$$\begin{align}
\left\{H_{\xi},H_{\zeta}\right\} & =-X_{\xi}\cdot \delta H_{\zeta} \\
 & =-\int _{\Sigma}\mathrm{d}^{d-1}x\sqrt{ \sigma }\tau ^{\mu}\zeta ^{\nu}(X_{\xi}\cdot \delta T_{\mu \nu})
\end{align}$$

其中

$$\begin{align}
X_{\xi}\cdot \delta T_{\mu \nu} & =\nabla _{\mu}\xi ^{\rho}T_{\rho \nu}+\nabla _{\nu}\xi ^{\rho}T_{\mu \rho}+\xi ^{\rho}\nabla _{\rho}T_{\mu \nu}+\frac{d-2}{2}T_{\mu \nu}\nabla _{\rho}\xi ^{\rho}
\end{align}$$

将其代入泊松括号表达式中

$$\begin{align}
\left\{H_{\xi},H_{\zeta}\right\} & =-\int _{\Sigma}\mathrm{d}^{d-1}x\sqrt{ \sigma }\tau ^{\mu}\zeta ^{\nu}\left(\nabla _{\mu}\xi ^{\rho}T_{\rho \nu}+\nabla _{\nu}\xi ^{\rho}T_{\mu \rho}+\xi ^{\rho}\nabla _{\rho}T_{\mu \nu}+\frac{d-2}{2}T_{\mu \nu}\nabla _{\rho}\xi ^{\rho}\right) \\
 & =\int _{\Sigma}\mathrm{d}^{d-1}x\sqrt{ \sigma }\tau ^{\mu}[\xi ,\zeta ]^{\nu}T_{\mu \nu}+\frac{2-d}{d}\int _{\Sigma}\tau ^{\mu}\xi ^{\nu}\nabla _{\rho}\zeta ^{\rho}T_{\mu \nu} \\
 & =\int _{\Sigma}\mathrm{d}^{d-1}x\sqrt{ \sigma }\tau ^{\mu}[\xi ,\zeta ]^{\nu}T_{\mu \nu} \\
 & =H_{[\xi,\zeta]}
\end{align}$$

即得所需结果。